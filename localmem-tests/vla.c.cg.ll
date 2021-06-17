; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/localmem-tests/vla.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/localmem-tests/vla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"Array:\00", align 1

; Function Attrs: noinline nounwind
define dso_local i32 @vla_0(i32 %n) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !25
  %cmp = icmp eq i32 %n, 0, !dbg !26
  br i1 %cmp, label %return, label %for.body.preheader, !dbg !28

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %n to i64, !dbg !29
  %1 = call i8* @llvm.stacksave(), !dbg !29
  %vla = alloca i32, i64 %0, align 16, !dbg !29
  call void @llvm.dbg.value(metadata i64 %0, metadata !17, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !19, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i32 0, metadata !23, metadata !DIExpression()), !dbg !31
  br label %for.body, !dbg !32

for.cond.cleanup:                                 ; preds = %for.body
  %.pre = load i32, i32* %vla, align 16, !dbg !33
  %sub = add i32 %n, -1, !dbg !34
  %idxprom3 = zext i32 %sub to i64, !dbg !35
  %arrayidx4 = getelementptr i32, i32* %vla, i64 %idxprom3, !dbg !35
  %2 = load i32, i32* %arrayidx4, align 4, !dbg !35
  %add5 = add i32 %2, %.pre, !dbg !36
  call void @llvm.stackrestore(i8* %1), !dbg !37
  br label %return

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !23, metadata !DIExpression()), !dbg !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !38
  %3 = add i64 %indvars.iv, 1, !dbg !41
  %tmp = trunc i64 %indvars.iv to i32
  %tmp16 = trunc i64 %3 to i32
  %mul = mul i32 %tmp16, %tmp, !dbg !41
  %scevgep = getelementptr i32, i32* %vla, i64 %indvars.iv, !dbg !42
  store i32 %mul, i32* %scevgep, align 4, !dbg !42
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !23, metadata !DIExpression()), !dbg !31
  %exitcond.not = icmp eq i64 %0, %indvars.iv.next, !dbg !43
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !32, !llvm.loop !44

return:                                           ; preds = %entry, %for.cond.cleanup
  %retval.0 = phi i32 [ %add5, %for.cond.cleanup ], [ 0, %entry ], !dbg !25
  ret i32 %retval.0, !dbg !37

; uselistorder directives
  uselistorder i64 %indvars.iv, { 2, 1, 0, 3 }
  uselistorder i32* %vla, { 0, 2, 1 }
  uselistorder label %return, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind
define dso_local i32 @vla_11(i32* nocapture readonly %a, i32 %n) local_unnamed_addr #0 !dbg !48 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !53, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 %n, metadata !54, metadata !DIExpression()), !dbg !62
  %cmp = icmp eq i32 %n, 0, !dbg !63
  br i1 %cmp, label %return, label %for.body.preheader, !dbg !65

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %n to i64, !dbg !66
  %1 = call i8* @llvm.stacksave(), !dbg !66
  %vla = alloca i32, i64 %0, align 16, !dbg !66
  call void @llvm.dbg.value(metadata i64 %0, metadata !55, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !56, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !68
  br label %for.body, !dbg !69

for.cond.cleanup:                                 ; preds = %for.body
  %.pre = load i32, i32* %vla, align 16, !dbg !70
  %sub = add i32 %n, -1, !dbg !71
  %idxprom7 = zext i32 %sub to i64, !dbg !72
  %arrayidx8 = getelementptr i32, i32* %vla, i64 %idxprom7, !dbg !72
  %2 = load i32, i32* %arrayidx8, align 4, !dbg !72
  %add = add i32 %2, %.pre, !dbg !73
  call void @llvm.stackrestore(i8* %1), !dbg !74
  br label %return

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !60, metadata !DIExpression()), !dbg !68
  %scevgep = getelementptr i32, i32* %a, i64 %indvars.iv, !dbg !75
  %3 = load i32, i32* %scevgep, align 4, !dbg !75
  %mul = mul i32 %3, %3, !dbg !78
  %scevgep20 = getelementptr i32, i32* %vla, i64 %indvars.iv, !dbg !79
  store i32 %mul, i32* %scevgep20, align 4, !dbg !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !80
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !60, metadata !DIExpression()), !dbg !68
  %exitcond.not = icmp eq i64 %0, %indvars.iv.next, !dbg !81
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !69, !llvm.loop !82

return:                                           ; preds = %entry, %for.cond.cleanup
  %retval.0 = phi i32 [ %add, %for.cond.cleanup ], [ 0, %entry ], !dbg !62
  ret i32 %retval.0, !dbg !74

; uselistorder directives
  uselistorder i64 %indvars.iv, { 2, 0, 1 }
  uselistorder i32* %vla, { 0, 2, 1 }
  uselistorder label %return, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: noinline nounwind
define dso_local i32 @vla_12(i32* nocapture readonly %a, i32 %n) local_unnamed_addr #0 !dbg !84 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !86, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 %n, metadata !87, metadata !DIExpression()), !dbg !98
  %cmp = icmp eq i32 %n, 0, !dbg !99
  br i1 %cmp, label %return, label %for.body.preheader, !dbg !101

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %n to i64, !dbg !102
  %1 = call i8* @llvm.stacksave(), !dbg !102
  %vla = alloca i32, i64 %0, align 16, !dbg !102
  call void @llvm.dbg.value(metadata i64 %0, metadata !88, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !89, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !104
  br label %for.body, !dbg !105

for.body9.preheader:                              ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32 0, metadata !95, metadata !DIExpression()), !dbg !98
  %2 = icmp ugt i32 %n, 1, !dbg !107
  %umax = select i1 %2, i32 %n, i32 1, !dbg !107
  %wide.trip.count = zext i32 %umax to i64, !dbg !108
  br label %for.body9, !dbg !107

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv34 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next35, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv34, metadata !93, metadata !DIExpression()), !dbg !104
  %scevgep38 = getelementptr i32, i32* %a, i64 %indvars.iv34, !dbg !110
  %3 = load i32, i32* %scevgep38, align 4, !dbg !110
  %mul = mul i32 %3, %3, !dbg !113
  %scevgep39 = getelementptr i32, i32* %vla, i64 %indvars.iv34, !dbg !114
  store i32 %mul, i32* %scevgep39, align 4, !dbg !114
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !dbg !115
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35, metadata !93, metadata !DIExpression()), !dbg !104
  %exitcond37.not = icmp eq i64 %0, %indvars.iv.next35, !dbg !116
  br i1 %exitcond37.not, label %for.body9.preheader, label %for.body, !dbg !105, !llvm.loop !117

for.cond.cleanup8:                                ; preds = %for.body9
  call void @llvm.dbg.value(metadata i32 %add, metadata !95, metadata !DIExpression()), !dbg !98
  call void @llvm.stackrestore(i8* %1), !dbg !119
  br label %return

for.body9:                                        ; preds = %for.body9.preheader, %for.body9
  %indvars.iv = phi i64 [ 0, %for.body9.preheader ], [ %indvars.iv.next, %for.body9 ]
  %ret.030 = phi i32 [ 0, %for.body9.preheader ], [ %add, %for.body9 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !96, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32 %ret.030, metadata !95, metadata !DIExpression()), !dbg !98
  %scevgep = getelementptr i32, i32* %vla, i64 %indvars.iv, !dbg !120
  %4 = load i32, i32* %scevgep, align 4, !dbg !120
  %add = add i32 %4, %ret.030, !dbg !122
  call void @llvm.dbg.value(metadata i32 %add, metadata !95, metadata !DIExpression()), !dbg !98
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !123
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !106
  %exitcond.not = icmp eq i64 %wide.trip.count, %indvars.iv.next, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup8, label %for.body9, !dbg !107, !llvm.loop !124

return:                                           ; preds = %entry, %for.cond.cleanup8
  %retval.0 = phi i32 [ %add, %for.cond.cleanup8 ], [ 0, %entry ], !dbg !98
  ret i32 %retval.0, !dbg !119

; uselistorder directives
  uselistorder i64 %indvars.iv, { 1, 0 }
  uselistorder i64 %indvars.iv34, { 2, 0, 1 }
  uselistorder i32* %vla, { 1, 0 }
  uselistorder label %return, { 1, 0 }
  uselistorder label %for.body9, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: noinline nounwind
