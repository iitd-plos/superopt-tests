; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/localmem-tests/dprintf.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/localmem-tests/dprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PAGE_SIZE = dso_local local_unnamed_addr constant i64 4096, align 8, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"mmap of a spare page failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"overflow\0A\00", align 1
@dbgptr = external dso_local local_unnamed_addr global void (i32)*, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1

; Function Attrs: nofree noinline norecurse nounwind writeonly
define dso_local i8* @simple_ltoa(i8* %local, i64 %i) local_unnamed_addr #0 !dbg !17 {
entry:
  call void @llvm.dbg.value(metadata i8* %local, metadata !23, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i64 %i, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %local, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 22, DW_OP_stack_value)), !dbg !28
  %incdec.ptr = getelementptr i8, i8* %local, i64 21, !dbg !29
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !25, metadata !DIExpression()), !dbg !28
  store i8 0, i8* %incdec.ptr, align 1, !dbg !30
  br label %do.body, !dbg !31

do.body:                                          ; preds = %do.body, %entry
  %p.0 = phi i8* [ %incdec.ptr, %entry ], [ %incdec.ptr3, %do.body ], !dbg !28
  %i.addr.0 = phi i64 [ %i, %entry ], [ %div, %do.body ]
  call void @llvm.dbg.value(metadata i64 %i.addr.0, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem = urem i64 %i.addr.0, 10, !dbg !32
  %conv = trunc i64 %rem to i8, !dbg !32
  call void @llvm.dbg.value(metadata i64 %rem, metadata !26, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !33
  %add = or i8 %conv, 48, !dbg !34
  %incdec.ptr3 = getelementptr i8, i8* %p.0, i64 -1, !dbg !35
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3, metadata !25, metadata !DIExpression()), !dbg !28
  %scevgep = getelementptr i8, i8* %p.0, i64 -1, !dbg !36
  store i8 %add, i8* %scevgep, align 1, !dbg !36
  %div = udiv i64 %i.addr.0, 10, !dbg !37
  call void @llvm.dbg.value(metadata i64 %div, metadata !24, metadata !DIExpression()), !dbg !28
  %0 = icmp ult i64 %i.addr.0, 10, !dbg !38
  br i1 %0, label %do.end, label %do.body, !dbg !39, !llvm.loop !40

do.end:                                           ; preds = %do.body
  ret i8* %incdec.ptr3, !dbg !42
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline norecurse nounwind writeonly
define dso_local i8* @simple_ltoahex(i8* %local, i64 %i) local_unnamed_addr #0 !dbg !43 {
entry:
  call void @llvm.dbg.value(metadata i8* %local, metadata !45, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i64 %i, metadata !46, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i8* %local, metadata !47, metadata !DIExpression(DW_OP_plus_uconst, 22, DW_OP_stack_value)), !dbg !50
  %incdec.ptr = getelementptr i8, i8* %local, i64 21, !dbg !51
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !47, metadata !DIExpression()), !dbg !50
  store i8 0, i8* %incdec.ptr, align 1, !dbg !52
  br label %do.body, !dbg !53

do.body:                                          ; preds = %if.end, %entry
  %p.0 = phi i8* [ %incdec.ptr, %entry ], [ %p.1, %if.end ], !dbg !50
  %i.addr.0 = phi i64 [ %i, %entry ], [ %shr, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.addr.0, metadata !46, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !47, metadata !DIExpression()), !dbg !50
  %0 = trunc i64 %i.addr.0 to i32, !dbg !54
  %conv = and i32 %0, 15, !dbg !54
  call void @llvm.dbg.value(metadata i32 %conv, metadata !48, metadata !DIExpression()), !dbg !55
  %cmp = icmp ult i32 %conv, 10, !dbg !56
  %1 = trunc i32 %conv to i8, !dbg !58
  br i1 %cmp, label %if.then, label %if.else, !dbg !59

if.then:                                          ; preds = %do.body
  %conv4 = or i8 %1, 48, !dbg !60
  %incdec.ptr5 = getelementptr i8, i8* %p.0, i64 -1, !dbg !61
  call void @llvm.dbg.value(metadata i8* %incdec.ptr5, metadata !47, metadata !DIExpression()), !dbg !50
  store i8 %conv4, i8* %incdec.ptr5, align 1, !dbg !62
  br label %if.end, !dbg !63

