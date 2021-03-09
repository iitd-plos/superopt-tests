; ModuleID = 'newlib_strlen.c.bc'
source_filename = "/home/shubhamsondhi/tests/strlen/newlib/newlib_strlen.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: noinline nounwind readonly
define dso_local i32 @strlen(i8* nonnull %str) #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i8* %str, metadata !23, metadata !DIExpression()), !dbg !22
  br label %while.cond, !dbg !24

while.cond:                                       ; preds = %if.end, %entry
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %if.end ]
  call void @llvm.dbg.value(metadata i8* %str.addr.0, metadata !21, metadata !DIExpression()), !dbg !22
  %0 = ptrtoint i8* %str.addr.0 to i32, !dbg !25
  %and = and i32 %0, 3, !dbg !25
  %tobool = icmp ne i32 %and, 0, !dbg !24
  br i1 %tobool, label %while.body, label %while.end, !dbg !24

while.body:                                       ; preds = %while.cond
  %1 = load i8, i8* %str.addr.0, align 1, !dbg !26
  %tobool1 = icmp ne i8 %1, 0, !dbg !26
  br i1 %tobool1, label %if.end, label %if.then, !dbg !29

if.then:                                          ; preds = %while.body
  %sub.ptr.lhs.cast = ptrtoint i8* %str.addr.0 to i32, !dbg !30
  %sub.ptr.rhs.cast = ptrtoint i8* %str to i32, !dbg !30
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !30
  br label %return, !dbg !31

if.end:                                           ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i32 1, !dbg !32
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !21, metadata !DIExpression()), !dbg !22
  br label %while.cond, !dbg !24, !llvm.loop !33

while.end:                                        ; preds = %while.cond
  %2 = bitcast i8* %str.addr.0 to i32*, !dbg !35
  call void @llvm.dbg.value(metadata i32* %2, metadata !36, metadata !DIExpression()), !dbg !22
  br label %while.cond2, !dbg !37

while.cond2:                                      ; preds = %while.body6, %while.end
  %aligned_addr.0 = phi i32* [ %2, %while.end ], [ %incdec.ptr7, %while.body6 ], !dbg !22
  call void @llvm.dbg.value(metadata i32* %aligned_addr.0, metadata !36, metadata !DIExpression()), !dbg !22
  %3 = load i32, i32* %aligned_addr.0, align 4, !dbg !38
  %sub = sub i32 %3, 16843009, !dbg !38
  %4 = load i32, i32* %aligned_addr.0, align 4, !dbg !38
  %neg = xor i32 %4, -1, !dbg !38
  %and3 = and i32 %sub, %neg, !dbg !38
  %and4 = and i32 %and3, -2139062144, !dbg !38
  %tobool5 = icmp ne i32 %and4, 0, !dbg !39
  %lnot = xor i1 %tobool5, true, !dbg !39
  br i1 %lnot, label %while.body6, label %while.end8, !dbg !37

while.body6:                                      ; preds = %while.cond2
  %incdec.ptr7 = getelementptr inbounds i32, i32* %aligned_addr.0, i32 1, !dbg !40
  call void @llvm.dbg.value(metadata i32* %incdec.ptr7, metadata !36, metadata !DIExpression()), !dbg !22
  br label %while.cond2, !dbg !37, !llvm.loop !41

while.end8:                                       ; preds = %while.cond2
  %5 = bitcast i32* %aligned_addr.0 to i8*, !dbg !42
  call void @llvm.dbg.value(metadata i8* %5, metadata !21, metadata !DIExpression()), !dbg !22
  br label %while.cond9, !dbg !43

while.cond9:                                      ; preds = %while.body11, %while.end8
  %str.addr.1 = phi i8* [ %5, %while.end8 ], [ %incdec.ptr12, %while.body11 ], !dbg !22
  call void @llvm.dbg.value(metadata i8* %str.addr.1, metadata !21, metadata !DIExpression()), !dbg !22
  %6 = load i8, i8* %str.addr.1, align 1, !dbg !44
  %tobool10 = icmp ne i8 %6, 0, !dbg !43
  br i1 %tobool10, label %while.body11, label %while.end13, !dbg !43