define dso_local void @vla_13(i32* nocapture readonly %a, i32 %n) local_unnamed_addr #0 !dbg !126 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !130, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i32 %n, metadata !131, metadata !DIExpression()), !dbg !141
  %cmp = icmp eq i32 %n, 0, !dbg !142
  br i1 %cmp, label %return, label %for.body.preheader, !dbg !144

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %n to i64, !dbg !145
  %1 = call i8* @llvm.stacksave(), !dbg !145
  %vla = alloca i32, i64 %0, align 16, !dbg !145
  call void @llvm.dbg.value(metadata i64 %0, metadata !132, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !133, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i32 0, metadata !137, metadata !DIExpression()), !dbg !147
  br label %for.body, !dbg !148

for.body9.preheader:                              ; preds = %for.body
  %call = call i32 (i8*, ...) bitcast (i32 (...)* @MYmyputs to i32 (i8*, ...)*)(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #5, !dbg !149
  call void @llvm.dbg.value(metadata i32 0, metadata !139, metadata !DIExpression()), !dbg !150
  %2 = icmp ugt i32 %n, 1, !dbg !151
  %umax = select i1 %2, i32 %n, i32 1, !dbg !151
  %wide.trip.count = zext i32 %umax to i64, !dbg !152
  br label %for.body9, !dbg !151

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv32 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next33, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv32, metadata !137, metadata !DIExpression()), !dbg !147
  %scevgep36 = getelementptr i32, i32* %a, i64 %indvars.iv32, !dbg !154
  %3 = load i32, i32* %scevgep36, align 4, !dbg !154
  %mul = mul i32 %3, %3, !dbg !157
  %scevgep37 = getelementptr i32, i32* %vla, i64 %indvars.iv32, !dbg !158
  store i32 %mul, i32* %scevgep37, align 4, !dbg !158
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !dbg !159
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next33, metadata !137, metadata !DIExpression()), !dbg !147
  %exitcond35.not = icmp eq i64 %0, %indvars.iv.next33, !dbg !160
  br i1 %exitcond35.not, label %for.body9.preheader, label %for.body, !dbg !148, !llvm.loop !161

for.cond.cleanup8:                                ; preds = %for.body9
  call void @llvm.stackrestore(i8* %1), !dbg !163
  br label %return

for.body9:                                        ; preds = %for.body9.preheader, %for.body9
  %indvars.iv = phi i64 [ 0, %for.body9.preheader ], [ %indvars.iv.next, %for.body9 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !139, metadata !DIExpression()), !dbg !150
  %scevgep = getelementptr i32, i32* %vla, i64 %indvars.iv, !dbg !164
  %4 = load i32, i32* %scevgep, align 4, !dbg !164
  %call12 = call i32 (i32, ...) bitcast (i32 (...)* @MYmyprint_int to i32 (i32, ...)*)(i32 %4) #5, !dbg !166
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !167
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !139, metadata !DIExpression()), !dbg !150
  %exitcond.not = icmp eq i64 %wide.trip.count, %indvars.iv.next, !dbg !152
  br i1 %exitcond.not, label %for.cond.cleanup8, label %for.body9, !dbg !151, !llvm.loop !168

return:                                           ; preds = %entry, %for.cond.cleanup8
  ret void, !dbg !163

; uselistorder directives
  uselistorder i64 %indvars.iv, { 1, 0 }
  uselistorder i64 %indvars.iv32, { 2, 0, 1 }
  uselistorder i32* %vla, { 1, 0 }
  uselistorder label %return, { 1, 0 }
  uselistorder label %for.body9, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
}

declare dso_local i32 @MYmyputs(...) local_unnamed_addr #4

declare dso_local i32 @MYmyprint_int(...) local_unnamed_addr #4

; Function Attrs: noinline nounwind
define dso_local i32 @vla_21(i32* nocapture readonly %a, i32 %n) local_unnamed_addr #0 !dbg !170 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !172, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %n, metadata !173, metadata !DIExpression()), !dbg !186
  %cmp = icmp eq i32 %n, 0, !dbg !187
  br i1 %cmp, label %return, label %for.body.preheader, !dbg !189

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %n to i64, !dbg !190
  %1 = call i8* @llvm.stacksave(), !dbg !190
  %vla = alloca i32, i64 %0, align 16, !dbg !190
  call void @llvm.dbg.value(metadata i64 %0, metadata !174, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !175, metadata !DIExpression()), !dbg !191
  %vla1 = alloca i32, i64 %0, align 16, !dbg !190
  call void @llvm.dbg.value(metadata i64 %0, metadata !179, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %vla1, metadata !180, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 0, metadata !184, metadata !DIExpression()), !dbg !193
  br label %for.body, !dbg !194

for.cond.cleanup:                                 ; preds = %for.body
  %.pre = load i32, i32* %vla, align 16, !dbg !195
  %.pre41 = load i32, i32* %vla1, align 16, !dbg !196
  %sub = add i32 %n, -1, !dbg !197
  %idxprom14 = zext i32 %sub to i64, !dbg !198
  %arrayidx15 = getelementptr i32, i32* %vla, i64 %idxprom14, !dbg !198
  %2 = load i32, i32* %arrayidx15, align 4, !dbg !198
  %add16 = add i32 %2, %.pre, !dbg !199
  %add18 = add i32 %add16, %.pre41, !dbg !200
  %arrayidx21 = getelementptr i32, i32* %vla1, i64 %idxprom14, !dbg !201
  %3 = load i32, i32* %arrayidx21, align 4, !dbg !201
  %add22 = add i32 %add18, %3, !dbg !202
  %call = call i32 (i32, ...) bitcast (i32 (...)* @MYmyabs to i32 (i32, ...)*)(i32 %add22) #5, !dbg !203
  call void @llvm.stackrestore(i8* %1), !dbg !204
  br label %return

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !184, metadata !DIExpression()), !dbg !193
  %scevgep = getelementptr i32, i32* %a, i64 %indvars.iv, !dbg !205
  %4 = load i32, i32* %scevgep, align 4, !dbg !205
  %mul = mul i32 %4, %4, !dbg !208
  %scevgep42 = getelementptr i32, i32* %vla, i64 %indvars.iv, !dbg !209
  store i32 %mul, i32* %scevgep42, align 4, !dbg !209
  %add = shl i32 %4, 1, !dbg !210
  %scevgep43 = getelementptr i32, i32* %vla1, i64 %indvars.iv, !dbg !211
  store i32 %add, i32* %scevgep43, align 4, !dbg !211
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !212
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !184, metadata !DIExpression()), !dbg !193
  %exitcond.not = icmp eq i64 %0, %indvars.iv.next, !dbg !213
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !194, !llvm.loop !214

return:                                           ; preds = %entry, %for.cond.cleanup
  %retval.0 = phi i32 [ %call, %for.cond.cleanup ], [ 0, %entry ], !dbg !186
  ret i32 %retval.0, !dbg !204

; uselistorder directives
  uselistorder i64 %indvars.iv, { 3, 0, 1, 2 }
  uselistorder i32* %vla1, { 0, 2, 1 }
  uselistorder i32* %vla, { 0, 2, 1 }
  uselistorder label %return, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
}

declare dso_local i32 @MYmyabs(...) local_unnamed_addr #4

; Function Attrs: noinline nounwind
define dso_local i32 @vla_22(i32* nocapture readonly %a, i32 %n) local_unnamed_addr #0 !dbg !216 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !218, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %n, metadata !219, metadata !DIExpression()), !dbg !242
  %cmp = icmp eq i32 %n, 0, !dbg !243
  br i1 %cmp, label %return, label %if.end, !dbg !245

if.end:                                           ; preds = %entry
  %0 = zext i32 %n to i64, !dbg !246
  %1 = call i8* @llvm.stacksave(), !dbg !246
  %vla = alloca i32, i64 %0, align 16, !dbg !246
  call void @llvm.dbg.value(metadata i64 %0, metadata !220, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !221, metadata !DIExpression()), !dbg !247
  %vla1 = alloca i32, i64 %0, align 16, !dbg !246
  call void @llvm.dbg.value(metadata i64 %0, metadata !225, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %vla1, metadata !226, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 0, metadata !230, metadata !DIExpression()), !dbg !249
  %sub = add i32 %n, -1, !dbg !250
  %cmp286.not = icmp eq i32 %sub, 0, !dbg !251
  br i1 %cmp286.not, label %for.end38, label %for.body.preheader, !dbg !252

for.body.preheader:                               ; preds = %if.end
  %wide.trip.count = zext i32 %sub to i64, !dbg !251
  br label %for.body, !dbg !253

