; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/micro/fptoui.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/micro/fptoui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @fptoui(float %x) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !15, metadata !DIExpression()), !dbg !16
  %conv = fptoui float %x to i32, !dbg !17
  ret i32 %conv, !dbg !18
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @fptouid(double %x) local_unnamed_addr #0 !dbg !19 {
entry:
  call void @llvm.dbg.value(metadata double %x, metadata !24, metadata !DIExpression()), !dbg !25
  %conv = fptoui double %x to i32, !dbg !26
  ret i32 %conv, !dbg !27
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @fptouil(x86_fp80 %x) local_unnamed_addr #0 !dbg !28 {
entry:
  call void @llvm.dbg.value(metadata x86_fp80 %x, metadata !33, metadata !DIExpression()), !dbg !34
  %conv = fptoui x86_fp80 %x to i32, !dbg !35
  ret i32 %conv, !dbg !36
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 97a074550633cce1a781e32373a231df25f95f5b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/micro/fptoui.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/micro")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 97a074550633cce1a781e32373a231df25f95f5b)"}
!9 = distinct !DISubprogram(name: "fptoui", scope: !10, file: !10, line: 4, type: !11, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!10 = !DIFile(filename: "micro/fptoui.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !13}
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = !{!15}
!15 = !DILocalVariable(name: "x", arg: 1, scope: !9, file: !10, line: 4, type: !13)
!16 = !DILocation(line: 0, scope: !9)
!17 = !DILocation(line: 6, column: 10, scope: !9)
!18 = !DILocation(line: 6, column: 3, scope: !9)
!19 = distinct !DISubprogram(name: "fptouid", scope: !10, file: !10, line: 9, type: !20, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!20 = !DISubroutineType(types: !21)
!21 = !{!4, !22}
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !{!24}
!24 = !DILocalVariable(name: "x", arg: 1, scope: !19, file: !10, line: 9, type: !22)
!25 = !DILocation(line: 0, scope: !19)
!26 = !DILocation(line: 11, column: 10, scope: !19)
!27 = !DILocation(line: 11, column: 3, scope: !19)
!28 = distinct !DISubprogram(name: "fptouil", scope: !10, file: !10, line: 14, type: !29, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!29 = !DISubroutineType(types: !30)
!30 = !{!4, !31}
!31 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!32 = !{!33}
!33 = !DILocalVariable(name: "x", arg: 1, scope: !28, file: !10, line: 14, type: !31)
!34 = !DILocation(line: 0, scope: !28)
!35 = !DILocation(line: 16, column: 10, scope: !28)
!36 = !DILocation(line: 16, column: 3, scope: !28)
