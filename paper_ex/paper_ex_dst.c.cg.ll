; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/paper_ex/paper_ex_dst.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/paper_ex/paper_ex_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i8* @strcpy(i8* returned %dest, i8* %src) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata i8* %dest, metadata !23, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %src, metadata !24, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %dest, metadata !25, metadata !DIExpression()), !dbg !29
  %0 = ptrtoint i8* %dest to i64, !dbg !30
  %1 = ptrtoint i8* %src to i64, !dbg !30
  %and60 = xor i64 %1, %0, !dbg !30
  %xor = and i64 %and60, 7, !dbg !30
  %tobool.not = icmp eq i64 %xor, 0, !dbg !30
  br i1 %tobool.not, label %if.end, label %while.cond.preheader, !dbg !32

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !33

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %lsr.iv107 = phi i64 [ 0, %while.cond.preheader ], [ %lsr.iv.next108, %while.cond ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !24, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* undef, metadata !23, metadata !DIExpression()), !dbg !29
  %scevgep109 = getelementptr i8, i8* %dest, i64 %lsr.iv107, !dbg !35
  %scevgep110 = getelementptr i8, i8* %src, i64 %lsr.iv107, !dbg !35
  call void @llvm.dbg.value(metadata i8* undef, metadata !24, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  %2 = load i8, i8* %scevgep110, align 1, !dbg !36
  call void @llvm.dbg.value(metadata i8* undef, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  store i8 %2, i8* %scevgep109, align 1, !dbg !37
  %tobool3.not = icmp eq i8 %2, 0, !dbg !33
  %lsr.iv.next108 = add i64 %lsr.iv107, 1, !dbg !33
  br i1 %tobool3.not, label %cleanup, label %while.cond, !dbg !33, !llvm.loop !38

if.end:                                           ; preds = %entry
  %3 = ptrtoint i8* %dest to i64, !dbg !30
  %sub = add i64 %3, 7, !dbg !41
  %and4 = and i64 %sub, 4294967288, !dbg !41
  %sub5 = sub i64 %and4, %3, !dbg !41
  %conv = trunc i64 %sub5 to i32, !dbg !41
  call void @llvm.dbg.value(metadata i32 %conv, metadata !26, metadata !DIExpression()), !dbg !29
  %tobool6.not = icmp eq i32 %conv, 0, !dbg !43
  br i1 %tobool6.not, label %if.end19, label %while.cond8.preheader, !dbg !44

while.cond8.preheader:                            ; preds = %if.end
  %4 = ptrtoint i8* %dest to i64, !dbg !30
  %5 = trunc i64 %4 to i32, !dbg !45
  %6 = lshr i64 %sub, 3, !dbg !45
  %7 = trunc i64 %6 to i29, !dbg !45
  %8 = zext i29 %7 to i32, !dbg !45
  %9 = shl nuw i32 %8, 3, !dbg !45
  %10 = sub i32 %5, %9, !dbg !45
  br label %while.cond8, !dbg !45

while.cond8:                                      ; preds = %while.cond8.preheader, %land.rhs
  %lsr.iv106 = phi i32 [ %10, %while.cond8.preheader ], [ %lsr.iv.next, %land.rhs ]
  %dest.addr.1 = phi i8* [ %incdec.ptr11, %land.rhs ], [ %dest, %while.cond8.preheader ]
  %src.addr.1 = phi i8* [ %incdec.ptr10, %land.rhs ], [ %src, %while.cond8.preheader ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !26, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %src.addr.1, metadata !24, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %dest.addr.1, metadata !23, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i32 undef, metadata !26, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !29
  %tobool9.not = icmp eq i32 %lsr.iv106, 0, !dbg !47
  br i1 %tobool9.not, label %if.end19, label %land.rhs, !dbg !48

land.rhs:                                         ; preds = %while.cond8
  call void @llvm.dbg.value(metadata i32 undef, metadata !26, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !29
  %incdec.ptr10 = getelementptr i8, i8* %src.addr.1, i64 1, !dbg !49
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10, metadata !24, metadata !DIExpression()), !dbg !29
  %11 = load i8, i8* %src.addr.1, align 1, !dbg !50
  %incdec.ptr11 = getelementptr i8, i8* %dest.addr.1, i64 1, !dbg !51
  call void @llvm.dbg.value(metadata i8* %incdec.ptr11, metadata !23, metadata !DIExpression()), !dbg !29
  store i8 %11, i8* %dest.addr.1, align 1, !dbg !52
  %tobool13.not = icmp eq i8 %11, 0, !dbg !48
  %lsr.iv.next = add i32 %lsr.iv106, 1, !dbg !45
  br i1 %tobool13.not, label %cleanup, label %while.cond8, !dbg !45, !llvm.loop !53

if.end19:                                         ; preds = %while.cond8, %if.end
  %dest.addr.3 = phi i8* [ %dest, %if.end ], [ %dest.addr.1, %while.cond8 ]
  %src.addr.3 = phi i8* [ %src, %if.end ], [ %src.addr.1, %while.cond8 ]
  %const111 = bitcast i64 -72340172838076673 to i64, !dbg !29
  %const = bitcast i64 -9187201950435737472 to i64, !dbg !29
  call void @llvm.dbg.value(metadata i8* %src.addr.3, metadata !24, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %dest.addr.3, metadata !23, metadata !DIExpression()), !dbg !29
  %12 = bitcast i8* %src.addr.3 to i64*, !dbg !55
  %13 = load i64, i64* %12, align 8, !dbg !55
  call void @llvm.dbg.value(metadata i64 %13, metadata !28, metadata !DIExpression()), !dbg !29
  %sub2271 = add i64 %13, %const111, !dbg !57
  %neg72 = and i64 %13, %const, !dbg !59
  %and2373 = xor i64 %neg72, %const, !dbg !59
  %and2474 = and i64 %and2373, %sub2271, !dbg !60
  %tobool25.not75 = icmp eq i64 %and2474, 0, !dbg !60
  br i1 %tobool25.not75, label %if.end34.preheader, label %while.cond27.preheader, !dbg !61

if.end34.preheader:                               ; preds = %if.end19
  %scevgep102 = getelementptr i8, i8* %src.addr.3, i64 8, !dbg !62
  br label %if.end34, !dbg !62

while.cond27.preheader:                           ; preds = %if.end34, %if.end19
  %dest.addr.4.lcssa = phi i8* [ %dest.addr.3, %if.end19 ], [ %add.ptr35, %if.end34 ], !dbg !29
  %.lcssa = phi i64 [ %13, %if.end19 ], [ %16, %if.end34 ], !dbg !55
  call void @llvm.dbg.value(metadata i8* %dest.addr.4.lcssa, metadata !23, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i64 %.lcssa, metadata !28, metadata !DIExpression()), !dbg !29
  %conv2967 = trunc i64 %.lcssa to i8, !dbg !63
  call void @llvm.dbg.value(metadata i8* %dest.addr.4.lcssa, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  store i8 %conv2967, i8* %dest.addr.4.lcssa, align 1, !dbg !65
  %tobool31.not68 = icmp eq i8 %conv2967, 0, !dbg !66
  br i1 %tobool31.not68, label %cleanup, label %do.body.preheader, !dbg !66

do.body.preheader:                                ; preds = %while.cond27.preheader
  %scevgep = getelementptr i8, i8* %dest.addr.4.lcssa, i64 1, !dbg !66
  br label %do.body, !dbg !66

do.body:                                          ; preds = %do.body.preheader, %do.body
  %lsr.iv = phi i8* [ %scevgep, %do.body.preheader ], [ %scevgep101, %do.body ]
  %l.070 = phi i64 [ %shr, %do.body ], [ %.lcssa, %do.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %l.070, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* undef, metadata !23, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* undef, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  %shr = lshr i64 %l.070, 8, !dbg !67
  call void @llvm.dbg.value(metadata i64 %shr, metadata !28, metadata !DIExpression()), !dbg !29
  %conv29 = trunc i64 %shr to i8, !dbg !63
  call void @llvm.dbg.value(metadata i8* undef, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  store i8 %conv29, i8* %lsr.iv, align 1, !dbg !65
  %tobool31.not = icmp eq i8 %conv29, 0, !dbg !66
  %scevgep101 = getelementptr i8, i8* %lsr.iv, i64 1, !dbg !66
  br i1 %tobool31.not, label %cleanup, label %do.body, !dbg !66, !llvm.loop !69

if.end34:                                         ; preds = %if.end34.preheader, %if.end34
  %lsr.iv103 = phi i8* [ %scevgep102, %if.end34.preheader ], [ %scevgep104, %if.end34 ]
  %14 = phi i64 [ %16, %if.end34 ], [ %13, %if.end34.preheader ]
  %dest.addr.476 = phi i8* [ %add.ptr35, %if.end34 ], [ %dest.addr.3, %if.end34.preheader ]
  %15 = bitcast i8* %dest.addr.476 to i64*
  %lsr.iv103105 = bitcast i8* %lsr.iv103 to i64*
  call void @llvm.dbg.value(metadata i8* undef, metadata !24, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %dest.addr.476, metadata !23, metadata !DIExpression()), !dbg !29
  store i64 %14, i64* %15, align 8, !dbg !71
  call void @llvm.dbg.value(metadata i8* undef, metadata !24, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !29
  %add.ptr35 = getelementptr i8, i8* %dest.addr.476, i64 8, !dbg !72
  call void @llvm.dbg.value(metadata i8* %add.ptr35, metadata !23, metadata !DIExpression()), !dbg !29
  %16 = load i64, i64* %lsr.iv103105, align 8, !dbg !55
  call void @llvm.dbg.value(metadata i64 %16, metadata !28, metadata !DIExpression()), !dbg !29
  %sub22 = add i64 %16, %const111, !dbg !57
  %neg = and i64 %16, %const, !dbg !59
  %and23 = xor i64 %neg, %const, !dbg !59
  %and24 = and i64 %and23, %sub22, !dbg !60
  %tobool25.not = icmp eq i64 %and24, 0, !dbg !60
  %scevgep104 = getelementptr i8, i8* %lsr.iv103, i64 8, !dbg !61
  br i1 %tobool25.not, label %if.end34, label %while.cond27.preheader, !dbg !61, !llvm.loop !73

cleanup:                                          ; preds = %while.cond, %land.rhs, %do.body, %while.cond27.preheader
  ret i8* %dest, !dbg !75

; uselistorder directives
  uselistorder i64 %16, { 1, 3, 0, 2 }
  uselistorder i8* %dest.addr.476, { 1, 0 }
  uselistorder i8* %lsr.iv103, { 1, 0 }
  uselistorder i64 %shr, { 1, 0 }
  uselistorder i8* %lsr.iv, { 1, 0 }
  uselistorder i64 %13, { 0, 2, 1, 3 }
  uselistorder i32 %lsr.iv106, { 1, 0 }
  uselistorder i64 %lsr.iv107, { 2, 0, 1 }
  uselistorder i64 8, { 0, 2, 3, 1 }
  uselistorder i64 1, { 1, 2, 3, 4, 0 }
  uselistorder i8 0, { 2, 0, 1, 3 }
  uselistorder i64 0, { 2, 1, 0, 3 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 13, 14, 10, 1, 0, 11, 12, 9, 4, 3, 5, 6, 7, 2, 16, 15, 17, 18, 8, 19, 22, 21, 20, 23, 24, 25, 27, 26, 30, 28, 29 }
  uselistorder i8* %src, { 2, 1, 0, 3 }
  uselistorder i8* %dest, { 5, 4, 3, 1, 0, 2, 6 }
  uselistorder label %cleanup, { 2, 3, 1, 0 }
  uselistorder label %if.end34, { 1, 0 }
  uselistorder label %do.body, { 1, 0 }
  uselistorder label %while.cond8, { 1, 0 }
  uselistorder label %while.cond, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/paper_ex/paper_ex_dst.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/paper_ex")
!2 = !{}
!3 = !{!4, !5, !7, !9}
!4 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !6, line: 256, baseType: !4)
!6 = !DIFile(filename: "llvm-project/build/lib/clang/12.0.0/include/stdint.h", directory: "/home/adityanathan/superopt-project")
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!14 = distinct !DISubprogram(name: "strcpy", scope: !15, file: !15, line: 4, type: !16, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!15 = !DIFile(filename: "paper_ex/paper_ex_dst.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18, !20}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!22 = !{!23, !24, !25, !26, !28}
!23 = !DILocalVariable(name: "dest", arg: 1, scope: !14, file: !15, line: 4, type: !18)
!24 = !DILocalVariable(name: "src", arg: 2, scope: !14, file: !15, line: 4, type: !20)
!25 = !DILocalVariable(name: "res", scope: !14, file: !15, line: 6, type: !18)
!26 = !DILocalVariable(name: "tmp", scope: !14, file: !15, line: 7, type: !27)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DILocalVariable(name: "l", scope: !14, file: !15, line: 8, type: !4)
!29 = !DILocation(line: 0, scope: !14)
!30 = !DILocation(line: 10, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !14, file: !15, line: 10, column: 9)
!32 = !DILocation(line: 10, column: 9, scope: !14)
!33 = !DILocation(line: 11, column: 7, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !15, line: 10, column: 31)
!35 = !DILocation(line: 11, column: 29, scope: !34)
!36 = !DILocation(line: 11, column: 25, scope: !34)
!37 = !DILocation(line: 11, column: 23, scope: !34)
!38 = distinct !{!38, !33, !39, !40}
!39 = !DILocation(line: 11, column: 33, scope: !34)
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !DILocation(line: 15, column: 16, scope: !42)
!42 = distinct !DILexicalBlock(scope: !14, file: !15, line: 15, column: 9)
!43 = !DILocation(line: 15, column: 14, scope: !42)
!44 = !DILocation(line: 15, column: 9, scope: !14)
!45 = !DILocation(line: 16, column: 7, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !15, line: 15, column: 33)
!47 = !DILocation(line: 16, column: 17, scope: !46)
!48 = !DILocation(line: 16, column: 20, scope: !46)
!49 = !DILocation(line: 16, column: 38, scope: !46)
!50 = !DILocation(line: 16, column: 34, scope: !46)
!51 = !DILocation(line: 16, column: 29, scope: !46)
!52 = !DILocation(line: 16, column: 32, scope: !46)
!53 = distinct !{!53, !45, !54, !40}
!54 = !DILocation(line: 16, column: 42, scope: !46)
!55 = !DILocation(line: 21, column: 11, scope: !56)
!56 = distinct !DILexicalBlock(scope: !14, file: !15, line: 20, column: 15)
!57 = !DILocation(line: 22, column: 15, scope: !58)
!58 = distinct !DILexicalBlock(scope: !56, file: !15, line: 22, column: 11)
!59 = !DILocation(line: 22, column: 29, scope: !58)
!60 = !DILocation(line: 22, column: 35, scope: !58)
!61 = !DILocation(line: 22, column: 11, scope: !56)
!62 = !DILocation(line: 20, column: 5, scope: !14)
!63 = !DILocation(line: 23, column: 29, scope: !64)
!64 = distinct !DILexicalBlock(scope: !58, file: !15, line: 22, column: 50)
!65 = !DILocation(line: 23, column: 27, scope: !64)
!66 = !DILocation(line: 23, column: 11, scope: !64)
!67 = !DILocation(line: 23, column: 38, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !15, line: 23, column: 38)
!69 = distinct !{!69, !66, !70, !40}
!70 = !DILocation(line: 23, column: 38, scope: !64)
!71 = !DILocation(line: 26, column: 29, scope: !56)
!72 = !DILocation(line: 28, column: 10, scope: !56)
!73 = distinct !{!73, !62, !74, !40}
!74 = !DILocation(line: 29, column: 5, scope: !14)
!75 = !DILocation(line: 30, column: 1, scope: !14)