for.body:                                         ; preds = %for.body.preheader, %cleanup32
  %lsr.iv = phi i32 [ 0, %for.body.preheader ], [ %lsr.iv.next, %cleanup32 ]
  %indvars.iv90 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next91, %cleanup32 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv90, metadata !230, metadata !DIExpression()), !dbg !249
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1, !dbg !254
  %2 = call i8* @llvm.stacksave(), !dbg !255
  %vla4 = alloca i32, i64 %indvars.iv.next91, align 16, !dbg !255
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next91, metadata !232, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata i32* %vla4, metadata !235, metadata !DIExpression()), !dbg !257
  %3 = load i32, i32* %a, align 4, !dbg !258
  store i32 %3, i32* %vla4, align 16, !dbg !259
  call void @llvm.dbg.value(metadata i32 1, metadata !239, metadata !DIExpression()), !dbg !260
  %cmp7.not84 = icmp eq i64 %indvars.iv90, 0, !dbg !261
  br i1 %cmp7.not84, label %cleanup32, label %for.body9.preheader, !dbg !253

for.body9.preheader:                              ; preds = %for.body
  br label %for.body9, !dbg !253

for.body9:                                        ; preds = %for.body9.preheader, %if.end13
  %4 = phi i32 [ %add19, %if.end13 ], [ %3, %for.body9.preheader ]
  %j.085 = phi i32 [ %inc, %if.end13 ], [ 1, %for.body9.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.085, metadata !239, metadata !DIExpression()), !dbg !260
  %idxprom = zext i32 %j.085 to i64, !dbg !263
  %arrayidx10 = getelementptr i32, i32* %a, i64 %idxprom, !dbg !263
  %5 = load i32, i32* %arrayidx10, align 4, !dbg !263
  %cmp11 = icmp slt i32 %5, 0, !dbg !266
  br i1 %cmp11, label %cleanup36, label %if.end13, !dbg !267

if.end13:                                         ; preds = %for.body9
  %6 = trunc i64 %idxprom to i32
  %add19 = add i32 %4, %5, !dbg !268
  %arrayidx21 = getelementptr i32, i32* %vla4, i64 %idxprom, !dbg !269
  store i32 %add19, i32* %arrayidx21, align 4, !dbg !270
  %inc = add i32 %6, 1, !dbg !271
  call void @llvm.dbg.value(metadata i32 %inc, metadata !239, metadata !DIExpression()), !dbg !260
  %7 = add i32 %lsr.iv, %inc, !dbg !261
  %exitcond = icmp eq i32 %7, 1, !dbg !261
  br i1 %exitcond, label %cleanup32, label %for.body9, !dbg !253, !llvm.loop !272

cleanup32:                                        ; preds = %if.end13, %for.body
  %arrayidx23 = getelementptr i32, i32* %vla4, i64 %indvars.iv90, !dbg !274
  %8 = load i32, i32* %arrayidx23, align 4, !dbg !274
  %arrayidx25 = getelementptr i32, i32* %vla, i64 %indvars.iv90, !dbg !275
  store i32 %8, i32* %arrayidx25, align 4, !dbg !276
  %arrayidx27 = getelementptr i32, i32* %a, i64 %indvars.iv90, !dbg !277
  %9 = load i32, i32* %arrayidx27, align 4, !dbg !277
  %mul = mul i32 %9, %9, !dbg !278
  %arrayidx31 = getelementptr i32, i32* %vla1, i64 %indvars.iv90, !dbg !279
  store i32 %mul, i32* %arrayidx31, align 4, !dbg !280
  call void @llvm.stackrestore(i8* %2), !dbg !281
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next91, metadata !230, metadata !DIExpression()), !dbg !249
  %lsr.iv.next = add i32 %lsr.iv, -1, !dbg !252
  %exitcond92.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count, !dbg !251
  br i1 %exitcond92.not, label %for.end38.loopexit, label %for.body, !dbg !252

cleanup36:                                        ; preds = %for.body9
  call void @llvm.stackrestore(i8* %2), !dbg !281
  br label %cleanup50

for.end38.loopexit:                               ; preds = %cleanup32
  %.pre = load i32, i32* %vla, align 16, !dbg !282
  %arrayidx42.phi.trans.insert = getelementptr i32, i32* %vla, i64 %wide.trip.count, !dbg !242
  %.pre93 = load i32, i32* %arrayidx42.phi.trans.insert, align 4, !dbg !283
  %.pre94 = load i32, i32* %vla1, align 16, !dbg !284
  %arrayidx47.phi.trans.insert = getelementptr i32, i32* %vla1, i64 %wide.trip.count, !dbg !242
  %.pre96 = load i32, i32* %arrayidx47.phi.trans.insert, align 4, !dbg !285
  br label %for.end38, !dbg !282

for.end38:                                        ; preds = %if.end, %for.end38.loopexit
  %10 = phi i32 [ %.pre96, %for.end38.loopexit ], [ undef, %if.end ], !dbg !285
  %11 = phi i32 [ %.pre94, %for.end38.loopexit ], [ undef, %if.end ], !dbg !284
  %12 = phi i32 [ %.pre93, %for.end38.loopexit ], [ undef, %if.end ], !dbg !283
  %13 = phi i32 [ %.pre, %for.end38.loopexit ], [ undef, %if.end ], !dbg !282
  %mul43 = mul i32 %12, %13, !dbg !286
  %mul48 = mul i32 %10, %11, !dbg !287
  %add49 = add i32 %mul48, %mul43, !dbg !288
  br label %cleanup50, !dbg !289

cleanup50:                                        ; preds = %cleanup36, %for.end38
  %retval.0 = phi i32 [ %add49, %for.end38 ], [ 0, %cleanup36 ]
  call void @llvm.stackrestore(i8* %1), !dbg !290
  br label %return

return:                                           ; preds = %entry, %cleanup50
  %retval.1 = phi i32 [ %retval.0, %cleanup50 ], [ 0, %entry ]
  ret i32 %retval.1, !dbg !290

; uselistorder directives
  uselistorder i32 %add19, { 1, 0 }
  uselistorder i64 %idxprom, { 1, 0, 2 }
  uselistorder i32* %vla4, { 1, 2, 0 }
  uselistorder i64 %indvars.iv90, { 3, 2, 1, 0, 4, 5 }
  uselistorder i32 %lsr.iv, { 1, 0 }
  uselistorder void (i8*)* @llvm.stackrestore, { 1, 0, 2, 3, 4, 5, 6, 7 }
  uselistorder i32* %a, { 2, 1, 0 }
  uselistorder label %return, { 1, 0 }
  uselistorder label %cleanup50, { 1, 0 }
  uselistorder label %for.end38, { 1, 0 }
  uselistorder label %for.body9, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: noinline nounwind
define dso_local i32 @variadic_0(i32 %n, ...) local_unnamed_addr #0 !dbg !291 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %n, metadata !295, metadata !DIExpression()), !dbg !311
  %0 = add i32 %n, -1, !dbg !312
  %1 = icmp ugt i32 %0, 1, !dbg !312
  br i1 %1, label %return, label %if.end, !dbg !312

if.end:                                           ; preds = %entry
  %2 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !314
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #2, !dbg !314
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !296, metadata !DIExpression()), !dbg !315
  call void @llvm.va_start(i8* nonnull %2), !dbg !316
  %gp_offset_p22 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !317
  %gp_offset = load i32, i32* %gp_offset_p22, align 16, !dbg !317
  %3 = zext i32 %gp_offset to i64, !dbg !317
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !317
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !317

vaarg.in_reg:                                     ; preds = %if.end
  %4 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !317
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !dbg !317
  %reg_save_area = load i8*, i8** %5, align 16, !dbg !317
  %6 = getelementptr i8, i8* %reg_save_area, i64 %3, !dbg !317
  %7 = add nuw nsw i32 %gp_offset, 8, !dbg !317
  store i32 %7, i32* %4, align 16, !dbg !317
  br label %vaarg.end, !dbg !317

