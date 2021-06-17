; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s174.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s174.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !32
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !26
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !28
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !34
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !36
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !38
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !40
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !45
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !47
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !49
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !51
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !53
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !56
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !58

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s174(i32 %M) local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 %M, metadata !69, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !73
  %cmp12 = icmp sgt i32 %M, 0, !dbg !74
  br i1 %cmp12, label %for.body.preheader, label %for.cond.cleanup, !dbg !76

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %M to i64, !dbg !74
  %min.iters.check = icmp ult i32 %M, 8, !dbg !76
  br i1 %min.iters.check, label %for.body.preheader22, label %vector.scevcheck, !dbg !76

for.body.preheader22:                             ; preds = %middle.block, %vector.memcheck, %vector.scevcheck, %for.body.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %0 = xor i64 %indvars.iv.ph, -1, !dbg !76
  %xtraiter = and i64 %wide.trip.count, 1, !dbg !76
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !76
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol, !dbg !76

for.body.prol:                                    ; preds = %for.body.preheader22
  call void @llvm.dbg.value(metadata i64 undef, metadata !70, metadata !DIExpression()), !dbg !73
  %arrayidx.prol = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %indvars.iv.ph, !dbg !77
  %1 = load i32, i32* %arrayidx.prol, align 16, !dbg !77
  %arrayidx2.prol = getelementptr [32000 x i32], [32000 x i32]* @b, i64 0, i64 %indvars.iv.ph, !dbg !79
  %2 = load i32, i32* %arrayidx2.prol, align 16, !dbg !79
  %add.prol = add i32 %2, %1, !dbg !80
  %3 = trunc i64 %indvars.iv.ph to i32, !dbg !81
  %add3.prol = add i32 %3, %M, !dbg !81
  %idxprom4.prol = sext i32 %add3.prol to i64, !dbg !82
  %arrayidx5.prol = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %idxprom4.prol, !dbg !82
  store i32 %add.prol, i32* %arrayidx5.prol, align 4, !dbg !83
  %indvars.iv.next.prol = or i64 %indvars.iv.ph, 1, !dbg !84
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.prol, metadata !70, metadata !DIExpression()), !dbg !73
  br label %for.body.prol.loopexit, !dbg !76

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader22
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader22 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %4 = sub nsw i64 0, %wide.trip.count, !dbg !76
  %5 = icmp eq i64 %0, %4, !dbg !76
  br i1 %5, label %for.cond.cleanup, label %for.body.preheader25, !dbg !76

for.body.preheader25:                             ; preds = %for.body.prol.loopexit
  br label %for.body, !dbg !76

vector.scevcheck:                                 ; preds = %for.body.preheader
  %6 = add nsw i64 %wide.trip.count, -1, !dbg !76
  %7 = trunc i64 %6 to i32, !dbg !76
  %8 = add i32 %7, %M, !dbg !76
  %9 = icmp slt i32 %8, %M, !dbg !76
  %10 = icmp ugt i64 %6, 4294967295, !dbg !76
  %11 = or i1 %9, %10, !dbg !76
  br i1 %11, label %for.body.preheader22, label %vector.memcheck, !dbg !76

vector.memcheck:                                  ; preds = %vector.scevcheck
  %12 = sext i32 %M to i64, !dbg !76
  %scevgep = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %12, !dbg !76
  %13 = add nsw i64 %12, %wide.trip.count, !dbg !76
  %scevgep15 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %13, !dbg !76
  %scevgep17 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %wide.trip.count, !dbg !76
  %bound0 = icmp ult i32* %scevgep, %scevgep17, !dbg !76
  %bound1 = icmp ugt i32* %scevgep15, getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 0), !dbg !76
  %found.conflict = and i1 %bound0, %bound1, !dbg !76
  br i1 %found.conflict, label %for.body.preheader22, label %vector.ph, !dbg !76

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288, !dbg !76
  %14 = add nsw i64 %n.vec, -8, !dbg !76
  %15 = lshr exact i64 %14, 3, !dbg !76
  %16 = add nuw nsw i64 %15, 1, !dbg !76
  %17 = icmp eq i64 %14, 0, !dbg !76
  br i1 %17, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !76