if.else:                                          ; preds = %do.body
  %conv8 = add nuw nsw i8 %1, 87, !dbg !64
  %incdec.ptr9 = getelementptr i8, i8* %p.0, i64 -1, !dbg !65
  call void @llvm.dbg.value(metadata i8* %incdec.ptr9, metadata !47, metadata !DIExpression()), !dbg !50
  store i8 %conv8, i8* %incdec.ptr9, align 1, !dbg !66
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %p.1 = phi i8* [ %incdec.ptr5, %if.then ], [ %incdec.ptr9, %if.else ], !dbg !58
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !47, metadata !DIExpression()), !dbg !50
  %shr = lshr i64 %i.addr.0, 4, !dbg !67
  call void @llvm.dbg.value(metadata i64 %shr, metadata !46, metadata !DIExpression()), !dbg !50
  %cmp10.not = icmp eq i64 %shr, 0, !dbg !68
  br i1 %cmp10.not, label %do.end, label %do.body, !dbg !69, !llvm.loop !70

do.end:                                           ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !47, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !47, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !47, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !47, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !47, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !47, metadata !DIExpression()), !dbg !50
  %incdec.ptr12 = getelementptr i8, i8* %p.0, i64 -2, !dbg !72
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12, metadata !47, metadata !DIExpression()), !dbg !50
  store i8 120, i8* %incdec.ptr12, align 1, !dbg !73
  %incdec.ptr13 = getelementptr i8, i8* %p.0, i64 -3, !dbg !74
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13, metadata !47, metadata !DIExpression()), !dbg !50
  store i8 48, i8* %incdec.ptr13, align 1, !dbg !75
  ret i8* %incdec.ptr13, !dbg !76

; uselistorder directives
  uselistorder i64 %i.addr.0, { 1, 0 }
  uselistorder i8 48, { 2, 0, 1 }
}

; Function Attrs: noinline nounwind
define dso_local void @dprintf_(i32 %fd, i8* %fmt, ...) local_unnamed_addr #3 !dbg !77 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %tmp = alloca [22 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %fd, metadata !84, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !85, metadata !DIExpression()), !dbg !109
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !110
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !87, metadata !DIExpression()), !dbg !111
  %1 = bitcast [22 x i8]* %tmp to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 22, i8* nonnull %1) #7, !dbg !112
  call void @llvm.dbg.declare(metadata [22 x i8]* %tmp, metadata !105, metadata !DIExpression()), !dbg !113
  %tobool.not = icmp eq i8* %fmt, null, !dbg !114
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !116

if.end:                                           ; preds = %entry
  %call = call i8* @MYmycalloc(i64 4096, i64 1) #8, !dbg !117
  call void @llvm.dbg.value(metadata i8* %call, metadata !104, metadata !DIExpression()), !dbg !109
  %cmp = icmp eq i8* %call, null, !dbg !118
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !120

if.then1:                                         ; preds = %if.end
  %call2 = call i64 @write(i32 %fd, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 29) #8, !dbg !121
  call void @_exit(i32 20) #8, !dbg !123
  br label %if.end3, !dbg !124

if.end3:                                          ; preds = %if.then1, %if.end
  call void @llvm.dbg.value(metadata i8* %call, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* %call, metadata !101, metadata !DIExpression()), !dbg !109
  %call4 = call i64 @strlen(i8* nonnull %fmt) #9, !dbg !125
  %cmp5 = icmp ugt i64 %call4, 4094, !dbg !127
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !128

if.then6:                                         ; preds = %if.end3
  %call7 = call i64 @write(i32 %fd, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 11) #8, !dbg !129
  call void @_exit(i32 20) #8, !dbg !131
  br label %if.end8, !dbg !132

if.end8:                                          ; preds = %if.then6, %if.end3
  %2 = icmp eq i8* %call, null, !dbg !118
  %3 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !110
  %call9 = call i8* @strcpy(i8* %call, i8* nonnull %fmt) #8, !dbg !133
  call void @llvm.va_start(i8* nonnull %3), !dbg !134
  call void @llvm.dbg.value(metadata i8* %call, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* %call, metadata !101, metadata !DIExpression()), !dbg !109
  br i1 %2, label %while.end68, label %while.body.lr.ph, !dbg !135

while.body.lr.ph:                                 ; preds = %if.end8
  br label %while.body, !dbg !135

while.body:                                       ; preds = %while.body.lr.ph, %if.end67
  %ptr.0105 = phi i8* [ %call, %while.body.lr.ph ], [ %lsr.iv, %if.end67 ]
  call void @llvm.dbg.value(metadata i8* %ptr.0105, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* %ptr.0105, metadata !101, metadata !DIExpression()), !dbg !109
  %4 = load void (i32)*, void (i32)** @dbgptr, align 8, !dbg !136
  call void %4(i32 74) #8, !dbg !136
  %scevgep = getelementptr i8, i8* %ptr.0105, i64 2, !dbg !138
  br label %while.cond12, !dbg !138

