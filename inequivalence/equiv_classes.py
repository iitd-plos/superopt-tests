from io import TextIOWrapper
import itertools
from enum import Enum
from typing import *

def set_to_string(s: set):
    if len(s) == 0:
        return '{}'
    return ', '.join(s)

class ToolResult(Enum):
    EQUIV = 0
    FAIL = 1
    INEQ = 2
    ERROR = 3
    TIMEOUT = 4

class run_info:
    def __init__(self, fname: str, src_lib: str, dst_lib: str, unroll: int, result: ToolResult, retcode: int, time_taken) -> None:
        self.fname = fname
        self.src_lib = src_lib
        self.dst_lib = dst_lib
        self.unroll = unroll
        self.result = result
        self.retcode = retcode
        self.time_taken = time_taken
    
    def to_string(self):
        s = f'{self.fname},{self.src_lib},{self.dst_lib},{self.result},{self.unroll}'
        if self.result == ToolResult.INEQ:
            s += f',{self.loop_bound}'
        if self.result != ToolResult.TIMEOUT:
            s += f',{self.time_taken}'
        return s

    def is_ineq(self):
        return self.result == ToolResult.INEQ
    
    def is_eq(self):
        return self.result == ToolResult.EQUIV

    def add_loop_bound(self, loop_bound: int):
        self.loop_bound = loop_bound

    def type(self):
        return self.result