vector.ph.new:                                    ; preds = %vector.ph
  %18 = add i32 %M, 8, !dbg !76
  %19 = zext i32 %18 to i64, !dbg !76
  %20 = lshr i64 %16, 1, !dbg !76
  %21 = mul nsw i64 %20, -2, !dbg !76
  br label %vector.body, !dbg !76

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ %21, %vector.ph.new ], !dbg !84
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !84
  %22 = shl i64 %index, 2, !dbg !77
  %uglygep42 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %22, !dbg !77
  %uglygep4243 = bitcast i8* %uglygep42 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep4243, align 16, !dbg !77, !alias.scope !85
  %23 = shl i64 %index, 2, !dbg !77
  %uglygep44 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %23, !dbg !77
  %uglygep4445 = bitcast i8* %uglygep44 to <4 x i32>*
  %scevgep46 = getelementptr <4 x i32>, <4 x i32>* %uglygep4445, i64 1, !dbg !77
  %wide.load19 = load <4 x i32>, <4 x i32>* %scevgep46, align 16, !dbg !77, !alias.scope !85
  %24 = shl i64 %index, 2, !dbg !79
  %uglygep53 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %24, !dbg !79
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %wide.load20 = load <4 x i32>, <4 x i32>* %uglygep5354, align 16, !dbg !79
  %25 = shl i64 %index, 2, !dbg !79
  %uglygep55 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %25, !dbg !79
  %uglygep5556 = bitcast i8* %uglygep55 to <4 x i32>*
  %scevgep57 = getelementptr <4 x i32>, <4 x i32>* %uglygep5556, i64 1, !dbg !79
  %wide.load21 = load <4 x i32>, <4 x i32>* %scevgep57, align 16, !dbg !79
  %26 = add <4 x i32> %wide.load20, %wide.load, !dbg !80
  %27 = add <4 x i32> %wide.load21, %wide.load19, !dbg !80
  %28 = add i64 %wide.trip.count, %index, !dbg !82
  %tmp59 = trunc i64 %28 to i32
  %29 = sext i32 %tmp59 to i64, !dbg !82
  %30 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %29, !dbg !82
  %31 = bitcast i32* %30 to <4 x i32>*, !dbg !83
  store <4 x i32> %26, <4 x i32>* %31, align 4, !dbg !83, !alias.scope !88, !noalias !85
  %32 = getelementptr i32, i32* %30, i64 4, !dbg !83
  %33 = bitcast i32* %32 to <4 x i32>*, !dbg !83
  store <4 x i32> %27, <4 x i32>* %33, align 4, !dbg !83, !alias.scope !88, !noalias !85
  %34 = shl i64 %index, 2, !dbg !77
  %uglygep39 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %34, !dbg !77
  %uglygep3940 = bitcast i8* %uglygep39 to <4 x i32>*
  %scevgep41 = getelementptr <4 x i32>, <4 x i32>* %uglygep3940, i64 2, !dbg !77
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep41, align 16, !dbg !77, !alias.scope !85
  %35 = shl i64 %index, 2, !dbg !77
  %uglygep36 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %35, !dbg !77
  %uglygep3637 = bitcast i8* %uglygep36 to <4 x i32>*
  %scevgep38 = getelementptr <4 x i32>, <4 x i32>* %uglygep3637, i64 3, !dbg !77
  %wide.load19.1 = load <4 x i32>, <4 x i32>* %scevgep38, align 16, !dbg !77, !alias.scope !85
  %36 = shl i64 %index, 2, !dbg !79
  %uglygep50 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %36, !dbg !79
  %uglygep5051 = bitcast i8* %uglygep50 to <4 x i32>*
  %scevgep52 = getelementptr <4 x i32>, <4 x i32>* %uglygep5051, i64 2, !dbg !79
  %wide.load20.1 = load <4 x i32>, <4 x i32>* %scevgep52, align 16, !dbg !79
  %37 = shl i64 %index, 2, !dbg !79
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %37, !dbg !79
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %scevgep49 = getelementptr <4 x i32>, <4 x i32>* %uglygep4748, i64 3, !dbg !79
  %wide.load21.1 = load <4 x i32>, <4 x i32>* %scevgep49, align 16, !dbg !79
  %38 = add <4 x i32> %wide.load20.1, %wide.load.1, !dbg !80
  %39 = add <4 x i32> %wide.load21.1, %wide.load19.1, !dbg !80
  %40 = add i64 %19, %index, !dbg !82
  %tmp58 = trunc i64 %40 to i32
  %41 = sext i32 %tmp58 to i64, !dbg !82
  %42 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %41, !dbg !82
  %43 = bitcast i32* %42 to <4 x i32>*, !dbg !83
  store <4 x i32> %38, <4 x i32>* %43, align 4, !dbg !83, !alias.scope !88, !noalias !85
  %44 = getelementptr i32, i32* %42, i64 4, !dbg !83
  %45 = bitcast i32* %44 to <4 x i32>*, !dbg !83
  store <4 x i32> %39, <4 x i32>* %45, align 4, !dbg !83, !alias.scope !88, !noalias !85
  %index.next.1 = add i64 %index, 16, !dbg !84
  %lsr.iv.next = add i64 %lsr.iv, 2, !dbg !84
  %niter.ncmp.1 = icmp eq i64 %lsr.iv.next, 0, !dbg !84
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !84, !llvm.loop !90

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %46 = and i64 %16, 1, !dbg !76
  %lcmp.mod24.not = icmp eq i64 %46, 0, !dbg !84
  br i1 %lcmp.mod24.not, label %middle.block, label %vector.body.epil, !dbg !84

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %47 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %index.unr, !dbg !77
  %48 = bitcast i32* %47 to <4 x i32>*, !dbg !77
  %wide.load.epil = load <4 x i32>, <4 x i32>* %48, align 16, !dbg !77, !alias.scope !85
  %49 = getelementptr i32, i32* %47, i64 4, !dbg !77
  %50 = bitcast i32* %49 to <4 x i32>*, !dbg !77
  %wide.load19.epil = load <4 x i32>, <4 x i32>* %50, align 16, !dbg !77, !alias.scope !85
  %51 = getelementptr [32000 x i32], [32000 x i32]* @b, i64 0, i64 %index.unr, !dbg !79
  %52 = bitcast i32* %51 to <4 x i32>*, !dbg !79
  %wide.load20.epil = load <4 x i32>, <4 x i32>* %52, align 16, !dbg !79
  %53 = getelementptr i32, i32* %51, i64 4, !dbg !79
  %54 = bitcast i32* %53 to <4 x i32>*, !dbg !79
  %wide.load21.epil = load <4 x i32>, <4 x i32>* %54, align 16, !dbg !79
  %55 = add <4 x i32> %wide.load20.epil, %wide.load.epil, !dbg !80
  %56 = add <4 x i32> %wide.load21.epil, %wide.load19.epil, !dbg !80
  %57 = trunc i64 %index.unr to i32, !dbg !80
  %58 = add i32 %57, %M, !dbg !81
  %59 = sext i32 %58 to i64, !dbg !82
  %60 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %59, !dbg !82
  %61 = bitcast i32* %60 to <4 x i32>*, !dbg !83
  store <4 x i32> %55, <4 x i32>* %61, align 4, !dbg !83, !alias.scope !88, !noalias !85
  %62 = getelementptr i32, i32* %60, i64 4, !dbg !83
  %63 = bitcast i32* %62 to <4 x i32>*, !dbg !83
  store <4 x i32> %56, <4 x i32>* %63, align 4, !dbg !83, !alias.scope !88, !noalias !85
  br label %middle.block, !dbg !76

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count, !dbg !76
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader22, !dbg !76