while.cond12:                                     ; preds = %while.body17, %while.body
  %lsr.iv = phi i8* [ %scevgep118, %while.body17 ], [ %scevgep, %while.body ], !dbg !109
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression()), !dbg !109
  %scevgep121 = getelementptr i8, i8* %lsr.iv, i64 -2, !dbg !139
  %5 = load i8, i8* %scevgep121, align 1, !dbg !139
  switch i8 %5, label %while.body17 [
    i8 37, label %if.then21
    i8 0, label %if.end67.thread
  ], !dbg !140

while.body17:                                     ; preds = %while.cond12
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !109
  %scevgep118 = getelementptr i8, i8* %lsr.iv, i64 1, !dbg !138
  br label %while.cond12, !dbg !138, !llvm.loop !141

if.then21:                                        ; preds = %while.cond12
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !109
  %scevgep119 = getelementptr i8, i8* %lsr.iv, i64 -2, !dbg !143
  %scevgep120 = getelementptr i8, i8* %lsr.iv, i64 -1, !dbg !143
  store i8 0, i8* %scevgep119, align 1, !dbg !143
  %call23 = call i64 @strlen(i8* nonnull %ptr.0105) #9, !dbg !146
  %call24 = call i64 @write(i32 %fd, i8* nonnull %ptr.0105, i64 %call23) #8, !dbg !147
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !109
  %6 = load i8, i8* %scevgep120, align 1, !dbg !148
  %conv26 = sext i8 %6 to i32, !dbg !148
  switch i32 %conv26, label %if.end67 [
    i32 115, label %sw.bb
    i32 105, label %sw.bb31
    i32 100, label %sw.bb31
    i32 120, label %sw.bb47
    i32 112, label %sw.bb47
  ], !dbg !149

sw.bb:                                            ; preds = %if.then21
  %7 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !150
  %gp_offset = load i32, i32* %7, align 16, !dbg !153
  %8 = zext i32 %gp_offset to i64, !dbg !153
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !153
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !153

vaarg.in_reg:                                     ; preds = %sw.bb
  %9 = trunc i64 %8 to i32
  %10 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !150
  %11 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !153
  %sunkaddr = getelementptr inbounds i8, i8* %11, i64 16, !dbg !153
  %12 = bitcast i8* %sunkaddr to i8**, !dbg !153
  %reg_save_area = load i8*, i8** %12, align 16, !dbg !153
  %13 = getelementptr i8, i8* %reg_save_area, i64 %8, !dbg !153
  %14 = add nuw nsw i32 %9, 8, !dbg !153
  store i32 %14, i32* %10, align 16, !dbg !153
  br label %vaarg.end, !dbg !153

vaarg.in_mem:                                     ; preds = %sw.bb
  %15 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !153
  %sunkaddr123 = getelementptr inbounds i8, i8* %15, i64 8, !dbg !153
  %16 = bitcast i8* %sunkaddr123 to i8**, !dbg !153
  %overflow_arg_area = load i8*, i8** %16, align 8, !dbg !153
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !153
  store i8* %overflow_arg_area.next, i8** %16, align 8, !dbg !153
  br label %vaarg.end, !dbg !153

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %13, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !153
  %17 = load i8*, i8** %vaarg.addr, align 8, !dbg !153
  call void @llvm.dbg.value(metadata i8* %17, metadata !103, metadata !DIExpression()), !dbg !109
  %tobool28.not = icmp eq i8* %17, null, !dbg !154
  %spec.store.select = select i1 %tobool28.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %17, !dbg !156
  call void @llvm.dbg.value(metadata i8* %spec.store.select, metadata !103, metadata !DIExpression()), !dbg !109
  br label %if.end67, !dbg !157

sw.bb31:                                          ; preds = %if.then21, %if.then21
  %18 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !150
  %gp_offset34 = load i32, i32* %18, align 16, !dbg !158
  %19 = zext i32 %gp_offset34 to i64, !dbg !158
  %fits_in_gp35 = icmp ult i32 %gp_offset34, 41, !dbg !158
  br i1 %fits_in_gp35, label %vaarg.in_reg36, label %vaarg.in_mem38, !dbg !158