while.body11:                                     ; preds = %while.cond9
  %incdec.ptr12 = getelementptr inbounds i8, i8* %str.addr.1, i32 1, !dbg !45
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12, metadata !21, metadata !DIExpression()), !dbg !22
  br label %while.cond9, !dbg !43, !llvm.loop !46

while.end13:                                      ; preds = %while.cond9
  %sub.ptr.lhs.cast14 = ptrtoint i8* %str.addr.1 to i32, !dbg !47
  %sub.ptr.rhs.cast15 = ptrtoint i8* %str to i32, !dbg !47
  %sub.ptr.sub16 = sub i32 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15, !dbg !47
  br label %return, !dbg !48

return:                                           ; preds = %while.end13, %if.then
  %retval.0 = phi i32 [ %sub.ptr.sub, %if.then ], [ %sub.ptr.sub16, %while.end13 ], !dbg !22
  ret i32 %retval.0, !dbg !49
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind
define dso_local i32 @main() #2 !dbg !50 {
entry:
  ret i32 0, !dbg !54
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://github.com/bsorav/llvm-project2 7bc95ea4aa5dd5d0201ff961f9b6b6b1754ff7ac)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/shubhamsondhi/tests/strlen/newlib/newlib_strlen.c", directory: "/home/shubhamsondhi/tests/strlen/newlib")
!2 = !{}
!3 = !{!4, !5, !7}
!4 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!6 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{i32 1, !"NumRegisterParameters", i32 0}
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 12.0.0 (https://github.com/bsorav/llvm-project2 7bc95ea4aa5dd5d0201ff961f9b6b6b1754ff7ac)"}
!14 = distinct !DISubprogram(name: "strlen", scope: !15, file: !15, line: 23, type: !16, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DIFile(filename: "newlib_strlen.c", directory: "/home/shubhamsondhi/tests/strlen/newlib")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19}
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!21 = !DILocalVariable(name: "str", arg: 1, scope: !14, file: !15, line: 23, type: !19)
!22 = !DILocation(line: 0, scope: !14)
!23 = !DILocalVariable(name: "start", scope: !14, file: !15, line: 25, type: !19)
!24 = !DILocation(line: 31, column: 3, scope: !14)
!25 = !DILocation(line: 31, column: 10, scope: !14)
!26 = !DILocation(line: 33, column: 12, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !15, line: 33, column: 11)
!28 = distinct !DILexicalBlock(scope: !14, file: !15, line: 32, column: 5)
!29 = !DILocation(line: 33, column: 11, scope: !28)
!30 = !DILocation(line: 34, column: 13, scope: !27)
!31 = !DILocation(line: 34, column: 2, scope: !27)
!32 = !DILocation(line: 35, column: 10, scope: !28)
!33 = distinct !{!33, !24, !34}
!34 = !DILocation(line: 36, column: 5, scope: !14)
!35 = !DILocation(line: 40, column: 18, scope: !14)
!36 = !DILocalVariable(name: "aligned_addr", scope: !14, file: !15, line: 28, type: !5)
!37 = !DILocation(line: 41, column: 3, scope: !14)
!38 = !DILocation(line: 41, column: 11, scope: !14)
!39 = !DILocation(line: 41, column: 10, scope: !14)
!40 = !DILocation(line: 42, column: 17, scope: !14)
!41 = distinct !{!41, !37, !40}
!42 = !DILocation(line: 46, column: 9, scope: !14)
!43 = !DILocation(line: 50, column: 3, scope: !14)
!44 = !DILocation(line: 50, column: 10, scope: !14)
!45 = !DILocation(line: 51, column: 8, scope: !14)
!46 = distinct !{!46, !43, !45}
!47 = !DILocation(line: 52, column: 14, scope: !14)
!48 = !DILocation(line: 52, column: 3, scope: !14)
!49 = !DILocation(line: 53, column: 1, scope: !14)
!50 = distinct !DISubprogram(name: "main", scope: !15, file: !15, line: 55, type: !51, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!51 = !DISubroutineType(types: !52)
!52 = !{!53}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DILocation(line: 56, column: 2, scope: !50)