vaarg.in_mem:                                     ; preds = %if.end
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !dbg !317
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !317
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !317
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !317
  br label %vaarg.end, !dbg !317

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %gp_offset7 = phi i32 [ %7, %vaarg.in_reg ], [ %gp_offset, %vaarg.in_mem ]
  %vaarg.addr.in = phi i8* [ %6, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !317
  %8 = load i32, i32* %vaarg.addr, align 4, !dbg !317
  call void @llvm.dbg.value(metadata i32 %8, metadata !310, metadata !DIExpression()), !dbg !311
  %cmp4 = icmp eq i32 %n, 1, !dbg !318
  br i1 %cmp4, label %cond.end, label %cond.false, !dbg !319

cond.false:                                       ; preds = %vaarg.end
  %fits_in_gp8 = icmp ult i32 %gp_offset7, 41, !dbg !320
  br i1 %fits_in_gp8, label %vaarg.in_reg9, label %vaarg.in_mem11, !dbg !320

vaarg.in_reg9:                                    ; preds = %cond.false
  %9 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !317
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !dbg !320
  %reg_save_area10 = load i8*, i8** %10, align 16, !dbg !320
  %11 = zext i32 %gp_offset7 to i64, !dbg !320
  %12 = getelementptr i8, i8* %reg_save_area10, i64 %11, !dbg !320
  %13 = add nuw nsw i32 %gp_offset7, 8, !dbg !320
  store i32 %13, i32* %9, align 16, !dbg !320
  br label %vaarg.end15, !dbg !320

vaarg.in_mem11:                                   ; preds = %cond.false
  %overflow_arg_area_p12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !dbg !320
  %overflow_arg_area13 = load i8*, i8** %overflow_arg_area_p12, align 8, !dbg !320
  %overflow_arg_area.next14 = getelementptr i8, i8* %overflow_arg_area13, i64 8, !dbg !320
  store i8* %overflow_arg_area.next14, i8** %overflow_arg_area_p12, align 8, !dbg !320
  br label %vaarg.end15, !dbg !320

vaarg.end15:                                      ; preds = %vaarg.in_mem11, %vaarg.in_reg9
  %vaarg.addr16.in = phi i8* [ %12, %vaarg.in_reg9 ], [ %overflow_arg_area13, %vaarg.in_mem11 ]
  %vaarg.addr16 = bitcast i8* %vaarg.addr16.in to i32*, !dbg !320
  %14 = load i32, i32* %vaarg.addr16, align 4, !dbg !320
  %add = add i32 %14, %8, !dbg !321
  br label %cond.end, !dbg !319

cond.end:                                         ; preds = %vaarg.end, %vaarg.end15
  %cond = phi i32 [ %add, %vaarg.end15 ], [ %8, %vaarg.end ], !dbg !319
  %15 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !314
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15) #2, !dbg !322
  br label %return

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %cond, %cond.end ], [ 0, %entry ], !dbg !311
  ret i32 %retval.0, !dbg !322

; uselistorder directives
  uselistorder i8** %overflow_arg_area_p12, { 1, 0 }
  uselistorder i32 %gp_offset7, { 0, 2, 1 }
  uselistorder i8** %overflow_arg_area_p, { 1, 0 }
  uselistorder i32 %gp_offset, { 0, 3, 2, 1 }
  uselistorder [1 x %struct.__va_list_tag]* %args, { 3, 6, 5, 1, 7, 4, 0, 2, 8 }
  uselistorder i32 3, { 1, 0 }
  uselistorder i64 0, { 13, 14, 11, 12, 15, 16, 9, 10, 0, 1, 2, 4, 3, 17, 18, 6, 5, 7, 8 }
  uselistorder i32 -1, { 1, 0, 2, 3, 4, 5 }
  uselistorder i32 %n, { 1, 0 }
  uselistorder label %return, { 1, 0 }
  uselistorder label %cond.end, { 1, 0 }
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: noinline nounwind
define dso_local i32 @variadic_1(i32 %n, ...) local_unnamed_addr #0 !dbg !323 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %n, metadata !325, metadata !DIExpression()), !dbg !329
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !330
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #2, !dbg !330
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !327, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 0, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.va_start(i8* nonnull %0), !dbg !332
  call void @llvm.dbg.value(metadata i32 0, metadata !326, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 0, metadata !328, metadata !DIExpression()), !dbg !329
  %cmp23.not = icmp eq i32 %n, 0, !dbg !333
  br i1 %cmp23.not, label %for.end, label %for.body.lr.ph, !dbg !336

for.body.lr.ph:                                   ; preds = %entry
  br label %for.body, !dbg !336

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %ret.025 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc ]
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %1 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !337
  call void @llvm.dbg.value(metadata i32 %ret.025, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 %i.024, metadata !326, metadata !DIExpression()), !dbg !329
  %call = call i32 (i32, ...) bitcast (i32 (...)* @DBG to i32 (i32, ...)*)(i32 119) #5, !dbg !340
  %and = and i32 %i.024, 1, !dbg !341
  %tobool.not = icmp eq i32 %and, 0, !dbg !341
  %gp_offset5 = load i32, i32* %1, align 16, !dbg !337
  %2 = zext i32 %gp_offset5 to i64, !dbg !342
  %3 = zext i32 %gp_offset5 to i64, !dbg !343
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !344

if.then:                                          ; preds = %for.body
  %4 = trunc i64 %2 to i32
  %5 = icmp ult i32 %4, 41, !dbg !337
  br i1 %5, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !343

vaarg.in_reg:                                     ; preds = %if.then
  %6 = trunc i64 %2 to i32
  %7 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !337
  %8 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !343
  %sunkaddr = getelementptr inbounds i8, i8* %8, i64 16, !dbg !343
  %9 = bitcast i8* %sunkaddr to i8**, !dbg !343
  %reg_save_area = load i8*, i8** %9, align 16, !dbg !343
  %10 = getelementptr i8, i8* %reg_save_area, i64 %3, !dbg !343
  %11 = add nuw nsw i32 %6, 8, !dbg !343
  store i32 %11, i32* %7, align 16, !dbg !343
  br label %vaarg.end, !dbg !343

vaarg.in_mem:                                     ; preds = %if.then
  %12 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !343
  %sunkaddr27 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !343
  %13 = bitcast i8* %sunkaddr27 to i8**, !dbg !343
  %overflow_arg_area = load i8*, i8** %13, align 8, !dbg !343
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !343
  store i8* %overflow_arg_area.next, i8** %13, align 8, !dbg !343
  br label %vaarg.end, !dbg !343

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %10, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !343
  %14 = load i32, i32* %vaarg.addr, align 4, !dbg !343
  %sub = sub i32 %ret.025, %14, !dbg !345
  call void @llvm.dbg.value(metadata i32 %sub, metadata !328, metadata !DIExpression()), !dbg !329
  br label %for.inc, !dbg !346

if.else:                                          ; preds = %for.body
  %15 = trunc i64 %3 to i32
  %16 = icmp ult i32 %15, 41, !dbg !337
  br i1 %16, label %vaarg.in_reg7, label %vaarg.in_mem9, !dbg !342

vaarg.in_reg7:                                    ; preds = %if.else
  %17 = trunc i64 %3 to i32
  %18 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !337
  %19 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !342
  %sunkaddr28 = getelementptr inbounds i8, i8* %19, i64 16, !dbg !342
  %20 = bitcast i8* %sunkaddr28 to i8**, !dbg !342
  %reg_save_area8 = load i8*, i8** %20, align 16, !dbg !342
  %21 = getelementptr i8, i8* %reg_save_area8, i64 %2, !dbg !342
  %22 = add nuw nsw i32 %17, 8, !dbg !342
  store i32 %22, i32* %18, align 16, !dbg !342
  br label %vaarg.end13, !dbg !342

vaarg.in_mem9:                                    ; preds = %if.else
  %23 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !342
  %sunkaddr29 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !342
  %24 = bitcast i8* %sunkaddr29 to i8**, !dbg !342
  %overflow_arg_area11 = load i8*, i8** %24, align 8, !dbg !342
  %overflow_arg_area.next12 = getelementptr i8, i8* %overflow_arg_area11, i64 8, !dbg !342
  store i8* %overflow_arg_area.next12, i8** %24, align 8, !dbg !342
  br label %vaarg.end13, !dbg !342

vaarg.end13:                                      ; preds = %vaarg.in_mem9, %vaarg.in_reg7
  %vaarg.addr14.in = phi i8* [ %21, %vaarg.in_reg7 ], [ %overflow_arg_area11, %vaarg.in_mem9 ]
  %vaarg.addr14 = bitcast i8* %vaarg.addr14.in to i32*, !dbg !342
  %25 = load i32, i32* %vaarg.addr14, align 4, !dbg !342
  %add = add i32 %25, %ret.025, !dbg !347
  call void @llvm.dbg.value(metadata i32 %add, metadata !328, metadata !DIExpression()), !dbg !329
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end, %vaarg.end13
  %ret.1 = phi i32 [ %sub, %vaarg.end ], [ %add, %vaarg.end13 ], !dbg !337
  call void @llvm.dbg.value(metadata i32 %ret.1, metadata !328, metadata !DIExpression()), !dbg !329
  %inc = add nuw i32 %i.024, 1, !dbg !348
  call void @llvm.dbg.value(metadata i32 %inc, metadata !326, metadata !DIExpression()), !dbg !329
  %exitcond.not = icmp eq i32 %n, %inc, !dbg !333
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !336, !llvm.loop !349