vaarg.in_reg36:                                   ; preds = %sw.bb31
  %20 = trunc i64 %19 to i32
  %21 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !150
  %22 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !158
  %sunkaddr124 = getelementptr inbounds i8, i8* %22, i64 16, !dbg !158
  %23 = bitcast i8* %sunkaddr124 to i8**, !dbg !158
  %reg_save_area37 = load i8*, i8** %23, align 16, !dbg !158
  %24 = getelementptr i8, i8* %reg_save_area37, i64 %19, !dbg !158
  %25 = add nuw nsw i32 %20, 8, !dbg !158
  store i32 %25, i32* %21, align 16, !dbg !158
  br label %vaarg.end42, !dbg !158

vaarg.in_mem38:                                   ; preds = %sw.bb31
  %26 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !158
  %sunkaddr125 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !158
  %27 = bitcast i8* %sunkaddr125 to i8**, !dbg !158
  %overflow_arg_area40 = load i8*, i8** %27, align 8, !dbg !158
  %overflow_arg_area.next41 = getelementptr i8, i8* %overflow_arg_area40, i64 8, !dbg !158
  store i8* %overflow_arg_area.next41, i8** %27, align 8, !dbg !158
  br label %vaarg.end42, !dbg !158

vaarg.end42:                                      ; preds = %vaarg.in_mem38, %vaarg.in_reg36
  %vaarg.addr43.in = phi i8* [ %24, %vaarg.in_reg36 ], [ %overflow_arg_area40, %vaarg.in_mem38 ]
  %28 = bitcast [22 x i8]* %tmp to i8*, !dbg !112
  %vaarg.addr43 = bitcast i8* %vaarg.addr43.in to i32*, !dbg !158
  %29 = load i32, i32* %vaarg.addr43, align 4, !dbg !158
  call void @llvm.dbg.value(metadata i32 %29, metadata !86, metadata !DIExpression()), !dbg !109
  %conv45 = sext i32 %29 to i64, !dbg !160
  %call46 = call i8* @simple_ltoa(i8* nonnull %28, i64 %conv45) #10, !dbg !161
  call void @llvm.dbg.value(metadata i8* %call46, metadata !103, metadata !DIExpression()), !dbg !109
  br label %if.end67, !dbg !162

sw.bb47:                                          ; preds = %if.then21, %if.then21
  %30 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !150
  %gp_offset50 = load i32, i32* %30, align 16, !dbg !163
  %31 = zext i32 %gp_offset50 to i64, !dbg !163
  %fits_in_gp51 = icmp ult i32 %gp_offset50, 41, !dbg !163
  br i1 %fits_in_gp51, label %vaarg.in_reg52, label %vaarg.in_mem54, !dbg !163

vaarg.in_reg52:                                   ; preds = %sw.bb47
  %32 = trunc i64 %31 to i32
  %33 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !150
  %34 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !163
  %sunkaddr126 = getelementptr inbounds i8, i8* %34, i64 16, !dbg !163
  %35 = bitcast i8* %sunkaddr126 to i8**, !dbg !163
  %reg_save_area53 = load i8*, i8** %35, align 16, !dbg !163
  %36 = getelementptr i8, i8* %reg_save_area53, i64 %31, !dbg !163
  %37 = add nuw nsw i32 %32, 8, !dbg !163
  store i32 %37, i32* %33, align 16, !dbg !163
  br label %vaarg.end58, !dbg !163

vaarg.in_mem54:                                   ; preds = %sw.bb47
  %38 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !163
  %sunkaddr127 = getelementptr inbounds i8, i8* %38, i64 8, !dbg !163
  %39 = bitcast i8* %sunkaddr127 to i8**, !dbg !163
  %overflow_arg_area56 = load i8*, i8** %39, align 8, !dbg !163
  %overflow_arg_area.next57 = getelementptr i8, i8* %overflow_arg_area56, i64 8, !dbg !163
  store i8* %overflow_arg_area.next57, i8** %39, align 8, !dbg !163
  br label %vaarg.end58, !dbg !163

vaarg.end58:                                      ; preds = %vaarg.in_mem54, %vaarg.in_reg52
  %vaarg.addr59.in = phi i8* [ %36, %vaarg.in_reg52 ], [ %overflow_arg_area56, %vaarg.in_mem54 ]
  %40 = bitcast [22 x i8]* %tmp to i8*, !dbg !112
  %vaarg.addr59 = bitcast i8* %vaarg.addr59.in to i32*, !dbg !163
  %41 = load i32, i32* %vaarg.addr59, align 4, !dbg !163
  call void @llvm.dbg.value(metadata i32 %41, metadata !86, metadata !DIExpression()), !dbg !109
  %conv61 = sext i32 %41 to i64, !dbg !164
  %call62 = call i8* @simple_ltoahex(i8* nonnull %40, i64 %conv61) #10, !dbg !165
  call void @llvm.dbg.value(metadata i8* %call62, metadata !103, metadata !DIExpression()), !dbg !109
  br label %if.end67, !dbg !166

