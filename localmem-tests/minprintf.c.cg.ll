; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/localmem-tests/minprintf.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/localmem-tests/minprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind
define dso_local void @minprintf(i8* nocapture readonly %fmt, ...) local_unnamed_addr #0 !dbg !7 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !14, metadata !DIExpression()), !dbg !34
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #3, !dbg !35
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !15, metadata !DIExpression()), !dbg !36
  call void @llvm.va_start(i8* nonnull %0), !dbg !37
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !30, metadata !DIExpression()), !dbg !34
  br label %for.cond, !dbg !38

for.cond:                                         ; preds = %for.inc26, %entry
  %p.0 = phi i8* [ %fmt, %entry ], [ %incdec.ptr27, %for.inc26 ], !dbg !40
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !30, metadata !DIExpression()), !dbg !34
  %1 = load i8, i8* %p.0, align 1, !dbg !41
  %conv = sext i8 %1 to i32, !dbg !43
  switch i8 %1, label %if.then [
    i8 0, label %for.end28
    i8 37, label %if.end
  ], !dbg !46

if.then:                                          ; preds = %for.cond
  %call = call i32 (i32, ...) bitcast (i32 (...)* @MYmyprint_char to i32 (i32, ...)*)(i32 %conv) #5, !dbg !47
  br label %for.inc26, !dbg !49

if.end:                                           ; preds = %for.cond
  %incdec.ptr = getelementptr i8, i8* %p.0, i64 1, !dbg !50
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !30, metadata !DIExpression()), !dbg !34
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !51
  %conv4 = sext i8 %2 to i32, !dbg !51
  switch i32 %conv4, label %cleanup [
    i32 100, label %sw.bb
    i32 115, label %sw.bb7
  ], !dbg !52

sw.bb:                                            ; preds = %if.end
  %3 = bitcast [1 x %struct.__va_list_tag]* %ap to i32*, !dbg !53
  %gp_offset = load i32, i32* %3, align 16, !dbg !56
  %4 = zext i32 %gp_offset to i64, !dbg !56
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !56
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !56

vaarg.in_reg:                                     ; preds = %sw.bb
  %5 = trunc i64 %4 to i32
  %6 = bitcast [1 x %struct.__va_list_tag]* %ap to i32*, !dbg !53
  %7 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !56
  %sunkaddr = getelementptr inbounds i8, i8* %7, i64 16, !dbg !56
  %8 = bitcast i8* %sunkaddr to i8**, !dbg !56
  %reg_save_area = load i8*, i8** %8, align 16, !dbg !56
  %9 = getelementptr i8, i8* %reg_save_area, i64 %4, !dbg !56
  %10 = add nuw nsw i32 %5, 8, !dbg !56
  store i32 %10, i32* %6, align 16, !dbg !56
  br label %vaarg.end, !dbg !56

vaarg.in_mem:                                     ; preds = %sw.bb
  %11 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !56
  %sunkaddr48 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !56
  %12 = bitcast i8* %sunkaddr48 to i8**, !dbg !56
  %overflow_arg_area = load i8*, i8** %12, align 8, !dbg !56
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !56
  store i8* %overflow_arg_area.next, i8** %12, align 8, !dbg !56
  br label %vaarg.end, !dbg !56

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %9, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !56
  %13 = load i32, i32* %vaarg.addr, align 4, !dbg !56
  call void @llvm.dbg.value(metadata i32 %13, metadata !32, metadata !DIExpression()), !dbg !34
  %call6 = call i32 (i32, ...) bitcast (i32 (...)* @MYmyprint_int to i32 (i32, ...)*)(i32 %13) #5, !dbg !57
  br label %for.inc26, !dbg !58

sw.bb7:                                           ; preds = %if.end
  %14 = bitcast [1 x %struct.__va_list_tag]* %ap to i32*, !dbg !53
  %gp_offset10 = load i32, i32* %14, align 16, !dbg !59
  %15 = zext i32 %gp_offset10 to i64, !dbg !59
  %fits_in_gp11 = icmp ult i32 %gp_offset10, 41, !dbg !59
  br i1 %fits_in_gp11, label %vaarg.in_reg12, label %vaarg.in_mem14, !dbg !59

vaarg.in_reg12:                                   ; preds = %sw.bb7
  %16 = trunc i64 %15 to i32
  %17 = bitcast [1 x %struct.__va_list_tag]* %ap to i32*, !dbg !53
  %18 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !59
  %sunkaddr49 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !59
  %19 = bitcast i8* %sunkaddr49 to i8**, !dbg !59
  %reg_save_area13 = load i8*, i8** %19, align 16, !dbg !59
  %20 = getelementptr i8, i8* %reg_save_area13, i64 %15, !dbg !59
  %21 = add nuw nsw i32 %16, 8, !dbg !59
  store i32 %21, i32* %17, align 16, !dbg !59
  br label %vaarg.end18, !dbg !59

