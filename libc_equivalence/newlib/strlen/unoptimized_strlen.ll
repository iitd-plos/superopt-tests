; ModuleID = 'myown_strlen.c.bc'
source_filename = "myown_strlen.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: noinline nounwind
define dso_local i32 @strlen(i8* %s) #0 !dbg !8 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i8* %s, metadata !17, metadata !DIExpression()), !dbg !16
  br label %for.cond, !dbg !18

for.cond:                                         ; preds = %if.end, %entry
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr, %if.end ]
  call void @llvm.dbg.value(metadata i8* %s.addr.0, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load i8, i8* %s.addr.0, align 1, !dbg !19
  %tobool = icmp ne i8 %0, 0, !dbg !24
  br i1 %tobool, label %if.end, label %if.then, !dbg !25

if.then:                                          ; preds = %for.cond
  %sub.ptr.lhs.cast = ptrtoint i8* %s.addr.0 to i32, !dbg !26
  %sub.ptr.rhs.cast = ptrtoint i8* %s to i32, !dbg !26
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !26
  ret i32 %sub.ptr.sub, !dbg !28

if.end:                                           ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %s.addr.0, i32 1, !dbg !29
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !15, metadata !DIExpression()), !dbg !16
  br label %for.cond, !dbg !30, !llvm.loop !31
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind
define dso_local i32 @main() #0 !dbg !34 {
entry:
  ret i32 0, !dbg !38
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://github.com/bsorav/llvm-project2 7bc95ea4aa5dd5d0201ff961f9b6b6b1754ff7ac)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "myown_strlen.c", directory: "/home/shubhamsondhi/tests/strlen/newlib")
!2 = !{}
!3 = !{i32 1, !"NumRegisterParameters", i32 0}
!4 = !{i32 7, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{!"clang version 12.0.0 (https://github.com/bsorav/llvm-project2 7bc95ea4aa5dd5d0201ff961f9b6b6b1754ff7ac)"}
!8 = distinct !DISubprogram(name: "strlen", scope: !1, file: !1, line: 5, type: !9, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12}
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "s", arg: 1, scope: !8, file: !1, line: 5, type: !12)
!16 = !DILocation(line: 0, scope: !8)
!17 = !DILocalVariable(name: "a", scope: !8, file: !1, line: 6, type: !12)
!18 = !DILocation(line: 7, column: 9, scope: !8)
!19 = !DILocation(line: 8, column: 15, scope: !20)
!20 = distinct !DILexicalBlock(scope: !21, file: !1, line: 8, column: 13)
!21 = distinct !DILexicalBlock(scope: !22, file: !1, line: 7, column: 17)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 7, column: 9)
!23 = distinct !DILexicalBlock(scope: !8, file: !1, line: 7, column: 9)
!24 = !DILocation(line: 8, column: 14, scope: !20)
!25 = !DILocation(line: 8, column: 13, scope: !21)
!26 = !DILocation(line: 9, column: 19, scope: !27)
!27 = distinct !DILexicalBlock(scope: !20, file: !1, line: 8, column: 19)
!28 = !DILocation(line: 9, column: 11, scope: !27)
!29 = !DILocation(line: 11, column: 11, scope: !21)
!30 = !DILocation(line: 7, column: 9, scope: !22)
!31 = distinct !{!31, !32, !33}
!32 = !DILocation(line: 7, column: 9, scope: !23)
!33 = !DILocation(line: 12, column: 9, scope: !23)
!34 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !35, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{!37}
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DILocation(line: 16, column: 9, scope: !34)
