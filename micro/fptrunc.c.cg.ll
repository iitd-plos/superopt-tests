; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/micro/fptrunc.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/micro/fptrunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dummy1 = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@dummy2 = dso_local local_unnamed_addr global i32 0, align 4, !dbg !8
@dummy3 = dso_local local_unnamed_addr global i32 0, align 4, !dbg !12
@g_int = dso_local local_unnamed_addr global i32 0, align 4, !dbg !14

; Function Attrs: noinline norecurse nounwind readnone
define dso_local float @fptrunc(double %x) local_unnamed_addr #0 !dbg !20 {
entry:
  call void @llvm.dbg.value(metadata double %x, metadata !25, metadata !DIExpression()), !dbg !26
  %conv = fptrunc double %x to float, !dbg !27
  ret float %conv, !dbg !28
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local float @fptruncl(x86_fp80 %x) local_unnamed_addr #0 !dbg !29 {
entry:
  call void @llvm.dbg.value(metadata x86_fp80 %x, metadata !34, metadata !DIExpression()), !dbg !35
  %conv = fptrunc x86_fp80 %x to float, !dbg !36
  ret float %conv, !dbg !37
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dummy1", scope: !2, file: !10, line: 4, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 97a074550633cce1a781e32373a231df25f95f5b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/micro/fptrunc.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/micro")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!7 = !{!0, !8, !12, !14}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "dummy2", scope: !2, file: !10, line: 4, type: !11, isLocal: false, isDefinition: true)
!10 = !DIFile(filename: "micro/fptrunc.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "dummy3", scope: !2, file: !10, line: 4, type: !11, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "g_int", scope: !2, file: !10, line: 5, type: !11, isLocal: false, isDefinition: true)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 97a074550633cce1a781e32373a231df25f95f5b)"}
!20 = distinct !DISubprogram(name: "fptrunc", scope: !10, file: !10, line: 7, type: !21, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!6, !23}
!23 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!24 = !{!25}
!25 = !DILocalVariable(name: "x", arg: 1, scope: !20, file: !10, line: 7, type: !23)
!26 = !DILocation(line: 0, scope: !20)
!27 = !DILocation(line: 9, column: 10, scope: !20)
!28 = !DILocation(line: 9, column: 3, scope: !20)
!29 = distinct !DISubprogram(name: "fptruncl", scope: !10, file: !10, line: 12, type: !30, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{!6, !32}
!32 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!33 = !{!34}
!34 = !DILocalVariable(name: "x", arg: 1, scope: !29, file: !10, line: 12, type: !32)
!35 = !DILocation(line: 0, scope: !29)
!36 = !DILocation(line: 14, column: 10, scope: !29)
!37 = !DILocation(line: 14, column: 3, scope: !29)