vaarg.in_mem14:                                   ; preds = %sw.bb7
  %22 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !59
  %sunkaddr50 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !59
  %23 = bitcast i8* %sunkaddr50 to i8**, !dbg !59
  %overflow_arg_area16 = load i8*, i8** %23, align 8, !dbg !59
  %overflow_arg_area.next17 = getelementptr i8, i8* %overflow_arg_area16, i64 8, !dbg !59
  store i8* %overflow_arg_area.next17, i8** %23, align 8, !dbg !59
  br label %vaarg.end18, !dbg !59

vaarg.end18:                                      ; preds = %vaarg.in_mem14, %vaarg.in_reg12
  %vaarg.addr19.in = phi i8* [ %20, %vaarg.in_reg12 ], [ %overflow_arg_area16, %vaarg.in_mem14 ]
  %vaarg.addr19 = bitcast i8* %vaarg.addr19.in to i8**, !dbg !59
  %24 = load i8*, i8** %vaarg.addr19, align 8, !dbg !59
  call void @llvm.dbg.value(metadata i8* %24, metadata !31, metadata !DIExpression()), !dbg !34
  %25 = load i8, i8* %24, align 1, !dbg !60
  %tobool21.not44 = icmp eq i8 %25, 0, !dbg !62
  br i1 %tobool21.not44, label %for.inc26, label %for.body22.preheader, !dbg !62

for.body22.preheader:                             ; preds = %vaarg.end18
  %scevgep = getelementptr i8, i8* %24, i64 1, !dbg !62
  br label %for.body22, !dbg !62

for.body22:                                       ; preds = %for.body22.preheader, %for.body22
  %lsr.iv = phi i8* [ %scevgep, %for.body22.preheader ], [ %scevgep46, %for.body22 ]
  %26 = phi i8 [ %27, %for.body22 ], [ %25, %for.body22.preheader ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !31, metadata !DIExpression()), !dbg !34
  %conv23 = sext i8 %26 to i32, !dbg !63
  %call24 = call i32 (i32, ...) bitcast (i32 (...)* @MYmyprint_char to i32 (i32, ...)*)(i32 %conv23) #5, !dbg !64
  call void @llvm.dbg.value(metadata i8* undef, metadata !31, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !34
  %27 = load i8, i8* %lsr.iv, align 1, !dbg !60
  %tobool21.not = icmp eq i8 %27, 0, !dbg !62
  %scevgep46 = getelementptr i8, i8* %lsr.iv, i64 1, !dbg !62
  br i1 %tobool21.not, label %for.inc26, label %for.body22, !dbg !62, !llvm.loop !65

for.inc26:                                        ; preds = %for.body22, %vaarg.end18, %vaarg.end, %if.then
  %p.1 = phi i8* [ %p.0, %if.then ], [ %incdec.ptr, %vaarg.end ], [ %incdec.ptr, %vaarg.end18 ], [ %incdec.ptr, %for.body22 ], !dbg !40
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !30, metadata !DIExpression()), !dbg !34
  %incdec.ptr27 = getelementptr i8, i8* %p.1, i64 1, !dbg !67
  call void @llvm.dbg.value(metadata i8* %incdec.ptr27, metadata !30, metadata !DIExpression()), !dbg !34
  br label %for.cond, !dbg !68, !llvm.loop !69

for.end28:                                        ; preds = %for.cond
  %28 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !35
  call void @llvm.va_end(i8* nonnull %28), !dbg !71
  br label %cleanup, !dbg !72

cleanup:                                          ; preds = %if.end, %for.end28
  %29 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !35
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %29) #3, !dbg !72
  ret void, !dbg !72

; uselistorder directives
  uselistorder i8 %27, { 1, 0 }
  uselistorder i8* %lsr.iv, { 1, 0 }
  uselistorder i64 %15, { 1, 0 }
  uselistorder i32 %gp_offset10, { 1, 0 }
  uselistorder i64 %4, { 1, 0 }
  uselistorder i32 %gp_offset, { 1, 0 }
  uselistorder [1 x %struct.__va_list_tag]* %ap, { 8, 9, 0, 1, 7, 6, 2, 3, 4, 5, 10 }
  uselistorder i64 8, { 3, 0, 2, 1 }
  uselistorder i32 41, { 1, 0 }
  uselistorder i64 1, { 2, 0, 1, 3 }
  uselistorder i8 0, { 2, 0, 1 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 4, 5, 1, 0, 2, 9, 3, 6, 7, 8 }
  uselistorder label %cleanup, { 1, 0 }
  uselistorder label %for.body22, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare dso_local i32 @MYmyprint_char(...) local_unnamed_addr #4