# Maintains equivalence classes for a benchmark
# Also maintains Inequivalence classes -- helps in pruning the benchmarking space
class equivalence_classes:
    def __init__(self, fname: str, libraries: List[str]) -> None:
        self.fname: str = fname
         # set of libraries to be considered for this benchmark
        self.libraries: Set[str] = set(libraries)
        self.parent: Dict[str, str] = {lib: lib for lib in libraries}
        # dictionary from string to a set of leaders, denoting the classes which are inequivalent
        self.inequivalent_sets: Dict[str, Set[str]] = {lib: set() for lib in libraries}
        # set of (src, dst) pairs that have already been run
        self.cache: Set[Tuple[str, str]] = set()
        # List of all run_infos
        self.runs: List[run_info] = []

    def add_new_libraries(self, updated_libs: List[str]) -> None:
        libs = set(updated_libs)
        added_libs = libs.difference(self.libraries)
        print(f'Libraries added = {set_to_string(added_libs)}')
        removed_libs = self.libraries.difference(libs)
        assert len(removed_libs) == 0, f'Removing libraries not supported. Removed libraries = {set_to_string(removed_libs)}'
        
        self.libraries = self.libraries.union(added_libs)
        
        for lib in added_libs:
            self.parent[lib] = lib
            self.inequivalent_sets[lib] = set()
    
    def update_libraries(self, transform: Callable[[str], str]) -> None:
        self.libraries = set(map(transform, self.libraries))
        self.parent = {transform(lib): transform(self.parent[lib]) for lib in self.parent}
        self.inequivalent_sets = {transform(lib): set(map(transform, self.inequivalent_sets[lib])) for lib in self.inequivalent_sets}
        self.cache = {(transform(l1), transform(l2)) for (l1, l2) in self.cache}
        for i, run in enumerate(self.runs):
            run.src_lib = transform(run.src_lib)
            run.dst_lib = transform(run.dst_lib)
            self.runs[i] = run
    
    def get_runs(self) -> List[run_info]:
        return self.runs

    def add_cache(self, src: str, dst: str):
        self.cache.add((src, dst))
    
    def get_leader(self, lib: str) -> str:
        parent = lib
        while parent != self.parent[parent]:
            parent = self.parent[parent]
        return parent

    def merge(self, lib_1, lib_2):
        u = self.get_leader(lib_1)
        v = self.get_leader(lib_2)
        if u != v:
            self.parent[v] = u
        self.inequivalent_sets[u] = self.inequivalent_sets[u].union(self.inequivalent_sets[v])
        
        # update the leaders in the inequivalent sets
        for lib in self.inequivalent_sets:
            if v in self.inequivalent_sets[lib]:
                self.inequivalent_sets[lib].discard(v)
                self.inequivalent_sets[lib].add(u)
        
        self.sync_inequivalent_sets()
    
    def get_classes(self):
        ret = dict()
        for lib in self.parent:
            leader = self.get_leader(lib)
            if leader not in ret:
                ret[leader] = set()
            ret[leader].add(lib)
        return ret
    
    def sync_inequivalent_sets(self):
        ret = self.get_classes()
        for leader in ret:
            for lib in ret[leader]:
                self.inequivalent_sets[lib] = self.inequivalent_sets[lib].union(self.inequivalent_sets[leader])
    
    def add_inequivalent(self, lib_1, lib_2):
        u = self.get_leader(lib_1)
        v = self.get_leader(lib_2)
        assert u != v
        self.inequivalent_sets[lib_1].add(v)
        self.inequivalent_sets[lib_2].add(u)
        self.sync_inequivalent_sets()
    
    def print(self, log_file: TextIOWrapper):
        classes = self.get_classes()
        log_file.write(f'Benchmark = {self.fname}\n')
        log_file.write(f'Eq Classes:\n')
        for leader in classes:
            log_file.write(f'\t{classes[leader]}\n')
        log_file.write(f'Inequivalence Classes:\n')
        for lib in self.inequivalent_sets:
            log_file.write(f'\t{lib} inequivalent with the classes {self.inequivalent_sets[lib]}\n')
    
    def dot_dump(self, name):
        # node_string = f'\tnodesep=0.5;\n\tranksep=0.35;\n\tlabelloc="t"\n\tlabel="{name}"\n'
        node_string = ''
        classes = self.get_classes()
        for leader in classes:
            elems = classes[leader]
            node_string = node_string + '\t"' + set_to_string(elems) + '";\n'
        leaders = list(classes.keys())
        all_edges = list(itertools.combinations(leaders, 2))
        inequivalent_edges = []

        for lib in self.inequivalent_sets:
            lib_leader = self.get_leader(lib)
            for ineq_libs in self.inequivalent_sets[lib]:
                if (lib_leader, ineq_libs) in all_edges:
                    if (lib_leader, ineq_libs) not in inequivalent_edges:
                        inequivalent_edges.append((lib_leader, ineq_libs))
                else:
                    if (ineq_libs, lib_leader) not in inequivalent_edges:
                        inequivalent_edges.append((ineq_libs, lib_leader))

        all_edges = set(all_edges)
        inequivalent_edges = set(inequivalent_edges)
        assert(inequivalent_edges.issubset(all_edges))
        fail_edges = all_edges.difference(inequivalent_edges)
        inequivalent_edges = [f'\t\t"{set_to_string(classes[n1])}" -- "{set_to_string(classes[n2])}"\n' for (n1, n2) in inequivalent_edges]
        fail_edges = [f'\t\t"{set_to_string(classes[n1])}" -- "{set_to_string(classes[n2])}"\n' for (n1, n2) in fail_edges]

        # ineq_string = f'\tsubgraph inequivalence\n\t{{\n\t\tedge [dir=none, color=blue]\n{"".join(inequivalent_edges)}\t}}\n'
        # fail_string = f'\tsubgraph fail\n\t{{\n\t\tedge [dir=none, color=red, style=dashed]\n{"".join(fail_edges)}\t}}\n'

        ineq_string = "".join(inequivalent_edges)
        fail_string = "".join(fail_edges)

        # s = f'graph {{\n{node_string}{ineq_string}{fail_string}}}'
        return node_string, ineq_string, fail_string

    def add_run_info(self, info: run_info):
        self.runs.append(info)

    def __add__(self, other):
        if isinstance(other, self.__class__):
            self.libraries = self.libraries.union(other.libraries)
            self.parent = {**self.parent, **other.parent}
            self.inequivalent_sets = {**self.inequivalent_sets, **other.inequivalent_sets}
            self.cache = self.cache.union(other.cache)
            self.runs = self.runs + other.runs
        return self

def merge_all_classes(class_list: "list[equivalence_classes]") -> equivalence_classes:
    assert len(class_list) > 0
    c = class_list[0]
    for i in range(1, len(class_list)):
        c = c + class_list[i]
    return c