for.cond.cleanup:                                 ; preds = %for.body, %for.body.prol.loopexit, %middle.block, %entry
  ret i32 0, !dbg !93

for.body:                                         ; preds = %for.body.preheader25, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body ], [ %indvars.iv.unr, %for.body.preheader25 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !70, metadata !DIExpression()), !dbg !73
  %64 = shl i64 %indvars.iv, 2, !dbg !77
  %uglygep30 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %64, !dbg !77
  %uglygep3031 = bitcast i8* %uglygep30 to i32*
  %65 = load i32, i32* %uglygep3031, align 4, !dbg !77
  %66 = shl i64 %indvars.iv, 2, !dbg !79
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %66, !dbg !79
  %uglygep26 = bitcast i8* %uglygep to i32*
  %67 = load i32, i32* %uglygep26, align 4, !dbg !79
  %add = add i32 %67, %65, !dbg !80
  %68 = add i64 %wide.trip.count, %indvars.iv, !dbg !82
  %tmp = trunc i64 %68 to i32
  %idxprom4 = sext i32 %tmp to i64, !dbg !82
  %arrayidx5 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %idxprom4, !dbg !82
  store i32 %add, i32* %arrayidx5, align 4, !dbg !83
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !70, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !73
  %69 = shl i64 %indvars.iv, 2, !dbg !77
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %69, !dbg !77
  %uglygep3233 = bitcast i8* %uglygep32 to i32*
  %scevgep34 = getelementptr i32, i32* %uglygep3233, i64 1, !dbg !77
  %70 = load i32, i32* %scevgep34, align 4, !dbg !77
  %71 = shl i64 %indvars.iv, 2, !dbg !79
  %uglygep27 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %71, !dbg !79
  %uglygep2728 = bitcast i8* %uglygep27 to i32*
  %scevgep29 = getelementptr i32, i32* %uglygep2728, i64 1, !dbg !79
  %72 = load i32, i32* %scevgep29, align 4, !dbg !79
  %add.1 = add i32 %72, %70, !dbg !80
  %73 = add i64 %wide.trip.count, %indvars.iv, !dbg !82
  %74 = add i64 %73, 1, !dbg !82
  %tmp35 = trunc i64 %74 to i32
  %idxprom4.1 = sext i32 %tmp35 to i64, !dbg !82
  %arrayidx5.1 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %idxprom4.1, !dbg !82
  store i32 %add.1, i32* %arrayidx5.1, align 4, !dbg !83
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !84
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !70, metadata !DIExpression()), !dbg !73
  %exitcond.not.1 = icmp eq i64 %wide.trip.count, %indvars.iv.next.1, !dbg !74
  br i1 %exitcond.not.1, label %for.cond.cleanup, label %for.body, !dbg !76, !llvm.loop !94

