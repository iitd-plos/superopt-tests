#include <cassert>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <numeric>
#include <algorithm>
#include <regex>
#include <string>

using namespace std;
namespace fs = std::filesystem;

unsigned map_total_count(map<unsigned, unsigned> const& obj) {
  unsigned ret = 0;
  for (auto const& [key, val] : obj) {
    ret += val;
  }
  return ret;
}

string map_to_string(map<unsigned, unsigned> const& obj) {
  ostringstream oss;
  oss << "( ";
  for (auto const& [key, val] : obj) {
    oss << key << " -> " << val << "; ";
  }
  oss << " )";
  return oss.str();
}

void map_union(map<unsigned, unsigned> &res, map<unsigned, unsigned> const& m) {
  for (auto const& [key, val] : m) {
    res[key] += val;
  }
}

struct TestCase {
  string m_name;

  bool m_is_succ = false;
  unsigned m_cg_num_nodes = 0;
  unsigned m_cg_num_edges = 0;
  unsigned m_paths_considered = 0;
  unsigned m_paths_ce_pruned = 0;
  unsigned m_num_backtrackings = 0;
  unsigned m_total_queries = 0;
  unsigned m_type_i_proven = 0;
  unsigned m_type_i_disproven = 0;
  unsigned m_type_i_timeout = 0;
  map<unsigned, unsigned> m_type_ii_proven;
  map<unsigned, unsigned> m_type_ii_disproven;
  unsigned m_type_ii_timeout = 0;
  map<unsigned, unsigned> m_type_iii_proven;
  unsigned m_type_iii_timeout = 0;

  static TestCase id(string const& name) {
    auto ret = TestCase{ name };
    ret.m_is_succ = true;
    return ret;
  }

  TestCase(string const& name) : m_name(name) {}

  TestCase& union_with(TestCase const& other) {
    this->m_is_succ = this->m_is_succ && other.m_is_succ;
    this->m_cg_num_nodes += other.m_cg_num_nodes;
    this->m_cg_num_edges += other.m_cg_num_edges;
    this->m_paths_considered += other.m_paths_considered;
    this->m_paths_ce_pruned += other.m_paths_ce_pruned;
    this->m_num_backtrackings += other.m_num_backtrackings;
    this->m_total_queries += other.m_total_queries;
    this->m_type_i_proven += other.m_type_i_proven;
    this->m_type_i_disproven += other.m_type_i_disproven;
    this->m_type_i_timeout += other.m_type_i_timeout;
    map_union(this->m_type_ii_proven, other.m_type_ii_proven);
    map_union(this->m_type_ii_disproven, other.m_type_ii_disproven);
    this->m_type_ii_timeout += other.m_type_ii_timeout;
    map_union(this->m_type_iii_proven, other.m_type_iii_proven);
    this->m_type_iii_timeout += other.m_type_iii_timeout;
    return *this;
  }

  static ostream& cols(ostream& os) {
    os << "name, "
       << "is_succ, "
       << "cg_num_nodes, "
       << "cg_num_edges, "
       << "paths_considered, "
       << "paths_ce_pruned, "
       << "num_backtrackings, "
       << "total_queries, "
       << "type_i_proven, "
       << "type_i_disproven, "
       << "type_i_timeout, "
       << "type_ii_proven_total, "
       << "type_ii_proven_dist, "
       << "type_ii_disproven_total, "
       << "type_ii_disproven_dist, "
       << "type_ii_timeout, "
       << "type_iii_proven_total, "
       << "type_iii_proven_dist, "
       << "type_iii_timeout, ";
    return os;
  }

  friend ostream& operator<<(ostream &os, TestCase const& obj) {
    os << obj.m_name << ", "
       << boolalpha << obj.m_is_succ << ", "
       << obj.m_cg_num_nodes << ", "
       << obj.m_cg_num_edges << ", "
       << obj.m_paths_considered << ", "
       << obj.m_paths_ce_pruned << ", "
       << obj.m_num_backtrackings << ", "
       << obj.m_total_queries << ", "
       << obj.m_type_i_proven << ", "
       << obj.m_type_i_disproven << ", "
       << obj.m_type_i_timeout << ", "
       << map_total_count(obj.m_type_ii_proven) << ", "
       << map_to_string(obj.m_type_ii_proven) << ", "
       << map_total_count(obj.m_type_ii_disproven) << ", "
       << map_to_string(obj.m_type_ii_disproven) << ", "
       << obj.m_type_ii_timeout << ", "
       << map_total_count(obj.m_type_iii_proven) << ", "
       << map_to_string(obj.m_type_iii_proven) << ", "
       << obj.m_type_iii_timeout << ", ";
    return os;
  }
};