declare dso_local i32 @MYmyprint_int(...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 e9e62cf08636a61a96ae6bd6404a0900be4363e0)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/localmem-tests/minprintf.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/localmem-tests")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 e9e62cf08636a61a96ae6bd6404a0900be4363e0)"}
!7 = distinct !DISubprogram(name: "minprintf", scope: !8, file: !8, line: 5, type: !9, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DIFile(filename: "localmem-tests/minprintf.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, null}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14, !15, !30, !31, !32}
!14 = !DILocalVariable(name: "fmt", arg: 1, scope: !7, file: !8, line: 5, type: !11)
!15 = !DILocalVariable(name: "ap", scope: !7, file: !8, line: 7, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !17, line: 14, baseType: !18)
!17 = !DIFile(filename: "llvm-project/build/lib/clang/12.0.0/include/stdarg.h", directory: "/home/adityanathan/superopt-project")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 7, baseType: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 192, elements: !28)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 7, size: 192, elements: !21)
!21 = !{!22, !24, !25, !27}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !20, file: !1, line: 7, baseType: !23, size: 32)
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !20, file: !1, line: 7, baseType: !23, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !20, file: !1, line: 7, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !20, file: !1, line: 7, baseType: !26, size: 64, offset: 128)
!28 = !{!29}
!29 = !DISubrange(count: 1)
!30 = !DILocalVariable(name: "p", scope: !7, file: !8, line: 8, type: !11)
!31 = !DILocalVariable(name: "sval", scope: !7, file: !8, line: 8, type: !11)
!32 = !DILocalVariable(name: "ival", scope: !7, file: !8, line: 9, type: !33)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DILocation(line: 0, scope: !7)
!35 = !DILocation(line: 7, column: 3, scope: !7)
!36 = !DILocation(line: 7, column: 11, scope: !7)
!37 = !DILocation(line: 12, column: 3, scope: !7)
!38 = !DILocation(line: 14, column: 8, scope: !39)
!39 = distinct !DILexicalBlock(scope: !7, file: !8, line: 14, column: 3)
!40 = !DILocation(line: 0, scope: !39)
!41 = !DILocation(line: 14, column: 17, scope: !42)
!42 = distinct !DILexicalBlock(scope: !39, file: !8, line: 14, column: 3)
!43 = !DILocation(line: 16, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !8, line: 16, column: 9)
!45 = distinct !DILexicalBlock(scope: !42, file: !8, line: 14, column: 26)
!46 = !DILocation(line: 14, column: 3, scope: !39)
!47 = !DILocation(line: 17, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !8, line: 16, column: 20)
!49 = !DILocation(line: 18, column: 7, scope: !48)
!50 = !DILocation(line: 20, column: 14, scope: !45)
!51 = !DILocation(line: 20, column: 13, scope: !45)
!52 = !DILocation(line: 20, column: 5, scope: !45)
!53 = !DILocation(line: 0, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !8, line: 30, column: 9)
!55 = distinct !DILexicalBlock(scope: !45, file: !8, line: 20, column: 19)
!56 = !DILocation(line: 22, column: 16, scope: !55)
!57 = !DILocation(line: 23, column: 9, scope: !55)
!58 = !DILocation(line: 24, column: 9, scope: !55)
!59 = !DILocation(line: 30, column: 21, scope: !54)
!60 = !DILocation(line: 30, column: 41, scope: !61)
!61 = distinct !DILexicalBlock(scope: !54, file: !8, line: 30, column: 9)
!62 = !DILocation(line: 30, column: 9, scope: !54)
!63 = !DILocation(line: 31, column: 26, scope: !61)
!64 = !DILocation(line: 31, column: 11, scope: !61)
!65 = distinct !{!65, !62, !66}
!66 = !DILocation(line: 31, column: 31, scope: !54)
!67 = !DILocation(line: 14, column: 22, scope: !42)
!68 = !DILocation(line: 14, column: 3, scope: !42)
!69 = distinct !{!69, !46, !70}
!70 = !DILocation(line: 36, column: 3, scope: !39)
!71 = !DILocation(line: 37, column: 3, scope: !7)
!72 = !DILocation(line: 38, column: 1, scope: !7)