for.end:                                          ; preds = %for.inc, %entry
  %ret.0.lcssa = phi i32 [ 0, %entry ], [ %ret.1, %for.inc ], !dbg !329
  %26 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !330
  call void @llvm.dbg.value(metadata i32 %ret.0.lcssa, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.va_end(i8* nonnull %26), !dbg !351
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %26) #2, !dbg !352
  ret i32 %ret.0.lcssa, !dbg !353

; uselistorder directives
  uselistorder i64 %2, { 2, 0, 1 }
  uselistorder i32 %ret.025, { 1, 0 }
  uselistorder [1 x %struct.__va_list_tag]* %args, { 7, 0, 1, 4, 2, 3, 6, 5, 8 }
  uselistorder i32 0, { 2, 14, 4, 3, 1, 7, 9, 8, 15, 0, 5, 16, 10, 17, 18, 11, 6, 19, 12, 20, 13, 21 }
  uselistorder label %for.inc, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
}

declare dso_local i32 @DBG(...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind
define dso_local void @variadic_2(i8* nocapture readonly %fmt, ...) local_unnamed_addr #0 !dbg !354 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !360, metadata !DIExpression()), !dbg !369
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !370
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #2, !dbg !370
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !361, metadata !DIExpression()), !dbg !371
  call void @llvm.va_start(i8* nonnull %0), !dbg !372
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !360, metadata !DIExpression()), !dbg !369
  %1 = load i8, i8* %fmt, align 1, !dbg !373
  %tobool.not32 = icmp eq i8 %1, 0, !dbg !374
  br i1 %tobool.not32, label %for.end, label %for.body.lr.ph, !dbg !374

for.body.lr.ph:                                   ; preds = %entry
  %scevgep = getelementptr i8, i8* %fmt, i64 1, !dbg !374
  br label %for.body, !dbg !374

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %lsr.iv = phi i8* [ %scevgep, %for.body.lr.ph ], [ %scevgep34, %for.inc ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !360, metadata !DIExpression()), !dbg !369
  %scevgep35 = getelementptr i8, i8* %lsr.iv, i64 -1, !dbg !375
  %call = call i32 (i32, ...) bitcast (i32 (...)* @DBG to i32 (i32, ...)*)(i32 136) #5, !dbg !375
  %2 = load i8, i8* %scevgep35, align 1, !dbg !376
  %conv = sext i8 %2 to i32, !dbg !376
  %cmp = icmp eq i8 %2, 100, !dbg !377
  br i1 %cmp, label %if.then, label %if.end, !dbg !378

if.then:                                          ; preds = %for.body
  %3 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !379
  %gp_offset = load i32, i32* %3, align 16, !dbg !382
  %4 = zext i32 %gp_offset to i64, !dbg !382
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !382
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !382

vaarg.in_reg:                                     ; preds = %if.then
  %5 = trunc i64 %4 to i32
  %6 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !379
  %7 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !382
  %sunkaddr = getelementptr inbounds i8, i8* %7, i64 16, !dbg !382
  %8 = bitcast i8* %sunkaddr to i8**, !dbg !382
  %reg_save_area = load i8*, i8** %8, align 16, !dbg !382
  %9 = getelementptr i8, i8* %reg_save_area, i64 %4, !dbg !382
  %10 = add nuw nsw i32 %5, 8, !dbg !382
  store i32 %10, i32* %6, align 16, !dbg !382
  br label %vaarg.end, !dbg !382

vaarg.in_mem:                                     ; preds = %if.then
  %11 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !382
  %sunkaddr37 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !382
  %12 = bitcast i8* %sunkaddr37 to i8**, !dbg !382
  %overflow_arg_area = load i8*, i8** %12, align 8, !dbg !382
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !382
  store i8* %overflow_arg_area.next, i8** %12, align 8, !dbg !382
  br label %vaarg.end, !dbg !382

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %9, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !382
  %13 = load i32, i32* %vaarg.addr, align 4, !dbg !382
  call void @llvm.dbg.value(metadata i32 %13, metadata !362, metadata !DIExpression()), !dbg !383
  %call4 = call i32 (i32, ...) bitcast (i32 (...)* @MYmyprint_int to i32 (i32, ...)*)(i32 %13) #5, !dbg !384
  br label %for.inc

if.end:                                           ; preds = %for.body
  %14 = trunc i32 %conv to i8
  call void @llvm.dbg.value(metadata i32 %conv, metadata !368, metadata !DIExpression()), !dbg !385
  %cmp7 = icmp eq i8 %14, 99, !dbg !386
  br i1 %cmp7, label %if.then9, label %if.end22, !dbg !387

if.then9:                                         ; preds = %if.end
  %15 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !379
  %gp_offset12 = load i32, i32* %15, align 16, !dbg !388
  %16 = zext i32 %gp_offset12 to i64, !dbg !388
  %fits_in_gp13 = icmp ult i32 %gp_offset12, 41, !dbg !388
  br i1 %fits_in_gp13, label %vaarg.in_reg14, label %vaarg.in_mem16, !dbg !388

vaarg.in_reg14:                                   ; preds = %if.then9
  %17 = trunc i64 %16 to i32
  %18 = bitcast [1 x %struct.__va_list_tag]* %args to i32*, !dbg !379
  %19 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !388
  %sunkaddr38 = getelementptr inbounds i8, i8* %19, i64 16, !dbg !388
  %20 = bitcast i8* %sunkaddr38 to i8**, !dbg !388
  %reg_save_area15 = load i8*, i8** %20, align 16, !dbg !388
  %21 = getelementptr i8, i8* %reg_save_area15, i64 %16, !dbg !388
  %22 = add nuw nsw i32 %17, 8, !dbg !388
  store i32 %22, i32* %18, align 16, !dbg !388
  br label %vaarg.end20, !dbg !388

vaarg.in_mem16:                                   ; preds = %if.then9
  %23 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !388
  %sunkaddr39 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !388
  %24 = bitcast i8* %sunkaddr39 to i8**, !dbg !388
  %overflow_arg_area18 = load i8*, i8** %24, align 8, !dbg !388
  %overflow_arg_area.next19 = getelementptr i8, i8* %overflow_arg_area18, i64 8, !dbg !388
  store i8* %overflow_arg_area.next19, i8** %24, align 8, !dbg !388
  br label %vaarg.end20, !dbg !388

vaarg.end20:                                      ; preds = %vaarg.in_mem16, %vaarg.in_reg14
  %vaarg.addr21.in = phi i8* [ %21, %vaarg.in_reg14 ], [ %overflow_arg_area18, %vaarg.in_mem16 ]
  %vaarg.addr21 = bitcast i8* %vaarg.addr21.in to i32*, !dbg !388
  %25 = load i32, i32* %vaarg.addr21, align 4, !dbg !388
  call void @llvm.dbg.value(metadata i32 %25, metadata !368, metadata !DIExpression()), !dbg !385
  br label %if.end22, !dbg !389

if.end22:                                         ; preds = %vaarg.end20, %if.end
  %c.0 = phi i32 [ %25, %vaarg.end20 ], [ %conv, %if.end ], !dbg !385
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !368, metadata !DIExpression()), !dbg !385
  %call23 = call i32 (i32, ...) bitcast (i32 (...)* @MYmyprint_char to i32 (i32, ...)*)(i32 %c.0) #5, !dbg !390
  br label %for.inc, !dbg !391

for.inc:                                          ; preds = %if.end22, %vaarg.end
  call void @llvm.dbg.value(metadata i8* undef, metadata !360, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !369
  %26 = load i8, i8* %lsr.iv, align 1, !dbg !373
  %tobool.not = icmp eq i8 %26, 0, !dbg !374
  %scevgep34 = getelementptr i8, i8* %lsr.iv, i64 1, !dbg !374
  br i1 %tobool.not, label %for.end, label %for.body, !dbg !374, !llvm.loop !392

for.end:                                          ; preds = %for.inc, %entry
  %27 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !370
  call void @llvm.va_end(i8* nonnull %27), !dbg !394
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %27) #2, !dbg !395
  ret void, !dbg !395