if.end67.thread:                                  ; preds = %while.cond12
  call void @llvm.dbg.value(metadata i8* %ptr.0105, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* %ptr.0105, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* %ptr.0105, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* %ptr.0105, metadata !101, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression()), !dbg !109
  %call65 = call i64 @strlen(i8* nonnull %ptr.0105) #9, !dbg !167
  %call66 = call i64 @write(i32 %fd, i8* nonnull %ptr.0105, i64 %call65) #8, !dbg !169
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !109
  call void @llvm.dbg.value(metadata i8* undef, metadata !101, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !109
  br label %while.end68, !dbg !135

if.end67:                                         ; preds = %vaarg.end, %vaarg.end42, %vaarg.end58, %if.then21
  %string.0 = phi i8* [ %call62, %vaarg.end58 ], [ %call46, %vaarg.end42 ], [ %spec.store.select, %vaarg.end ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %if.then21 ], !dbg !170
  call void @llvm.dbg.value(metadata i8* %string.0, metadata !103, metadata !DIExpression()), !dbg !109
  %call63 = call i64 @strlen(i8* %string.0) #9, !dbg !171
  %call64 = call i64 @write(i32 %fd, i8* %string.0, i64 %call63) #8, !dbg !172
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !109
  call void @llvm.dbg.value(metadata i8* undef, metadata !101, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !109
  %tobool11.not = icmp eq i8* %lsr.iv, null, !dbg !135
  br i1 %tobool11.not, label %while.end68, label %while.body, !dbg !135, !llvm.loop !173

while.end68:                                      ; preds = %if.end67, %if.end67.thread, %if.end8
  call void @MYmyfree(i8* %call) #8, !dbg !175
  br label %cleanup, !dbg !176

cleanup:                                          ; preds = %entry, %while.end68
  %42 = bitcast [22 x i8]* %tmp to i8*, !dbg !112
  %43 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !110
  call void @llvm.lifetime.end.p0i8(i64 22, i8* nonnull %42) #7, !dbg !177
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %43) #7, !dbg !177
  ret void, !dbg !177

; uselistorder directives
  uselistorder i8* %string.0, { 1, 0 }
  uselistorder i64 %31, { 1, 0 }
  uselistorder i32 %gp_offset50, { 1, 0 }
  uselistorder i64 %19, { 1, 0 }
  uselistorder i32 %gp_offset34, { 1, 0 }
  uselistorder i8* %17, { 1, 0 }
  uselistorder i64 %8, { 1, 0 }
  uselistorder i32 %gp_offset, { 1, 0 }
  uselistorder i8* %lsr.iv, { 3, 1, 2, 5, 0, 4 }
  uselistorder i8* %ptr.0105, { 1, 2, 4, 3, 0 }
  uselistorder i8* %call, { 4, 1, 3, 0, 2 }
  uselistorder [22 x i8]* %tmp, { 2, 0, 1, 3 }
  uselistorder [1 x %struct.__va_list_tag]* %args, { 12, 0, 1, 11, 10, 2, 3, 8, 9, 4, 5, 6, 7, 13, 14 }
  uselistorder i64 8, { 5, 0, 4, 1, 3, 2 }
  uselistorder i32 41, { 2, 1, 0 }
  uselistorder i64 -1, { 0, 3, 2, 1, 4 }
  uselistorder i8 0, { 1, 0, 2, 3 }
  uselistorder i64 -2, { 1, 0, 2 }
  uselistorder i64 (i8*)* @strlen, { 1, 0, 2, 3 }
  uselistorder i64 (i32, i8*, i64)* @write, { 1, 0, 2, 3, 4 }
  uselistorder i8* null, { 1, 2, 0, 3, 4 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 35, 34, 29, 11, 12, 18, 9, 4, 2, 0, 27, 28, 25, 26, 23, 24, 30, 31, 19, 13, 10, 5, 3, 1, 32, 33, 15, 14, 16, 17, 36, 37, 40, 38, 39, 42, 43, 22, 21, 20, 8, 7, 6, 44, 45, 41, 46, 53, 48, 47, 49, 50, 51, 52, 54, 55, 62, 57, 56, 58, 59, 60, 61 }
  uselistorder i8* %fmt, { 1, 0, 2 }
  uselistorder i32 %fd, { 3, 4, 2, 1, 0 }
  uselistorder label %cleanup, { 1, 0 }
  uselistorder label %if.end67, { 2, 1, 0, 3 }
  uselistorder label %while.body, { 1, 0 }
}