; uselistorder directives
  uselistorder i64 %indvars.iv, { 6, 0, 3, 1, 5, 4, 2 }
  uselistorder i64 %index.unr, { 2, 1, 0 }
  uselistorder i32* %30, { 1, 0 }
  uselistorder i64 %index, { 10, 1, 5, 4, 9, 8, 0, 2, 3, 6, 7 }
  uselistorder i64 %n.vec, { 2, 0, 1 }
  uselistorder i64 %indvars.iv.ph, { 2, 0, 3, 4, 5, 1 }
  uselistorder i64 %wide.trip.count, { 3, 1, 2, 7, 0, 6, 8, 9, 10, 4, 5 }
  uselistorder i64 4, { 1, 2, 3, 0, 4 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 4, 5, 3, 2, 0, 1 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 4, 5, 3, 2, 0, 1 }
  uselistorder i64 2, { 15, 13, 11, 14, 12, 0, 5, 3, 4, 10, 8, 9, 1, 2, 6, 7 }
  uselistorder [32000 x i32]* @b, { 1, 0, 2 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12, 5, 6 }
  uselistorder [32000 x i32]* @a, { 4, 12, 2, 3, 1, 8, 0, 7, 9, 10, 11, 5, 6 }
  uselistorder i64 1, { 4, 6, 5, 0, 2, 3, 1, 8, 7, 9 }
  uselistorder i64 -1, { 1, 0 }
  uselistorder i64 0, { 9, 24, 6, 7, 8, 4, 5, 0, 3, 19, 20, 2, 17, 18, 21, 22, 23, 1, 10, 11, 12, 13, 14, 15, 16 }
  uselistorder i32 0, { 2, 0, 1 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 4, 3, 1, 2, 5, 6 }
  uselistorder i32 %M, { 1, 0, 4, 5, 6, 2, 3, 7, 8 }
  uselistorder label %for.body, { 1, 0 }
  uselistorder label %for.cond.cleanup, { 0, 2, 1, 3 }
  uselistorder label %middle.block, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "val", scope: !2, file: !8, line: 21, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s174.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