; uselistorder directives
  uselistorder i64 %16, { 1, 0 }
  uselistorder i32 %gp_offset12, { 1, 0 }
  uselistorder i64 %4, { 1, 0 }
  uselistorder i32 %gp_offset, { 1, 0 }
  uselistorder i32 %conv, { 1, 0 }
  uselistorder i8* %lsr.iv, { 2, 0, 1 }
  uselistorder [1 x %struct.__va_list_tag]* %args, { 8, 0, 1, 7, 6, 2, 3, 4, 5, 9 }
  uselistorder i64 8, { 5, 0, 4, 1, 7, 2, 6, 3, 8, 9 }
  uselistorder i32 41, { 3, 2, 0, 1, 4, 5 }
  uselistorder i64 1, { 0, 1, 3, 4, 6, 5, 8, 7, 9, 2, 10 }
  uselistorder i8 0, { 1, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 22, 19, 20, 21, 24, 0, 1, 23, 5, 28, 26, 25, 27, 3, 2, 4, 29, 30, 31, 33, 32, 36, 34, 7, 35, 42, 6, 37, 38, 39, 40, 41, 43, 8, 44, 48, 47, 45, 46, 49, 10, 51, 9, 50, 52, 55, 53, 54, 57, 56, 13, 12, 16, 58, 11, 14, 15, 59, 62, 60, 61, 63, 17, 64, 67, 65, 66, 68, 18, 69, 71, 70 }
  uselistorder i32 1, { 8, 9, 10, 11, 12, 6, 13, 0, 14, 1, 7, 2, 3, 4, 5 }
  uselistorder label %for.body, { 1, 0 }
}