void populate_testcase_stats(TestCase &testcase, fs::path const &filepath) {
  auto ifs = ifstream{filepath};
  string line;

  auto const is_succ_regex = regex{ R"(Equivalence found.)" };
  auto const cg_num_nodes_regex = regex{ R"(final-CG-nodes\.: ([0-9]*))" };
  auto const cg_num_edges_regex = regex{ R"(final-CG-edges\.: ([0-9]*))" };
  auto const paths_considered_regex = regex{ R"(corr_graph_add_correlation_and_create_new_correl_entry\.: [0-9\.]*s \(num_starts ([0-9]*))" };
  auto const paths_ce_pruned_regex = regex{ R"(# of Paths Prunned through CE propagation\.: ([0-9]*))" };
  auto const num_backtrackings_regex = regex{ R"(num-backtrackings\.: ([0-9]*))" };
  auto const total_queries_regex = regex{ R"(Type I \+ II \+ III Queries #\.: ([0-9]*))" };
  auto const type_i_proven_regex = regex{ R"(Type I Query \[proven\] #\.: ([0-9]*))" };
  auto const type_i_disproven_regex = regex{ R"(Type I Query \[disproven\] #\.: ([0-9]*))" };
  auto const type_i_timeout_regex = regex{ R"(Type I Query \[timeout\] #\.: ([0-9]*))" };
  auto const type_ii_proven_regex = regex{ R"(Type II Query \[proven,([0-9]*)\] #.: ([0-9]*))" };
  auto const type_ii_disproven_regex = regex{ R"(Type II Query \[disproven,([0-9]*)\] #.: ([0-9]*))" };
  auto const type_ii_timeout_regex = regex{ R"(Type II Query \[timeout\] #.: ([0-9]*))" };
  auto const type_iii_proven_regex = regex{ R"(Type III Query \[proven,([0-9]*)\] #.: ([0-9]*))" };
  auto const type_iii_timeout_regex = regex{ R"(Type III Query \[timeout\] #.: ([0-9]*))" };

  auto extract_match = [&](regex const& rgx) -> optional<smatch> {
    auto it = sregex_iterator{ begin(line), end(line), rgx };
    auto it_end = sregex_iterator{ };
    const auto count = distance(it, it_end);
    assert(count == 0 || count == 1);
    if (count == 0) return nullopt;
    else return *it;
  };

  auto unsigned_at = [&](smatch const& match, unsigned i) -> unsigned {
    return stoul(match[i].str());
  };

  while (getline(ifs, line)) {
    testcase.m_is_succ = testcase.m_is_succ || extract_match(is_succ_regex).has_value();

    if (auto const match = extract_match(cg_num_nodes_regex); match.has_value()) {
      testcase.m_cg_num_nodes = unsigned_at(match.value(), 1);
    }

    if (auto const match = extract_match(cg_num_edges_regex); match.has_value()) {
      testcase.m_cg_num_edges = unsigned_at(match.value(), 1);
    }

    if (auto const match = extract_match(paths_considered_regex); match.has_value()) {
      testcase.m_paths_considered = unsigned_at(match.value(), 1);
    }

    if (auto const match = extract_match(paths_ce_pruned_regex); match.has_value()) {
      testcase.m_paths_ce_pruned = unsigned_at(match.value(), 1);
    }

    if (auto const match = extract_match(num_backtrackings_regex); match.has_value()) {
      testcase.m_num_backtrackings = unsigned_at(match.value(), 1);
    }

    if (auto const match = extract_match(total_queries_regex); match.has_value()) {
      testcase.m_total_queries = unsigned_at(match.value(), 1);
    }

    if (auto const match = extract_match(type_i_proven_regex); match.has_value()) {
      testcase.m_type_i_proven = unsigned_at(match.value(), 1);
    }

    if (auto const match = extract_match(type_i_disproven_regex); match.has_value()) {
      testcase.m_type_i_disproven = unsigned_at(match.value(), 1);
    }

    if (auto const match = extract_match(type_i_timeout_regex); match.has_value()) {
      testcase.m_type_i_timeout = unsigned_at(match.value(), 1);
    }

    if (auto const match = extract_match(type_ii_proven_regex); match.has_value()) {
      auto const key = unsigned_at(match.value(), 1);
      auto const val = unsigned_at(match.value(), 2);
      testcase.m_type_ii_proven[key] = val;
    }

    if (auto const match = extract_match(type_ii_disproven_regex); match.has_value()) {
      auto const key = unsigned_at(match.value(), 1);
      auto const val = unsigned_at(match.value(), 2);
      testcase.m_type_ii_disproven[key] = val;
    }

    if (auto const match = extract_match(type_ii_timeout_regex); match.has_value()) {
      testcase.m_type_ii_timeout = unsigned_at(match.value(), 1);
    }

    if (auto const match = extract_match(type_iii_proven_regex); match.has_value()) {
      auto const key = unsigned_at(match.value(), 1);
      auto const val = unsigned_at(match.value(), 2);
      testcase.m_type_iii_proven[key] = val;
    }

    if (auto const match = extract_match(type_iii_timeout_regex); match.has_value()) {
      testcase.m_type_iii_timeout = unsigned_at(match.value(), 1);
    }
  }
}

int main(int argc, char const *argv[]) {
  assert(argc == 3);

  auto const workingdir = fs::path{ argv[1] };
  vector<TestCase> testcases;
  for (auto const &entry : fs::directory_iterator(workingdir)) {
    if (entry.is_regular_file()) {
      auto const filepath = entry.path();
      auto testcase = TestCase{ filepath.filename().string() };

      populate_testcase_stats(testcase, filepath);

      testcases.emplace_back(testcase);
    }
  }

  auto const outfile = fs::path{ argv[2] };
  auto ofs = ofstream{ outfile };

  TestCase::cols(ofs) << "\n";
  for (auto const& testcase : testcases) {
    ofs << testcase << "\n";
  }

  auto const all_testcase = accumulate(begin(testcases), end(testcases), TestCase::id("all"), [](auto const& a, auto const& b) {
    auto r = a; return r.union_with(b);
  });
  ofs << all_testcase << "\n";

  return 0;
}