!4 = !{}
!5 = !{!0, !6, !13, !15, !17, !19, !21, !26, !28, !30, !32, !34, !36, !38, !40, !45, !47, !49, !51, !53, !56, !58}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "X", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "TSVC_new/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024000, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 32000)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "Y", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "Z", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "U", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "V", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "array", scope: !2, file: !8, line: 24, type: !23, isLocal: false, isDefinition: true, align: 128)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 65536)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !8, line: 26, type: !9, isLocal: false, isDefinition: true, align: 128)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "temp", scope: !2, file: !8, line: 27, type: !10, isLocal: false, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 30, type: !42, isLocal: false, isDefinition: true, align: 128)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !43)
!43 = !{!44, !44}
!44 = !DISubrange(count: 256)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !8, line: 30, type: !42, isLocal: false, isDefinition: true, align: 128)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !8, line: 30, type: !42, isLocal: false, isDefinition: true, align: 128)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "tt", scope: !2, file: !8, line: 30, type: !42, isLocal: false, isDefinition: true, align: 128)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "indx", scope: !2, file: !8, line: 33, type: !9, isLocal: false, isDefinition: true, align: 128)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "xx", scope: !2, file: !8, line: 36, type: !55, isLocal: false, isDefinition: true)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !8, line: 37, type: !55, isLocal: false, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "arr", scope: !2, file: !8, line: 38, type: !9, isLocal: false, isDefinition: true)
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!64 = distinct !DISubprogram(name: "s174", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s174.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10, !10}
!68 = !{!69, !70}
!69 = !DILocalVariable(name: "M", arg: 1, scope: !64, file: !65, line: 3, type: !10)
!70 = !DILocalVariable(name: "i", scope: !71, file: !65, line: 9, type: !10)
!71 = distinct !DILexicalBlock(scope: !64, file: !65, line: 9, column: 3)
!72 = !DILocation(line: 0, scope: !64)
!73 = !DILocation(line: 0, scope: !71)
!74 = !DILocation(line: 9, column: 21, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !65, line: 9, column: 3)
!76 = !DILocation(line: 9, column: 3, scope: !71)
!77 = !DILocation(line: 10, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !65, line: 9, column: 31)
!79 = !DILocation(line: 10, column: 20, scope: !78)
!80 = !DILocation(line: 10, column: 18, scope: !78)
!81 = !DILocation(line: 10, column: 7, scope: !78)
!82 = !DILocation(line: 10, column: 4, scope: !78)
!83 = !DILocation(line: 10, column: 11, scope: !78)
!84 = !DILocation(line: 9, column: 27, scope: !75)
!85 = !{!86}
!86 = distinct !{!86, !87}
!87 = distinct !{!87, !"LVerDomain"}
!88 = !{!89}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !76, !91, !92}
!91 = !DILocation(line: 11, column: 3, scope: !71)
!92 = !{!"llvm.loop.isvectorized", i32 1}
!93 = !DILocation(line: 12, column: 2, scope: !64)
!94 = distinct !{!94, !76, !91, !92}
