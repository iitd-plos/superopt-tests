; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/dietlibc/memccpy_dst.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/dietlibc/memccpy_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i8* @memccpy(i8* %t, i8* nocapture readonly %f, i32 %c, i32 %n) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i8* %t, metadata !18, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i8* %f, metadata !19, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %c, metadata !20, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %n, metadata !21, metadata !DIExpression()), !dbg !31
  %tobool.not = icmp eq i32 %n, 0, !dbg !32
  br i1 %tobool.not, label %return, label %do.body.preheader, !dbg !33

do.body.preheader:                                ; preds = %entry
  %0 = trunc i32 %c to i8, !dbg !34
  %1 = sub i32 0, %n, !dbg !37
  %2 = zext i32 %1 to i64, !dbg !37
  %scevgep = getelementptr i8, i8* %t, i64 1, !dbg !37
  br label %do.body, !dbg !37

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %lsr.iv16 = phi i8* [ %scevgep, %do.body.preheader ], [ %scevgep17, %do.cond ]
  %lsr.iv = phi i64 [ 1, %do.body.preheader ], [ %lsr.iv.next, %do.cond ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !27, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i8* undef, metadata !22, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i32 undef, metadata !21, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i8* undef, metadata !27, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !38
  %scevgep18 = getelementptr i8, i8* %lsr.iv16, i64 -1, !dbg !39
  %scevgep19 = getelementptr i8, i8* %f, i64 %lsr.iv, !dbg !39
  %scevgep20 = getelementptr i8, i8* %scevgep19, i64 -1, !dbg !39
  %3 = load i8, i8* %scevgep20, align 1, !dbg !39
  call void @llvm.dbg.value(metadata i8* undef, metadata !22, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !38
  store i8 %3, i8* %scevgep18, align 1, !dbg !40
  %cmp = icmp eq i8 %3, %0, !dbg !41
  br i1 %cmp, label %return, label %do.cond, !dbg !42

do.cond:                                          ; preds = %do.body
  call void @llvm.dbg.value(metadata i8* undef, metadata !27, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !38
  call void @llvm.dbg.value(metadata i32 undef, metadata !21, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !31
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 1, !dbg !43
  %4 = add i64 %2, %lsr.iv.next, !dbg !43
  %tmp = trunc i64 %4 to i32
  %scevgep17 = getelementptr i8, i8* %lsr.iv16, i64 1, !dbg !43
  %cmp6.not = icmp eq i32 %tmp, 1, !dbg !43
  br i1 %cmp6.not, label %return, label %do.body, !dbg !44, !llvm.loop !45

return:                                           ; preds = %do.cond, %do.body, %entry
  %retval.1 = phi i8* [ null, %entry ], [ null, %do.cond ], [ %lsr.iv16, %do.body ], !dbg !31
  ret i8* %retval.1, !dbg !48

; uselistorder directives
  uselistorder i64 %lsr.iv, { 1, 0 }
  uselistorder i8* %lsr.iv16, { 0, 2, 1 }
  uselistorder i64 1, { 0, 2, 3, 1 }
  uselistorder label %do.body, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #1 !dbg !49 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !56, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i8** %argv, metadata !57, metadata !DIExpression()), !dbg !58
  ret i32 0, !dbg !59

; uselistorder directives
  uselistorder i32 0, { 1, 0, 2 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 2, 1, 3, 0, 4, 5, 8, 7, 6, 9, 12, 10, 11 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/dietlibc/memccpy_dst.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/dietlibc")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "memccpy", scope: !8, file: !8, line: 4, type: !9, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
!8 = !DIFile(filename: "dietlibc/memccpy_dst.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12, !14, !15}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 3, baseType: !16)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22, !27, !30}
!18 = !DILocalVariable(name: "t", arg: 1, scope: !7, file: !8, line: 4, type: !11)
!19 = !DILocalVariable(name: "f", arg: 2, scope: !7, file: !8, line: 4, type: !12)
!20 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !8, line: 4, type: !14)
!21 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !8, line: 4, type: !15)
!22 = !DILocalVariable(name: "tp", scope: !23, file: !8, line: 6, type: !25)
!23 = distinct !DILexicalBlock(scope: !24, file: !8, line: 5, column: 12)
!24 = distinct !DILexicalBlock(scope: !7, file: !8, line: 5, column: 9)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DILocalVariable(name: "fp", scope: !23, file: !8, line: 7, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!30 = !DILocalVariable(name: "uc", scope: !23, file: !8, line: 8, type: !26)
!31 = !DILocation(line: 0, scope: !7)
!32 = !DILocation(line: 5, column: 9, scope: !24)
!33 = !DILocation(line: 5, column: 9, scope: !7)
!34 = !DILocation(line: 0, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !8, line: 10, column: 17)
!36 = distinct !DILexicalBlock(scope: !23, file: !8, line: 9, column: 12)
!37 = !DILocation(line: 9, column: 9, scope: !23)
!38 = !DILocation(line: 0, scope: !23)
!39 = !DILocation(line: 10, column: 26, scope: !35)
!40 = !DILocation(line: 10, column: 24, scope: !35)
!41 = !DILocation(line: 10, column: 33, scope: !35)
!42 = !DILocation(line: 10, column: 17, scope: !36)
!43 = !DILocation(line: 12, column: 22, scope: !23)
!44 = !DILocation(line: 12, column: 9, scope: !36)
!45 = distinct !{!45, !37, !46, !47}
!46 = !DILocation(line: 12, column: 26, scope: !23)
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !DILocation(line: 15, column: 1, scope: !7)
!49 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 17, type: !50, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !55)
!50 = !DISubroutineType(types: !51)
!51 = !{!14, !14, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !{!56, !57}
!56 = !DILocalVariable(name: "argc", arg: 1, scope: !49, file: !8, line: 17, type: !14)
!57 = !DILocalVariable(name: "argv", arg: 2, scope: !49, file: !8, line: 17, type: !52)
!58 = !DILocation(line: 0, scope: !49)
!59 = !DILocation(line: 26, column: 3, scope: !49)
