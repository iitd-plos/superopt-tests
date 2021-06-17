; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/micro/fpext.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/micro/fpext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dummy1 = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@dummy2 = dso_local local_unnamed_addr global i32 0, align 4, !dbg !9
@dummy3 = dso_local local_unnamed_addr global i32 0, align 4, !dbg !13
@g_int = dso_local local_unnamed_addr global i32 0, align 4, !dbg !15

; Function Attrs: noinline norecurse nounwind readnone
define dso_local double @fpext(float %x) local_unnamed_addr #0 !dbg !21 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !26, metadata !DIExpression()), !dbg !28
  %conv = fpext float %x to double, !dbg !29
  call void @llvm.dbg.value(metadata double %conv, metadata !27, metadata !DIExpression()), !dbg !28
  %mul = fmul double %conv, 2.000000e+00, !dbg !30
  call void @llvm.dbg.value(metadata double %mul, metadata !27, metadata !DIExpression()), !dbg !28
  %div = fdiv double %mul, 3.000000e+00, !dbg !31
  call void @llvm.dbg.value(metadata double %div, metadata !27, metadata !DIExpression()), !dbg !28
  ret double %div, !dbg !32
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind readnone
define dso_local x86_fp80 @fpextl(float %x) local_unnamed_addr #0 !dbg !33 {
entry:
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !38, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !39
  call void @llvm.dbg.value(metadata float %x, metadata !37, metadata !DIExpression()), !dbg !40
  %conv = fpext float %x to x86_fp80, !dbg !41
  call void @llvm.dbg.value(metadata x86_fp80 %conv, metadata !38, metadata !DIExpression()), !dbg !40
  %mul = fmul x86_fp80 %conv, 0xK40008000000000000000, !dbg !42
  call void @llvm.dbg.value(metadata x86_fp80 %mul, metadata !38, metadata !DIExpression()), !dbg !40
  %div = fdiv x86_fp80 %mul, 0xK4000C000000000000000, !dbg !43
  call void @llvm.dbg.value(metadata x86_fp80 %div, metadata !38, metadata !DIExpression()), !dbg !40
  ret x86_fp80 %div, !dbg !44

; uselistorder directives
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 3, 2, 1, 0, 7, 6, 5, 4 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dummy1", scope: !2, file: !11, line: 4, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 97a074550633cce1a781e32373a231df25f95f5b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/micro/fpext.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/micro")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!8 = !{!0, !9, !13, !15}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "dummy2", scope: !2, file: !11, line: 4, type: !12, isLocal: false, isDefinition: true)
!11 = !DIFile(filename: "micro/fpext.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "dummy3", scope: !2, file: !11, line: 4, type: !12, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "g_int", scope: !2, file: !11, line: 5, type: !12, isLocal: false, isDefinition: true)
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 97a074550633cce1a781e32373a231df25f95f5b)"}
!21 = distinct !DISubprogram(name: "fpext", scope: !11, file: !11, line: 9, type: !22, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!22 = !DISubroutineType(types: !23)
!23 = !{!6, !24}
!24 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!25 = !{!26, !27}
!26 = !DILocalVariable(name: "x", arg: 1, scope: !21, file: !11, line: 9, type: !24)
!27 = !DILocalVariable(name: "ret", scope: !21, file: !11, line: 11, type: !6)
!28 = !DILocation(line: 0, scope: !21)
!29 = !DILocation(line: 11, column: 16, scope: !21)
!30 = !DILocation(line: 12, column: 13, scope: !21)
!31 = !DILocation(line: 14, column: 13, scope: !21)
!32 = !DILocation(line: 15, column: 3, scope: !21)
!33 = distinct !DISubprogram(name: "fpextl", scope: !11, file: !11, line: 18, type: !34, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!7, !24}
!36 = !{!37, !38}
!37 = !DILocalVariable(name: "x", arg: 1, scope: !33, file: !11, line: 18, type: !24)
!38 = !DILocalVariable(name: "ret", scope: !33, file: !11, line: 20, type: !7)
!39 = !DILocation(line: 20, column: 15, scope: !33)
!40 = !DILocation(line: 0, scope: !33)
!41 = !DILocation(line: 20, column: 21, scope: !33)
!42 = !DILocation(line: 21, column: 13, scope: !33)
!43 = !DILocation(line: 23, column: 13, scope: !33)
!44 = !DILocation(line: 24, column: 3, scope: !33)
