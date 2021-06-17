; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/dietlibc/memchr_dst.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/dietlibc/memchr_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i8* @memchr(i8* readonly %s, i32 %c, i32 %n) local_unnamed_addr #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !20, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 %c, metadata !21, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 %n, metadata !22, metadata !DIExpression()), !dbg !28
  %cmp.not = icmp eq i32 %n, 0, !dbg !29
  br i1 %cmp.not, label %return, label %do.body.preheader, !dbg !30

do.body.preheader:                                ; preds = %entry
  %0 = trunc i32 %c to i8, !dbg !31
  br label %do.body, !dbg !34

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %n.addr.0 = phi i32 [ %dec, %do.cond ], [ %n, %do.body.preheader ]
  %p.0 = phi i8* [ %incdec.ptr, %do.cond ], [ %s, %do.body.preheader ], !dbg !35
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !23, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.value(metadata i32 %n.addr.0, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !35
  %1 = load i8, i8* %p.0, align 1, !dbg !36
  %cmp3 = icmp eq i8 %1, %0, !dbg !37
  br i1 %cmp3, label %return, label %do.cond, !dbg !38

do.cond:                                          ; preds = %do.body
  %incdec.ptr = getelementptr i8, i8* %p.0, i64 1, !dbg !39
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !23, metadata !DIExpression()), !dbg !35
  %dec = add i32 %n.addr.0, -1, !dbg !40
  call void @llvm.dbg.value(metadata i32 %dec, metadata !22, metadata !DIExpression()), !dbg !28
  %cmp6.not = icmp eq i32 %dec, 0, !dbg !41
  br i1 %cmp6.not, label %return, label %do.body, !dbg !42, !llvm.loop !43

return:                                           ; preds = %do.cond, %do.body, %entry
  %retval.1 = phi i8* [ null, %entry ], [ null, %do.cond ], [ %p.0, %do.body ], !dbg !28
  ret i8* %retval.1, !dbg !46

; uselistorder directives
  uselistorder i8* %p.0, { 0, 2, 1 }
  uselistorder label %do.body, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #1 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !54, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i8** %argv, metadata !55, metadata !DIExpression()), !dbg !56
  ret i32 0, !dbg !57

; uselistorder directives
  uselistorder i32 0, { 1, 0, 2 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 2, 1, 3, 0, 4, 6, 5, 7, 9, 8 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/dietlibc/memchr_dst.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/dietlibc")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!10 = distinct !DISubprogram(name: "memchr", scope: !11, file: !11, line: 4, type: !12, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!11 = !DIFile(filename: "dietlibc/memchr_dst.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!12 = !DISubroutineType(types: !13)
!13 = !{!5, !14, !16, !17}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 2, baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23}
!20 = !DILocalVariable(name: "s", arg: 1, scope: !10, file: !11, line: 4, type: !14)
!21 = !DILocalVariable(name: "c", arg: 2, scope: !10, file: !11, line: 4, type: !16)
!22 = !DILocalVariable(name: "n", arg: 3, scope: !10, file: !11, line: 4, type: !17)
!23 = !DILocalVariable(name: "p", scope: !24, file: !11, line: 7, type: !26)
!24 = distinct !DILexicalBlock(scope: !25, file: !11, line: 6, column: 14)
!25 = distinct !DILexicalBlock(scope: !10, file: !11, line: 6, column: 6)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!28 = !DILocation(line: 0, scope: !10)
!29 = !DILocation(line: 6, column: 8, scope: !25)
!30 = !DILocation(line: 6, column: 6, scope: !10)
!31 = !DILocation(line: 0, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !11, line: 10, column: 8)
!33 = distinct !DILexicalBlock(scope: !24, file: !11, line: 9, column: 6)
!34 = !DILocation(line: 9, column: 3, scope: !24)
!35 = !DILocation(line: 0, scope: !24)
!36 = !DILocation(line: 10, column: 8, scope: !32)
!37 = !DILocation(line: 10, column: 13, scope: !32)
!38 = !DILocation(line: 10, column: 8, scope: !33)
!39 = !DILocation(line: 10, column: 10, scope: !32)
!40 = !DILocation(line: 12, column: 12, scope: !24)
!41 = !DILocation(line: 12, column: 16, scope: !24)
!42 = !DILocation(line: 12, column: 3, scope: !33)
!43 = distinct !{!43, !34, !44, !45}
!44 = !DILocation(line: 12, column: 20, scope: !24)
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !DILocation(line: 15, column: 1, scope: !10)
!47 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 18, type: !48, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !53)
!48 = !DISubroutineType(types: !49)
!49 = !{!16, !16, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!54, !55}
!54 = !DILocalVariable(name: "argc", arg: 1, scope: !47, file: !11, line: 18, type: !16)
!55 = !DILocalVariable(name: "argv", arg: 2, scope: !47, file: !11, line: 18, type: !50)
!56 = !DILocation(line: 0, scope: !47)
!57 = !DILocation(line: 23, column: 3, scope: !47)