declare dso_local i32 @MYmyprint_char(...) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 e9e62cf08636a61a96ae6bd6404a0900be4363e0)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/localmem-tests/vla.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/localmem-tests")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 e9e62cf08636a61a96ae6bd6404a0900be4363e0)"}
!9 = distinct !DISubprogram(name: "vla_0", scope: !10, file: !10, line: 4, type: !11, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!10 = !DIFile(filename: "localmem-tests/vla.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !19, !23}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !9, file: !10, line: 4, type: !14)
!17 = !DILocalVariable(name: "__vla_expr0", scope: !9, type: !18, flags: DIFlagArtificial)
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DILocalVariable(name: "v", scope: !9, file: !10, line: 9, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: !17)
!23 = !DILocalVariable(name: "i", scope: !24, file: !10, line: 11, type: !14)
!24 = distinct !DILexicalBlock(scope: !9, file: !10, line: 11, column: 3)
!25 = !DILocation(line: 0, scope: !9)
!26 = !DILocation(line: 6, column: 9, scope: !27)
!27 = distinct !DILexicalBlock(scope: !9, file: !10, line: 6, column: 7)
!28 = !DILocation(line: 6, column: 7, scope: !9)
!29 = !DILocation(line: 9, column: 3, scope: !9)
!30 = !DILocation(line: 9, column: 7, scope: !9)
!31 = !DILocation(line: 0, scope: !24)
!32 = !DILocation(line: 11, column: 3, scope: !24)
!33 = !DILocation(line: 14, column: 10, scope: !9)
!34 = !DILocation(line: 14, column: 18, scope: !9)
!35 = !DILocation(line: 14, column: 15, scope: !9)
!36 = !DILocation(line: 14, column: 14, scope: !9)
!37 = !DILocation(line: 15, column: 1, scope: !9)
!38 = !DILocation(line: 12, column: 16, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !10, line: 11, column: 36)
!40 = distinct !DILexicalBlock(scope: !24, file: !10, line: 11, column: 3)
!41 = !DILocation(line: 12, column: 13, scope: !39)
!42 = !DILocation(line: 12, column: 10, scope: !39)
!43 = !DILocation(line: 11, column: 26, scope: !40)
!44 = distinct !{!44, !32, !45, !46, !47}
!45 = !DILocation(line: 13, column: 3, scope: !24)
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!"llvm.loop.vectorize.width", i32 1}
!48 = distinct !DISubprogram(name: "vla_11", scope: !10, file: !10, line: 17, type: !49, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!49 = !DISubroutineType(types: !50)
!50 = !{!13, !51, !14}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!52 = !{!53, !54, !55, !56, !60}
!53 = !DILocalVariable(name: "a", arg: 1, scope: !48, file: !10, line: 17, type: !51)
!54 = !DILocalVariable(name: "n", arg: 2, scope: !48, file: !10, line: 17, type: !14)
!55 = !DILocalVariable(name: "__vla_expr0", scope: !48, type: !18, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "v", scope: !48, file: !10, line: 22, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: !55)
!60 = !DILocalVariable(name: "i", scope: !61, file: !10, line: 24, type: !14)
!61 = distinct !DILexicalBlock(scope: !48, file: !10, line: 24, column: 3)
!62 = !DILocation(line: 0, scope: !48)
!63 = !DILocation(line: 19, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !48, file: !10, line: 19, column: 7)
!65 = !DILocation(line: 19, column: 7, scope: !48)
!66 = !DILocation(line: 22, column: 3, scope: !48)
!67 = !DILocation(line: 22, column: 7, scope: !48)
!68 = !DILocation(line: 0, scope: !61)
!69 = !DILocation(line: 24, column: 3, scope: !61)
!70 = !DILocation(line: 27, column: 10, scope: !48)
!71 = !DILocation(line: 27, column: 18, scope: !48)
!72 = !DILocation(line: 27, column: 15, scope: !48)
!73 = !DILocation(line: 27, column: 14, scope: !48)
!74 = !DILocation(line: 28, column: 1, scope: !48)
!75 = !DILocation(line: 25, column: 12, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !10, line: 24, column: 36)
!77 = distinct !DILexicalBlock(scope: !61, file: !10, line: 24, column: 3)
!78 = !DILocation(line: 25, column: 16, scope: !76)
!79 = !DILocation(line: 25, column: 10, scope: !76)
!80 = !DILocation(line: 24, column: 31, scope: !77)
!81 = !DILocation(line: 24, column: 26, scope: !77)
!82 = distinct !{!82, !69, !83, !46, !47}
!83 = !DILocation(line: 26, column: 3, scope: !61)
!84 = distinct !DISubprogram(name: "vla_12", scope: !10, file: !10, line: 30, type: !49, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!85 = !{!86, !87, !88, !89, !93, !95, !96}
!86 = !DILocalVariable(name: "a", arg: 1, scope: !84, file: !10, line: 30, type: !51)
!87 = !DILocalVariable(name: "n", arg: 2, scope: !84, file: !10, line: 30, type: !14)
!88 = !DILocalVariable(name: "__vla_expr0", scope: !84, type: !18, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "v", scope: !84, file: !10, line: 35, type: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: !88)
!93 = !DILocalVariable(name: "i", scope: !94, file: !10, line: 37, type: !14)
!94 = distinct !DILexicalBlock(scope: !84, file: !10, line: 37, column: 3)
!95 = !DILocalVariable(name: "ret", scope: !84, file: !10, line: 40, type: !13)
!96 = !DILocalVariable(name: "j", scope: !97, file: !10, line: 42, type: !14)
!97 = distinct !DILexicalBlock(scope: !84, file: !10, line: 42, column: 3)
!98 = !DILocation(line: 0, scope: !84)
!99 = !DILocation(line: 32, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !84, file: !10, line: 32, column: 7)
!101 = !DILocation(line: 32, column: 7, scope: !84)
!102 = !DILocation(line: 35, column: 3, scope: !84)
!103 = !DILocation(line: 35, column: 7, scope: !84)
!104 = !DILocation(line: 0, scope: !94)
!105 = !DILocation(line: 37, column: 3, scope: !94)
!106 = !DILocation(line: 0, scope: !97)
!107 = !DILocation(line: 42, column: 3, scope: !97)
!108 = !DILocation(line: 42, column: 26, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !10, line: 42, column: 3)
!110 = !DILocation(line: 38, column: 12, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !10, line: 37, column: 36)
!112 = distinct !DILexicalBlock(scope: !94, file: !10, line: 37, column: 3)
!113 = !DILocation(line: 38, column: 16, scope: !111)
!114 = !DILocation(line: 38, column: 10, scope: !111)
!115 = !DILocation(line: 37, column: 31, scope: !112)
!116 = !DILocation(line: 37, column: 26, scope: !112)
!117 = distinct !{!117, !105, !118, !46, !47}
!118 = !DILocation(line: 39, column: 3, scope: !94)
!119 = !DILocation(line: 46, column: 1, scope: !84)
!120 = !DILocation(line: 43, column: 12, scope: !121)
!121 = distinct !DILexicalBlock(scope: !109, file: !10, line: 42, column: 36)
!122 = !DILocation(line: 43, column: 9, scope: !121)
!123 = !DILocation(line: 42, column: 31, scope: !109)
!124 = distinct !{!124, !107, !125, !46, !47}
!125 = !DILocation(line: 44, column: 3, scope: !97)
!126 = distinct !DISubprogram(name: "vla_13", scope: !10, file: !10, line: 48, type: !127, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !51, !14}
!129 = !{!130, !131, !132, !133, !137, !139}
!130 = !DILocalVariable(name: "a", arg: 1, scope: !126, file: !10, line: 48, type: !51)
!131 = !DILocalVariable(name: "n", arg: 2, scope: !126, file: !10, line: 48, type: !14)
!132 = !DILocalVariable(name: "__vla_expr0", scope: !126, type: !18, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "v", scope: !126, file: !10, line: 52, type: !134)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: !132)
!137 = !DILocalVariable(name: "i", scope: !138, file: !10, line: 54, type: !14)
!138 = distinct !DILexicalBlock(scope: !126, file: !10, line: 54, column: 3)
!139 = !DILocalVariable(name: "j", scope: !140, file: !10, line: 59, type: !14)
!140 = distinct !DILexicalBlock(scope: !126, file: !10, line: 59, column: 3)
!141 = !DILocation(line: 0, scope: !126)
!142 = !DILocation(line: 50, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !126, file: !10, line: 50, column: 7)
!144 = !DILocation(line: 50, column: 7, scope: !126)
!145 = !DILocation(line: 52, column: 3, scope: !126)
!146 = !DILocation(line: 52, column: 7, scope: !126)
!147 = !DILocation(line: 0, scope: !138)
!148 = !DILocation(line: 54, column: 3, scope: !138)
!149 = !DILocation(line: 57, column: 3, scope: !126)
!150 = !DILocation(line: 0, scope: !140)
!151 = !DILocation(line: 59, column: 3, scope: !140)
!152 = !DILocation(line: 59, column: 26, scope: !153)
!153 = distinct !DILexicalBlock(scope: !140, file: !10, line: 59, column: 3)
!154 = !DILocation(line: 55, column: 12, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !10, line: 54, column: 36)
!156 = distinct !DILexicalBlock(scope: !138, file: !10, line: 54, column: 3)
!157 = !DILocation(line: 55, column: 16, scope: !155)
!158 = !DILocation(line: 55, column: 10, scope: !155)
!159 = !DILocation(line: 54, column: 31, scope: !156)
!160 = !DILocation(line: 54, column: 26, scope: !156)
!161 = distinct !{!161, !148, !162, !46, !47}
!162 = !DILocation(line: 56, column: 3, scope: !138)
!163 = !DILocation(line: 62, column: 1, scope: !126)
!164 = !DILocation(line: 60, column: 19, scope: !165)
!165 = distinct !DILexicalBlock(scope: !153, file: !10, line: 59, column: 36)
!166 = !DILocation(line: 60, column: 5, scope: !165)
!167 = !DILocation(line: 59, column: 31, scope: !153)
!168 = distinct !{!168, !151, !169, !46, !47}
!169 = !DILocation(line: 61, column: 3, scope: !140)
!170 = distinct !DISubprogram(name: "vla_21", scope: !10, file: !10, line: 64, type: !49, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !171)
!171 = !{!172, !173, !174, !175, !179, !180, !184}
!172 = !DILocalVariable(name: "a", arg: 1, scope: !170, file: !10, line: 64, type: !51)
!173 = !DILocalVariable(name: "n", arg: 2, scope: !170, file: !10, line: 64, type: !14)
!174 = !DILocalVariable(name: "__vla_expr0", scope: !170, type: !18, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: "v", scope: !170, file: !10, line: 69, type: !176)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: !174)
!179 = !DILocalVariable(name: "__vla_expr1", scope: !170, type: !18, flags: DIFlagArtificial)
!180 = !DILocalVariable(name: "w", scope: !170, file: !10, line: 69, type: !181)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: !179)
!184 = !DILocalVariable(name: "i", scope: !185, file: !10, line: 71, type: !14)
!185 = distinct !DILexicalBlock(scope: !170, file: !10, line: 71, column: 3)
!186 = !DILocation(line: 0, scope: !170)
!187 = !DILocation(line: 66, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !170, file: !10, line: 66, column: 7)
!189 = !DILocation(line: 66, column: 7, scope: !170)
!190 = !DILocation(line: 69, column: 3, scope: !170)
!191 = !DILocation(line: 69, column: 7, scope: !170)
!192 = !DILocation(line: 69, column: 13, scope: !170)
!193 = !DILocation(line: 0, scope: !185)
!194 = !DILocation(line: 71, column: 3, scope: !185)
!195 = !DILocation(line: 75, column: 18, scope: !170)
!196 = !DILocation(line: 75, column: 30, scope: !170)
!197 = !DILocation(line: 75, column: 26, scope: !170)
!198 = !DILocation(line: 75, column: 23, scope: !170)
!199 = !DILocation(line: 75, column: 22, scope: !170)
!200 = !DILocation(line: 75, column: 29, scope: !170)
!201 = !DILocation(line: 75, column: 35, scope: !170)
!202 = !DILocation(line: 75, column: 34, scope: !170)
!203 = !DILocation(line: 75, column: 10, scope: !170)
!204 = !DILocation(line: 76, column: 1, scope: !170)
!205 = !DILocation(line: 72, column: 12, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !10, line: 71, column: 36)
!207 = distinct !DILexicalBlock(scope: !185, file: !10, line: 71, column: 3)
!208 = !DILocation(line: 72, column: 16, scope: !206)
!209 = !DILocation(line: 72, column: 10, scope: !206)
!210 = !DILocation(line: 73, column: 16, scope: !206)
!211 = !DILocation(line: 73, column: 10, scope: !206)
!212 = !DILocation(line: 71, column: 31, scope: !207)
!213 = !DILocation(line: 71, column: 26, scope: !207)
!214 = distinct !{!214, !194, !215, !46, !47}
!215 = !DILocation(line: 74, column: 3, scope: !185)
!216 = distinct !DISubprogram(name: "vla_22", scope: !10, file: !10, line: 78, type: !49, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!217 = !{!218, !219, !220, !221, !225, !226, !230, !232, !235, !239, !241}
!218 = !DILocalVariable(name: "a", arg: 1, scope: !216, file: !10, line: 78, type: !51)
!219 = !DILocalVariable(name: "n", arg: 2, scope: !216, file: !10, line: 78, type: !14)
!220 = !DILocalVariable(name: "__vla_expr0", scope: !216, type: !18, flags: DIFlagArtificial)
!221 = !DILocalVariable(name: "v", scope: !216, file: !10, line: 83, type: !222)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: !220)
!225 = !DILocalVariable(name: "__vla_expr1", scope: !216, type: !18, flags: DIFlagArtificial)
!226 = !DILocalVariable(name: "w", scope: !216, file: !10, line: 83, type: !227)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: !225)
!230 = !DILocalVariable(name: "i", scope: !231, file: !10, line: 84, type: !14)
!231 = distinct !DILexicalBlock(scope: !216, file: !10, line: 84, column: 3)
!232 = !DILocalVariable(name: "__vla_expr2", scope: !233, type: !18, flags: DIFlagArtificial)
!233 = distinct !DILexicalBlock(scope: !234, file: !10, line: 84, column: 38)
!234 = distinct !DILexicalBlock(scope: !231, file: !10, line: 84, column: 3)
!235 = !DILocalVariable(name: "vv", scope: !233, file: !10, line: 85, type: !236)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: !232)
!239 = !DILocalVariable(name: "j", scope: !240, file: !10, line: 87, type: !14)
!240 = distinct !DILexicalBlock(scope: !233, file: !10, line: 87, column: 5)
!241 = !DILabel(scope: !216, name: "end", file: !10, line: 96)
!242 = !DILocation(line: 0, scope: !216)
!243 = !DILocation(line: 80, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !216, file: !10, line: 80, column: 7)
!245 = !DILocation(line: 80, column: 7, scope: !216)
!246 = !DILocation(line: 83, column: 3, scope: !216)
!247 = !DILocation(line: 83, column: 7, scope: !216)
!248 = !DILocation(line: 83, column: 13, scope: !216)
!249 = !DILocation(line: 0, scope: !231)
!250 = !DILocation(line: 84, column: 29, scope: !234)
!251 = !DILocation(line: 84, column: 26, scope: !234)
!252 = !DILocation(line: 84, column: 3, scope: !231)
!253 = !DILocation(line: 87, column: 5, scope: !240)
!254 = !DILocation(line: 85, column: 18, scope: !233)
!255 = !DILocation(line: 85, column: 5, scope: !233)
!256 = !DILocation(line: 0, scope: !233)
!257 = !DILocation(line: 85, column: 14, scope: !233)
!258 = !DILocation(line: 86, column: 13, scope: !233)
!259 = !DILocation(line: 86, column: 11, scope: !233)
!260 = !DILocation(line: 0, scope: !240)
!261 = !DILocation(line: 87, column: 28, scope: !262)
!262 = distinct !DILexicalBlock(scope: !240, file: !10, line: 87, column: 5)
!263 = !DILocation(line: 88, column: 11, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !10, line: 88, column: 11)
!265 = distinct !DILexicalBlock(scope: !262, file: !10, line: 87, column: 39)
!266 = !DILocation(line: 88, column: 16, scope: !264)
!267 = !DILocation(line: 88, column: 11, scope: !265)
!268 = !DILocation(line: 90, column: 19, scope: !265)
!269 = !DILocation(line: 90, column: 7, scope: !265)
!270 = !DILocation(line: 90, column: 13, scope: !265)
!271 = !DILocation(line: 87, column: 34, scope: !262)
!272 = distinct !{!272, !253, !273}
!273 = !DILocation(line: 91, column: 5, scope: !240)
!274 = !DILocation(line: 92, column: 12, scope: !233)
!275 = !DILocation(line: 92, column: 5, scope: !233)
!276 = !DILocation(line: 92, column: 10, scope: !233)
!277 = !DILocation(line: 93, column: 12, scope: !233)
!278 = !DILocation(line: 93, column: 16, scope: !233)
!279 = !DILocation(line: 93, column: 5, scope: !233)
!280 = !DILocation(line: 93, column: 10, scope: !233)
!281 = !DILocation(line: 94, column: 3, scope: !234)
!282 = !DILocation(line: 95, column: 10, scope: !216)
!283 = !DILocation(line: 95, column: 15, scope: !216)
!284 = !DILocation(line: 95, column: 22, scope: !216)
!285 = !DILocation(line: 95, column: 27, scope: !216)
!286 = !DILocation(line: 95, column: 14, scope: !216)
!287 = !DILocation(line: 95, column: 26, scope: !216)
!288 = !DILocation(line: 95, column: 21, scope: !216)
!289 = !DILocation(line: 95, column: 3, scope: !216)
!290 = !DILocation(line: 98, column: 1, scope: !216)
!291 = distinct !DISubprogram(name: "variadic_0", scope: !10, file: !10, line: 100, type: !292, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{!13, !14, null}
!294 = !{!295, !296, !310}
!295 = !DILocalVariable(name: "n", arg: 1, scope: !291, file: !10, line: 100, type: !14)
!296 = !DILocalVariable(name: "args", scope: !291, file: !10, line: 104, type: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !298, line: 14, baseType: !299)
!298 = !DIFile(filename: "llvm-project/build/lib/clang/12.0.0/include/stdarg.h", directory: "/home/adityanathan/superopt-project")
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 104, baseType: !300)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 192, elements: !308)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 104, size: 192, elements: !302)
!302 = !{!303, !304, !305, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !301, file: !1, line: 104, baseType: !14, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !301, file: !1, line: 104, baseType: !14, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !301, file: !1, line: 104, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !301, file: !1, line: 104, baseType: !306, size: 64, offset: 128)
!308 = !{!309}
!309 = !DISubrange(count: 1)
!310 = !DILocalVariable(name: "ret", scope: !291, file: !10, line: 106, type: !14)
!311 = !DILocation(line: 0, scope: !291)
!312 = !DILocation(line: 102, column: 14, scope: !313)
!313 = distinct !DILexicalBlock(scope: !291, file: !10, line: 102, column: 7)
!314 = !DILocation(line: 104, column: 3, scope: !291)
!315 = !DILocation(line: 104, column: 11, scope: !291)
!316 = !DILocation(line: 105, column: 3, scope: !291)
!317 = !DILocation(line: 106, column: 18, scope: !291)
!318 = !DILocation(line: 107, column: 12, scope: !291)
!319 = !DILocation(line: 107, column: 10, scope: !291)
!320 = !DILocation(line: 107, column: 31, scope: !291)
!321 = !DILocation(line: 107, column: 29, scope: !291)
!322 = !DILocation(line: 108, column: 1, scope: !291)
!323 = distinct !DISubprogram(name: "variadic_1", scope: !10, file: !10, line: 110, type: !292, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !324)
!324 = !{!325, !326, !327, !328}
!325 = !DILocalVariable(name: "n", arg: 1, scope: !323, file: !10, line: 110, type: !14)
!326 = !DILocalVariable(name: "i", scope: !323, file: !10, line: 112, type: !14)
!327 = !DILocalVariable(name: "args", scope: !323, file: !10, line: 113, type: !297)
!328 = !DILocalVariable(name: "ret", scope: !323, file: !10, line: 114, type: !13)
!329 = !DILocation(line: 0, scope: !323)
!330 = !DILocation(line: 113, column: 3, scope: !323)
!331 = !DILocation(line: 113, column: 11, scope: !323)
!332 = !DILocation(line: 116, column: 3, scope: !323)
!333 = !DILocation(line: 118, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !10, line: 118, column: 3)
!335 = distinct !DILexicalBlock(scope: !323, file: !10, line: 118, column: 3)
!336 = !DILocation(line: 118, column: 3, scope: !335)
!337 = !DILocation(line: 0, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !10, line: 120, column: 9)
!339 = distinct !DILexicalBlock(scope: !334, file: !10, line: 118, column: 27)
!340 = !DILocation(line: 119, column: 5, scope: !339)
!341 = !DILocation(line: 120, column: 11, scope: !338)
!342 = !DILocation(line: 123, column: 14, scope: !338)
!343 = !DILocation(line: 121, column: 14, scope: !338)
!344 = !DILocation(line: 120, column: 9, scope: !339)
!345 = !DILocation(line: 121, column: 11, scope: !338)
!346 = !DILocation(line: 121, column: 7, scope: !338)
!347 = !DILocation(line: 123, column: 11, scope: !338)
!348 = !DILocation(line: 118, column: 22, scope: !334)
!349 = distinct !{!349, !336, !350, !46, !47}
!350 = !DILocation(line: 124, column: 3, scope: !335)
!351 = !DILocation(line: 125, column: 3, scope: !323)
!352 = !DILocation(line: 128, column: 1, scope: !323)
!353 = !DILocation(line: 127, column: 3, scope: !323)
!354 = distinct !DISubprogram(name: "variadic_2", scope: !10, file: !10, line: 130, type: !355, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !359)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357, null}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!359 = !{!360, !361, !362, !368}
!360 = !DILocalVariable(name: "fmt", arg: 1, scope: !354, file: !10, line: 130, type: !357)
!361 = !DILocalVariable(name: "args", scope: !354, file: !10, line: 132, type: !297)
!362 = !DILocalVariable(name: "i", scope: !363, file: !10, line: 138, type: !13)
!363 = distinct !DILexicalBlock(scope: !364, file: !10, line: 137, column: 24)
!364 = distinct !DILexicalBlock(scope: !365, file: !10, line: 137, column: 11)
!365 = distinct !DILexicalBlock(scope: !366, file: !10, line: 135, column: 26)
!366 = distinct !DILexicalBlock(scope: !367, file: !10, line: 135, column: 5)
!367 = distinct !DILexicalBlock(scope: !354, file: !10, line: 135, column: 5)
!368 = !DILocalVariable(name: "c", scope: !365, file: !10, line: 142, type: !13)
!369 = !DILocation(line: 0, scope: !354)
!370 = !DILocation(line: 132, column: 5, scope: !354)
!371 = !DILocation(line: 132, column: 13, scope: !354)
!372 = !DILocation(line: 133, column: 5, scope: !354)
!373 = !DILocation(line: 135, column: 13, scope: !366)
!374 = !DILocation(line: 135, column: 5, scope: !367)
!375 = !DILocation(line: 136, column: 7, scope: !365)
!376 = !DILocation(line: 137, column: 11, scope: !364)
!377 = !DILocation(line: 137, column: 16, scope: !364)
!378 = !DILocation(line: 137, column: 11, scope: !365)
!379 = !DILocation(line: 0, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !10, line: 143, column: 24)
!381 = distinct !DILexicalBlock(scope: !365, file: !10, line: 143, column: 11)
!382 = !DILocation(line: 138, column: 17, scope: !363)
!383 = !DILocation(line: 0, scope: !363)
!384 = !DILocation(line: 139, column: 9, scope: !363)
!385 = !DILocation(line: 0, scope: !365)
!386 = !DILocation(line: 143, column: 16, scope: !381)
!387 = !DILocation(line: 143, column: 11, scope: !365)
!388 = !DILocation(line: 146, column: 13, scope: !380)
!389 = !DILocation(line: 147, column: 7, scope: !380)
!390 = !DILocation(line: 148, column: 7, scope: !365)
!391 = !DILocation(line: 149, column: 5, scope: !365)
!392 = distinct !{!392, !374, !393}
!393 = !DILocation(line: 149, column: 5, scope: !367)
!394 = !DILocation(line: 151, column: 5, scope: !354)
!395 = !DILocation(line: 152, column: 1, scope: !354)
