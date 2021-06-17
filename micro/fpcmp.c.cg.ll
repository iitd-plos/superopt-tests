; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/micro/fpcmp.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/micro/fpcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline norecurse nounwind readnone
define dso_local zeroext i1 @fpcmp(float %x, float %y) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata float %y, metadata !15, metadata !DIExpression()), !dbg !16
  %cmp = fcmp olt float %x, %y, !dbg !17
  ret i1 %cmp, !dbg !18

; uselistorder directives
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 97a074550633cce1a781e32373a231df25f95f5b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/micro/fpcmp.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/micro")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 97a074550633cce1a781e32373a231df25f95f5b)"}
!7 = distinct !DISubprogram(name: "fpcmp", scope: !8, file: !8, line: 4, type: !9, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DIFile(filename: "micro/fpcmp.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !12}
!11 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !8, line: 4, type: !12)
!15 = !DILocalVariable(name: "y", arg: 2, scope: !7, file: !8, line: 4, type: !12)
!16 = !DILocation(line: 0, scope: !7)
!17 = !DILocation(line: 6, column: 12, scope: !7)
!18 = !DILocation(line: 6, column: 3, scope: !7)