declare !dbg !178 dso_local i8* @MYmycalloc(i64, i64) local_unnamed_addr #4

declare !dbg !182 dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #4

declare !dbg !189 dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare !dbg !192 dso_local i64 @strlen(i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !196 dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare !dbg !199 dso_local void @MYmyfree(i8*) local_unnamed_addr #4

; Function Attrs: noinline nounwind
define dso_local i32 @main() local_unnamed_addr #3 !dbg !202 {
entry:
  call void (i32, i8*, ...) @dprintf_(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 2, i32 3) #10, !dbg !205
  ret i32 0, !dbg !206

; uselistorder directives
  uselistorder i64 0, { 1, 2, 3, 4, 5, 6, 7, 8, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "PAGE_SIZE", scope: !2, file: !8, line: 7, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 e9e62cf08636a61a96ae6bd6404a0900be4363e0)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/localmem-tests/dprintf.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/localmem-tests")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !DIFile(filename: "localmem-tests/dprintf.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 46, baseType: !12)
!11 = !DIFile(filename: "llvm-project/build/lib/clang/12.0.0/include/stddef.h", directory: "/home/adityanathan/superopt-project")
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 e9e62cf08636a61a96ae6bd6404a0900be4363e0)"}
!17 = distinct !DISubprogram(name: "simple_ltoa", scope: !8, file: !8, line: 12, type: !18, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !22)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20, !12}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23, !24, !25, !26}
!23 = !DILocalVariable(name: "local", arg: 1, scope: !17, file: !8, line: 12, type: !20)
!24 = !DILocalVariable(name: "i", arg: 2, scope: !17, file: !8, line: 12, type: !12)
!25 = !DILocalVariable(name: "p", scope: !17, file: !8, line: 16, type: !20)
!26 = !DILocalVariable(name: "temp", scope: !27, file: !8, line: 19, type: !21)
!27 = distinct !DILexicalBlock(scope: !17, file: !8, line: 18, column: 5)
!28 = !DILocation(line: 0, scope: !17)
!29 = !DILocation(line: 17, column: 3, scope: !17)
!30 = !DILocation(line: 17, column: 7, scope: !17)
!31 = !DILocation(line: 18, column: 2, scope: !17)
!32 = !DILocation(line: 20, column: 3, scope: !27)
!33 = !DILocation(line: 0, scope: !27)
!34 = !DILocation(line: 21, column: 14, scope: !27)
!35 = !DILocation(line: 21, column: 4, scope: !27)
!36 = !DILocation(line: 21, column: 8, scope: !27)
!37 = !DILocation(line: 22, column: 3, scope: !27)
!38 = !DILocation(line: 23, column: 13, scope: !17)
!39 = !DILocation(line: 23, column: 2, scope: !27)
!40 = distinct !{!40, !31, !41}
!41 = !DILocation(line: 23, column: 16, scope: !17)
!42 = !DILocation(line: 24, column: 2, scope: !17)
!43 = distinct !DISubprogram(name: "simple_ltoahex", scope: !8, file: !8, line: 27, type: !18, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !44)
!44 = !{!45, !46, !47, !48}
!45 = !DILocalVariable(name: "local", arg: 1, scope: !43, file: !8, line: 27, type: !20)
!46 = !DILocalVariable(name: "i", arg: 2, scope: !43, file: !8, line: 27, type: !12)
!47 = !DILocalVariable(name: "p", scope: !43, file: !8, line: 31, type: !20)
!48 = !DILocalVariable(name: "temp", scope: !49, file: !8, line: 34, type: !21)
!49 = distinct !DILexicalBlock(scope: !43, file: !8, line: 33, column: 5)
!50 = !DILocation(line: 0, scope: !43)
!51 = !DILocation(line: 32, column: 3, scope: !43)
!52 = !DILocation(line: 32, column: 7, scope: !43)
!53 = !DILocation(line: 33, column: 2, scope: !43)
!54 = !DILocation(line: 34, column: 15, scope: !49)
!55 = !DILocation(line: 0, scope: !49)
!56 = !DILocation(line: 35, column: 12, scope: !57)
!57 = distinct !DILexicalBlock(scope: !49, file: !8, line: 35, column: 7)
!58 = !DILocation(line: 0, scope: !57)
!59 = !DILocation(line: 35, column: 7, scope: !49)
!60 = !DILocation(line: 36, column: 11, scope: !57)
!61 = !DILocation(line: 36, column: 5, scope: !57)
!62 = !DILocation(line: 36, column: 9, scope: !57)
!63 = !DILocation(line: 36, column: 4, scope: !57)
!64 = !DILocation(line: 38, column: 11, scope: !57)
!65 = !DILocation(line: 38, column: 5, scope: !57)
!66 = !DILocation(line: 38, column: 9, scope: !57)
!67 = !DILocation(line: 39, column: 5, scope: !49)
!68 = !DILocation(line: 40, column: 13, scope: !43)
!69 = !DILocation(line: 40, column: 2, scope: !49)
!70 = distinct !{!70, !53, !71}
!71 = !DILocation(line: 40, column: 16, scope: !43)
!72 = !DILocation(line: 41, column: 3, scope: !43)
!73 = !DILocation(line: 41, column: 7, scope: !43)
!74 = !DILocation(line: 42, column: 3, scope: !43)
!75 = !DILocation(line: 42, column: 7, scope: !43)
!76 = !DILocation(line: 43, column: 2, scope: !43)
!77 = distinct !DISubprogram(name: "dprintf_", scope: !8, file: !8, line: 46, type: !78, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80, !81, null}
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!83 = !{!84, !85, !86, !87, !101, !102, !103, !104, !105}
!84 = !DILocalVariable(name: "fd", arg: 1, scope: !77, file: !8, line: 46, type: !80)
!85 = !DILocalVariable(name: "fmt", arg: 2, scope: !77, file: !8, line: 46, type: !81)
!86 = !DILocalVariable(name: "num", scope: !77, file: !8, line: 48, type: !80)
!87 = !DILocalVariable(name: "args", scope: !77, file: !8, line: 49, type: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !89, line: 14, baseType: !90)
!89 = !DIFile(filename: "llvm-project/build/lib/clang/12.0.0/include/stdarg.h", directory: "/home/adityanathan/superopt-project")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 49, baseType: !91)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 192, elements: !99)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 49, size: 192, elements: !93)
!93 = !{!94, !96, !97, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !92, file: !3, line: 49, baseType: !95, size: 32)
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !92, file: !3, line: 49, baseType: !95, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !92, file: !3, line: 49, baseType: !6, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !92, file: !3, line: 49, baseType: !6, size: 64, offset: 128)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DILocalVariable(name: "start", scope: !77, file: !8, line: 50, type: !20)
!102 = !DILocalVariable(name: "ptr", scope: !77, file: !8, line: 50, type: !20)
!103 = !DILocalVariable(name: "string", scope: !77, file: !8, line: 50, type: !20)
!104 = !DILocalVariable(name: "buf", scope: !77, file: !8, line: 51, type: !20)
!105 = !DILocalVariable(name: "tmp", scope: !77, file: !8, line: 52, type: !106)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 176, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 22)
!109 = !DILocation(line: 0, scope: !77)
!110 = !DILocation(line: 49, column: 2, scope: !77)
!111 = !DILocation(line: 49, column: 10, scope: !77)
!112 = !DILocation(line: 52, column: 2, scope: !77)
!113 = !DILocation(line: 52, column: 7, scope: !77)
!114 = !DILocation(line: 54, column: 7, scope: !115)
!115 = distinct !DILexicalBlock(scope: !77, file: !8, line: 54, column: 6)
!116 = !DILocation(line: 54, column: 6, scope: !77)
!117 = !DILocation(line: 57, column: 8, scope: !77)
!118 = !DILocation(line: 58, column: 10, scope: !119)
!119 = distinct !DILexicalBlock(scope: !77, file: !8, line: 58, column: 6)
!120 = !DILocation(line: 58, column: 6, scope: !77)
!121 = !DILocation(line: 59, column: 3, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !8, line: 58, column: 19)
!123 = !DILocation(line: 60, column: 3, scope: !122)
!124 = !DILocation(line: 61, column: 2, scope: !122)
!125 = !DILocation(line: 65, column: 6, scope: !126)
!126 = distinct !DILexicalBlock(scope: !77, file: !8, line: 65, column: 6)
!127 = !DILocation(line: 65, column: 18, scope: !126)
!128 = !DILocation(line: 65, column: 6, scope: !77)
!129 = !DILocation(line: 66, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !8, line: 65, column: 38)
!131 = !DILocation(line: 67, column: 3, scope: !130)
!132 = !DILocation(line: 68, column: 2, scope: !130)
!133 = !DILocation(line: 70, column: 2, scope: !77)
!134 = !DILocation(line: 71, column: 2, scope: !77)
!135 = !DILocation(line: 73, column: 2, scope: !77)
!136 = !DILocation(line: 74, column: 4, scope: !137)
!137 = distinct !DILexicalBlock(scope: !77, file: !8, line: 73, column: 16)
!138 = !DILocation(line: 75, column: 3, scope: !137)
!139 = !DILocation(line: 75, column: 10, scope: !137)
!140 = !DILocation(line: 75, column: 15, scope: !137)
!141 = distinct !{!141, !138, !142}
!142 = !DILocation(line: 77, column: 3, scope: !137)
!143 = !DILocation(line: 80, column: 11, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !8, line: 79, column: 20)
!145 = distinct !DILexicalBlock(scope: !137, file: !8, line: 79, column: 7)
!146 = !DILocation(line: 81, column: 21, scope: !144)
!147 = !DILocation(line: 81, column: 4, scope: !144)
!148 = !DILocation(line: 83, column: 12, scope: !144)
!149 = !DILocation(line: 83, column: 4, scope: !144)
!150 = !DILocation(line: 0, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !8, line: 105, column: 6)
!152 = distinct !DILexicalBlock(scope: !144, file: !8, line: 83, column: 20)
!153 = !DILocation(line: 85, column: 15, scope: !152)
!154 = !DILocation(line: 87, column: 11, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !8, line: 87, column: 10)
!156 = !DILocation(line: 87, column: 10, scope: !152)
!157 = !DILocation(line: 93, column: 6, scope: !152)
!158 = !DILocation(line: 98, column: 13, scope: !159)
!159 = distinct !DILexicalBlock(scope: !152, file: !8, line: 97, column: 6)
!160 = !DILocation(line: 99, column: 33, scope: !159)
!161 = !DILocation(line: 99, column: 16, scope: !159)
!162 = !DILocation(line: 101, column: 7, scope: !159)
!163 = !DILocation(line: 106, column: 13, scope: !151)
!164 = !DILocation(line: 107, column: 36, scope: !151)
!165 = !DILocation(line: 107, column: 16, scope: !151)
!166 = !DILocation(line: 109, column: 7, scope: !151)
!167 = !DILocation(line: 119, column: 21, scope: !168)
!168 = distinct !DILexicalBlock(scope: !145, file: !8, line: 118, column: 10)
!169 = !DILocation(line: 119, column: 4, scope: !168)
!170 = !DILocation(line: 0, scope: !152)
!171 = !DILocation(line: 116, column: 22, scope: !144)
!172 = !DILocation(line: 116, column: 4, scope: !144)
!173 = distinct !{!173, !135, !174}
!174 = !DILocation(line: 122, column: 2, scope: !77)
!175 = !DILocation(line: 123, column: 2, scope: !77)
!176 = !DILocation(line: 124, column: 2, scope: !77)
!177 = !DILocation(line: 125, column: 1, scope: !77)
!178 = !DISubprogram(name: "MYmycalloc", scope: !179, file: !179, line: 23, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!179 = !DIFile(filename: "localmem-tests/eqchecker_helper.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!180 = !DISubroutineType(types: !181)
!181 = !{!6, !12, !12}
!182 = !DISubprogram(name: "write", scope: !183, file: !183, line: 366, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!183 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!184 = !DISubroutineType(types: !185)
!185 = !{!186, !80, !187, !12}
!186 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!189 = !DISubprogram(name: "_exit", scope: !183, file: !183, line: 603, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !80}
!192 = !DISubprogram(name: "strlen", scope: !193, file: !193, line: 385, type: !194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!193 = !DIFile(filename: "/usr/include/string.h", directory: "")
!194 = !DISubroutineType(types: !195)
!195 = !{!12, !81}
!196 = !DISubprogram(name: "strcpy", scope: !193, file: !193, line: 122, type: !197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!197 = !DISubroutineType(types: !198)
!198 = !{!20, !20, !81}
!199 = !DISubprogram(name: "MYmyfree", scope: !179, file: !179, line: 22, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !6}
!202 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 127, type: !203, scopeLine: 128, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!203 = !DISubroutineType(types: !204)
!204 = !{!80}
!205 = !DILocation(line: 129, column: 3, scope: !202)
!206 = !DILocation(line: 130, column: 3, scope: !202)
