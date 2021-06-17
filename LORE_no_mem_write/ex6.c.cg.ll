; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex6.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aaa = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !21
@bb = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !26
@cc = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !28
@dd = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !30
@tmp = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !32
@bbb = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !34
@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !39
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex6() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !62
  br label %for.cond1.preheader, !dbg !63

for.cond1.preheader:                              ; preds = %entry, %for.cond.cleanup3
  %lsr.iv = phi [256 x [256 x [256 x i32]]]* [ bitcast (i32* getelementptr inbounds ([256 x [256 x [256 x i32]]], [256 x [256 x [256 x i32]]]* @aaa, i64 0, i64 0, i64 0, i64 252) to [256 x [256 x [256 x i32]]]*), %entry ], [ %66, %for.cond.cleanup3 ]
  %indvars.iv39 = phi i64 [ 0, %entry ], [ %indvars.iv.next40, %for.cond.cleanup3 ]
  %ret.034 = phi i32 [ 0, %entry ], [ %65, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv39, metadata !53, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 %ret.034, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 0, metadata !55, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32 %ret.034, metadata !52, metadata !DIExpression()), !dbg !61
  br label %vector.ph, !dbg !65

for.cond.cleanup:                                 ; preds = %for.cond.cleanup3
  call void @llvm.dbg.value(metadata i32 %65, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %65, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %65, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %65, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %65, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %65, metadata !52, metadata !DIExpression()), !dbg !61
  ret i32 %65, !dbg !66

vector.ph:                                        ; preds = %vector.ph, %for.cond1.preheader
  %lsr.iv46 = phi i64 [ %lsr.iv.next, %vector.ph ], [ 0, %for.cond1.preheader ]
  %ret.132 = phi i32 [ %ret.034, %for.cond1.preheader ], [ %65, %vector.ph ]
  %0 = bitcast [256 x [256 x [256 x i32]]]* %lsr.iv to i8*
  call void @llvm.dbg.value(metadata i64 undef, metadata !55, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32 0, metadata !58, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i32 %ret.132, metadata !52, metadata !DIExpression()), !dbg !61
  %1 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %ret.132, i32 0, !dbg !68
  %uglygep235 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep235236 = bitcast i8* %uglygep235 to <4 x i32>*
  %scevgep237 = getelementptr <4 x i32>, <4 x i32>* %uglygep235236, i64 -63, !dbg !69
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep237, align 16, !dbg !69
  %uglygep139 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep139140 = bitcast i8* %uglygep139 to <4 x i32>*
  %scevgep141 = getelementptr <4 x i32>, <4 x i32>* %uglygep139140, i64 -62, !dbg !69
  %wide.load43 = load <4 x i32>, <4 x i32>* %scevgep141, align 16, !dbg !69
  %2 = add <4 x i32> %wide.load, %1, !dbg !71
  %uglygep232 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep232233 = bitcast i8* %uglygep232 to <4 x i32>*
  %scevgep234 = getelementptr <4 x i32>, <4 x i32>* %uglygep232233, i64 -61, !dbg !69
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep234, align 16, !dbg !69
  %uglygep136 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep136137 = bitcast i8* %uglygep136 to <4 x i32>*
  %scevgep138 = getelementptr <4 x i32>, <4 x i32>* %uglygep136137, i64 -60, !dbg !69
  %wide.load43.1 = load <4 x i32>, <4 x i32>* %scevgep138, align 16, !dbg !69
  %3 = add <4 x i32> %wide.load.1, %2, !dbg !71
  %4 = add <4 x i32> %wide.load43.1, %wide.load43, !dbg !71
  %uglygep229 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep229230 = bitcast i8* %uglygep229 to <4 x i32>*
  %scevgep231 = getelementptr <4 x i32>, <4 x i32>* %uglygep229230, i64 -59, !dbg !69
  %wide.load.2 = load <4 x i32>, <4 x i32>* %scevgep231, align 16, !dbg !69
  %uglygep133 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep133134 = bitcast i8* %uglygep133 to <4 x i32>*
  %scevgep135 = getelementptr <4 x i32>, <4 x i32>* %uglygep133134, i64 -58, !dbg !69
  %wide.load43.2 = load <4 x i32>, <4 x i32>* %scevgep135, align 16, !dbg !69
  %5 = add <4 x i32> %wide.load.2, %3, !dbg !71
  %6 = add <4 x i32> %wide.load43.2, %4, !dbg !71
  %uglygep226 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep226227 = bitcast i8* %uglygep226 to <4 x i32>*
  %scevgep228 = getelementptr <4 x i32>, <4 x i32>* %uglygep226227, i64 -57, !dbg !69
  %wide.load.3 = load <4 x i32>, <4 x i32>* %scevgep228, align 16, !dbg !69
  %uglygep130 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep130131 = bitcast i8* %uglygep130 to <4 x i32>*
  %scevgep132 = getelementptr <4 x i32>, <4 x i32>* %uglygep130131, i64 -56, !dbg !69
  %wide.load43.3 = load <4 x i32>, <4 x i32>* %scevgep132, align 16, !dbg !69
  %7 = add <4 x i32> %wide.load.3, %5, !dbg !71
  %8 = add <4 x i32> %wide.load43.3, %6, !dbg !71
  %uglygep223 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep223224 = bitcast i8* %uglygep223 to <4 x i32>*
  %scevgep225 = getelementptr <4 x i32>, <4 x i32>* %uglygep223224, i64 -55, !dbg !69
  %wide.load.4 = load <4 x i32>, <4 x i32>* %scevgep225, align 16, !dbg !69
  %uglygep127 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep127128 = bitcast i8* %uglygep127 to <4 x i32>*
  %scevgep129 = getelementptr <4 x i32>, <4 x i32>* %uglygep127128, i64 -54, !dbg !69
  %wide.load43.4 = load <4 x i32>, <4 x i32>* %scevgep129, align 16, !dbg !69
  %9 = add <4 x i32> %wide.load.4, %7, !dbg !71
  %10 = add <4 x i32> %wide.load43.4, %8, !dbg !71
  %uglygep220 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep220221 = bitcast i8* %uglygep220 to <4 x i32>*
  %scevgep222 = getelementptr <4 x i32>, <4 x i32>* %uglygep220221, i64 -53, !dbg !69
  %wide.load.5 = load <4 x i32>, <4 x i32>* %scevgep222, align 16, !dbg !69
  %uglygep124 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep124125 = bitcast i8* %uglygep124 to <4 x i32>*
  %scevgep126 = getelementptr <4 x i32>, <4 x i32>* %uglygep124125, i64 -52, !dbg !69
  %wide.load43.5 = load <4 x i32>, <4 x i32>* %scevgep126, align 16, !dbg !69
  %11 = add <4 x i32> %wide.load.5, %9, !dbg !71
  %12 = add <4 x i32> %wide.load43.5, %10, !dbg !71
  %uglygep217 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep217218 = bitcast i8* %uglygep217 to <4 x i32>*
  %scevgep219 = getelementptr <4 x i32>, <4 x i32>* %uglygep217218, i64 -51, !dbg !69
  %wide.load.6 = load <4 x i32>, <4 x i32>* %scevgep219, align 16, !dbg !69
  %uglygep121 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep121122 = bitcast i8* %uglygep121 to <4 x i32>*
  %scevgep123 = getelementptr <4 x i32>, <4 x i32>* %uglygep121122, i64 -50, !dbg !69
  %wide.load43.6 = load <4 x i32>, <4 x i32>* %scevgep123, align 16, !dbg !69
  %13 = add <4 x i32> %wide.load.6, %11, !dbg !71
  %14 = add <4 x i32> %wide.load43.6, %12, !dbg !71
  %uglygep214 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep214215 = bitcast i8* %uglygep214 to <4 x i32>*
  %scevgep216 = getelementptr <4 x i32>, <4 x i32>* %uglygep214215, i64 -49, !dbg !69
  %wide.load.7 = load <4 x i32>, <4 x i32>* %scevgep216, align 16, !dbg !69
  %uglygep118 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep118119 = bitcast i8* %uglygep118 to <4 x i32>*
  %scevgep120 = getelementptr <4 x i32>, <4 x i32>* %uglygep118119, i64 -48, !dbg !69
  %wide.load43.7 = load <4 x i32>, <4 x i32>* %scevgep120, align 16, !dbg !69
  %15 = add <4 x i32> %wide.load.7, %13, !dbg !71
  %16 = add <4 x i32> %wide.load43.7, %14, !dbg !71
  %uglygep211 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep211212 = bitcast i8* %uglygep211 to <4 x i32>*
  %scevgep213 = getelementptr <4 x i32>, <4 x i32>* %uglygep211212, i64 -47, !dbg !69
  %wide.load.8 = load <4 x i32>, <4 x i32>* %scevgep213, align 16, !dbg !69
  %uglygep115 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep115116 = bitcast i8* %uglygep115 to <4 x i32>*
  %scevgep117 = getelementptr <4 x i32>, <4 x i32>* %uglygep115116, i64 -46, !dbg !69
  %wide.load43.8 = load <4 x i32>, <4 x i32>* %scevgep117, align 16, !dbg !69
  %17 = add <4 x i32> %wide.load.8, %15, !dbg !71
  %18 = add <4 x i32> %wide.load43.8, %16, !dbg !71
  %uglygep208 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep208209 = bitcast i8* %uglygep208 to <4 x i32>*
  %scevgep210 = getelementptr <4 x i32>, <4 x i32>* %uglygep208209, i64 -45, !dbg !69
  %wide.load.9 = load <4 x i32>, <4 x i32>* %scevgep210, align 16, !dbg !69
  %uglygep112 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep112113 = bitcast i8* %uglygep112 to <4 x i32>*
  %scevgep114 = getelementptr <4 x i32>, <4 x i32>* %uglygep112113, i64 -44, !dbg !69
  %wide.load43.9 = load <4 x i32>, <4 x i32>* %scevgep114, align 16, !dbg !69
  %19 = add <4 x i32> %wide.load.9, %17, !dbg !71
  %20 = add <4 x i32> %wide.load43.9, %18, !dbg !71
  %uglygep205 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep205206 = bitcast i8* %uglygep205 to <4 x i32>*
  %scevgep207 = getelementptr <4 x i32>, <4 x i32>* %uglygep205206, i64 -43, !dbg !69
  %wide.load.10 = load <4 x i32>, <4 x i32>* %scevgep207, align 16, !dbg !69
  %uglygep109 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep109110 = bitcast i8* %uglygep109 to <4 x i32>*
  %scevgep111 = getelementptr <4 x i32>, <4 x i32>* %uglygep109110, i64 -42, !dbg !69
  %wide.load43.10 = load <4 x i32>, <4 x i32>* %scevgep111, align 16, !dbg !69
  %21 = add <4 x i32> %wide.load.10, %19, !dbg !71
  %22 = add <4 x i32> %wide.load43.10, %20, !dbg !71
  %uglygep202 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep202203 = bitcast i8* %uglygep202 to <4 x i32>*
  %scevgep204 = getelementptr <4 x i32>, <4 x i32>* %uglygep202203, i64 -41, !dbg !69
  %wide.load.11 = load <4 x i32>, <4 x i32>* %scevgep204, align 16, !dbg !69
  %uglygep106 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep106107 = bitcast i8* %uglygep106 to <4 x i32>*
  %scevgep108 = getelementptr <4 x i32>, <4 x i32>* %uglygep106107, i64 -40, !dbg !69
  %wide.load43.11 = load <4 x i32>, <4 x i32>* %scevgep108, align 16, !dbg !69
  %23 = add <4 x i32> %wide.load.11, %21, !dbg !71
  %24 = add <4 x i32> %wide.load43.11, %22, !dbg !71
  %uglygep199 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep199200 = bitcast i8* %uglygep199 to <4 x i32>*
  %scevgep201 = getelementptr <4 x i32>, <4 x i32>* %uglygep199200, i64 -39, !dbg !69
  %wide.load.12 = load <4 x i32>, <4 x i32>* %scevgep201, align 16, !dbg !69
  %uglygep103 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep103104 = bitcast i8* %uglygep103 to <4 x i32>*
  %scevgep105 = getelementptr <4 x i32>, <4 x i32>* %uglygep103104, i64 -38, !dbg !69
  %wide.load43.12 = load <4 x i32>, <4 x i32>* %scevgep105, align 16, !dbg !69
  %25 = add <4 x i32> %wide.load.12, %23, !dbg !71
  %26 = add <4 x i32> %wide.load43.12, %24, !dbg !71
  %uglygep196 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep196197 = bitcast i8* %uglygep196 to <4 x i32>*
  %scevgep198 = getelementptr <4 x i32>, <4 x i32>* %uglygep196197, i64 -37, !dbg !69
  %wide.load.13 = load <4 x i32>, <4 x i32>* %scevgep198, align 16, !dbg !69
  %uglygep100 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep100101 = bitcast i8* %uglygep100 to <4 x i32>*
  %scevgep102 = getelementptr <4 x i32>, <4 x i32>* %uglygep100101, i64 -36, !dbg !69
  %wide.load43.13 = load <4 x i32>, <4 x i32>* %scevgep102, align 16, !dbg !69
  %27 = add <4 x i32> %wide.load.13, %25, !dbg !71
  %28 = add <4 x i32> %wide.load43.13, %26, !dbg !71
  %uglygep193 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep193194 = bitcast i8* %uglygep193 to <4 x i32>*
  %scevgep195 = getelementptr <4 x i32>, <4 x i32>* %uglygep193194, i64 -35, !dbg !69
  %wide.load.14 = load <4 x i32>, <4 x i32>* %scevgep195, align 16, !dbg !69
  %uglygep97 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep9798 = bitcast i8* %uglygep97 to <4 x i32>*
  %scevgep99 = getelementptr <4 x i32>, <4 x i32>* %uglygep9798, i64 -34, !dbg !69
  %wide.load43.14 = load <4 x i32>, <4 x i32>* %scevgep99, align 16, !dbg !69
  %29 = add <4 x i32> %wide.load.14, %27, !dbg !71
  %30 = add <4 x i32> %wide.load43.14, %28, !dbg !71
  %uglygep190 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep190191 = bitcast i8* %uglygep190 to <4 x i32>*
  %scevgep192 = getelementptr <4 x i32>, <4 x i32>* %uglygep190191, i64 -33, !dbg !69
  %wide.load.15 = load <4 x i32>, <4 x i32>* %scevgep192, align 16, !dbg !69
  %uglygep94 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep9495 = bitcast i8* %uglygep94 to <4 x i32>*
  %scevgep96 = getelementptr <4 x i32>, <4 x i32>* %uglygep9495, i64 -32, !dbg !69
  %wide.load43.15 = load <4 x i32>, <4 x i32>* %scevgep96, align 16, !dbg !69
  %31 = add <4 x i32> %wide.load.15, %29, !dbg !71
  %32 = add <4 x i32> %wide.load43.15, %30, !dbg !71
  %uglygep187 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep187188 = bitcast i8* %uglygep187 to <4 x i32>*
  %scevgep189 = getelementptr <4 x i32>, <4 x i32>* %uglygep187188, i64 -31, !dbg !69
  %wide.load.16 = load <4 x i32>, <4 x i32>* %scevgep189, align 16, !dbg !69
  %uglygep91 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep9192 = bitcast i8* %uglygep91 to <4 x i32>*
  %scevgep93 = getelementptr <4 x i32>, <4 x i32>* %uglygep9192, i64 -30, !dbg !69
  %wide.load43.16 = load <4 x i32>, <4 x i32>* %scevgep93, align 16, !dbg !69
  %33 = add <4 x i32> %wide.load.16, %31, !dbg !71
  %34 = add <4 x i32> %wide.load43.16, %32, !dbg !71
  %uglygep184 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep184185 = bitcast i8* %uglygep184 to <4 x i32>*
  %scevgep186 = getelementptr <4 x i32>, <4 x i32>* %uglygep184185, i64 -29, !dbg !69
  %wide.load.17 = load <4 x i32>, <4 x i32>* %scevgep186, align 16, !dbg !69
  %uglygep88 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep8889 = bitcast i8* %uglygep88 to <4 x i32>*
  %scevgep90 = getelementptr <4 x i32>, <4 x i32>* %uglygep8889, i64 -28, !dbg !69
  %wide.load43.17 = load <4 x i32>, <4 x i32>* %scevgep90, align 16, !dbg !69
  %35 = add <4 x i32> %wide.load.17, %33, !dbg !71
  %36 = add <4 x i32> %wide.load43.17, %34, !dbg !71
  %uglygep181 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep181182 = bitcast i8* %uglygep181 to <4 x i32>*
  %scevgep183 = getelementptr <4 x i32>, <4 x i32>* %uglygep181182, i64 -27, !dbg !69
  %wide.load.18 = load <4 x i32>, <4 x i32>* %scevgep183, align 16, !dbg !69
  %uglygep85 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep8586 = bitcast i8* %uglygep85 to <4 x i32>*
  %scevgep87 = getelementptr <4 x i32>, <4 x i32>* %uglygep8586, i64 -26, !dbg !69
  %wide.load43.18 = load <4 x i32>, <4 x i32>* %scevgep87, align 16, !dbg !69
  %37 = add <4 x i32> %wide.load.18, %35, !dbg !71
  %38 = add <4 x i32> %wide.load43.18, %36, !dbg !71
  %uglygep178 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep178179 = bitcast i8* %uglygep178 to <4 x i32>*
  %scevgep180 = getelementptr <4 x i32>, <4 x i32>* %uglygep178179, i64 -25, !dbg !69
  %wide.load.19 = load <4 x i32>, <4 x i32>* %scevgep180, align 16, !dbg !69
  %uglygep82 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep8283 = bitcast i8* %uglygep82 to <4 x i32>*
  %scevgep84 = getelementptr <4 x i32>, <4 x i32>* %uglygep8283, i64 -24, !dbg !69
  %wide.load43.19 = load <4 x i32>, <4 x i32>* %scevgep84, align 16, !dbg !69
  %39 = add <4 x i32> %wide.load.19, %37, !dbg !71
  %40 = add <4 x i32> %wide.load43.19, %38, !dbg !71
  %uglygep175 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep175176 = bitcast i8* %uglygep175 to <4 x i32>*
  %scevgep177 = getelementptr <4 x i32>, <4 x i32>* %uglygep175176, i64 -23, !dbg !69
  %wide.load.20 = load <4 x i32>, <4 x i32>* %scevgep177, align 16, !dbg !69
  %uglygep79 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep7980 = bitcast i8* %uglygep79 to <4 x i32>*
  %scevgep81 = getelementptr <4 x i32>, <4 x i32>* %uglygep7980, i64 -22, !dbg !69
  %wide.load43.20 = load <4 x i32>, <4 x i32>* %scevgep81, align 16, !dbg !69
  %41 = add <4 x i32> %wide.load.20, %39, !dbg !71
  %42 = add <4 x i32> %wide.load43.20, %40, !dbg !71
  %uglygep172 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep172173 = bitcast i8* %uglygep172 to <4 x i32>*
  %scevgep174 = getelementptr <4 x i32>, <4 x i32>* %uglygep172173, i64 -21, !dbg !69
  %wide.load.21 = load <4 x i32>, <4 x i32>* %scevgep174, align 16, !dbg !69
  %uglygep76 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep7677 = bitcast i8* %uglygep76 to <4 x i32>*
  %scevgep78 = getelementptr <4 x i32>, <4 x i32>* %uglygep7677, i64 -20, !dbg !69
  %wide.load43.21 = load <4 x i32>, <4 x i32>* %scevgep78, align 16, !dbg !69
  %43 = add <4 x i32> %wide.load.21, %41, !dbg !71
  %44 = add <4 x i32> %wide.load43.21, %42, !dbg !71
  %uglygep169 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep169170 = bitcast i8* %uglygep169 to <4 x i32>*
  %scevgep171 = getelementptr <4 x i32>, <4 x i32>* %uglygep169170, i64 -19, !dbg !69
  %wide.load.22 = load <4 x i32>, <4 x i32>* %scevgep171, align 16, !dbg !69
  %uglygep73 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep7374 = bitcast i8* %uglygep73 to <4 x i32>*
  %scevgep75 = getelementptr <4 x i32>, <4 x i32>* %uglygep7374, i64 -18, !dbg !69
  %wide.load43.22 = load <4 x i32>, <4 x i32>* %scevgep75, align 16, !dbg !69
  %45 = add <4 x i32> %wide.load.22, %43, !dbg !71
  %46 = add <4 x i32> %wide.load43.22, %44, !dbg !71
  %uglygep166 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep166167 = bitcast i8* %uglygep166 to <4 x i32>*
  %scevgep168 = getelementptr <4 x i32>, <4 x i32>* %uglygep166167, i64 -17, !dbg !69
  %wide.load.23 = load <4 x i32>, <4 x i32>* %scevgep168, align 16, !dbg !69
  %uglygep70 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep7071 = bitcast i8* %uglygep70 to <4 x i32>*
  %scevgep72 = getelementptr <4 x i32>, <4 x i32>* %uglygep7071, i64 -16, !dbg !69
  %wide.load43.23 = load <4 x i32>, <4 x i32>* %scevgep72, align 16, !dbg !69
  %47 = add <4 x i32> %wide.load.23, %45, !dbg !71
  %48 = add <4 x i32> %wide.load43.23, %46, !dbg !71
  %uglygep163 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep163164 = bitcast i8* %uglygep163 to <4 x i32>*
  %scevgep165 = getelementptr <4 x i32>, <4 x i32>* %uglygep163164, i64 -15, !dbg !69
  %wide.load.24 = load <4 x i32>, <4 x i32>* %scevgep165, align 16, !dbg !69
  %uglygep67 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep6768 = bitcast i8* %uglygep67 to <4 x i32>*
  %scevgep69 = getelementptr <4 x i32>, <4 x i32>* %uglygep6768, i64 -14, !dbg !69
  %wide.load43.24 = load <4 x i32>, <4 x i32>* %scevgep69, align 16, !dbg !69
  %49 = add <4 x i32> %wide.load.24, %47, !dbg !71
  %50 = add <4 x i32> %wide.load43.24, %48, !dbg !71
  %uglygep160 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep160161 = bitcast i8* %uglygep160 to <4 x i32>*
  %scevgep162 = getelementptr <4 x i32>, <4 x i32>* %uglygep160161, i64 -13, !dbg !69
  %wide.load.25 = load <4 x i32>, <4 x i32>* %scevgep162, align 16, !dbg !69
  %uglygep64 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep6465 = bitcast i8* %uglygep64 to <4 x i32>*
  %scevgep66 = getelementptr <4 x i32>, <4 x i32>* %uglygep6465, i64 -12, !dbg !69
  %wide.load43.25 = load <4 x i32>, <4 x i32>* %scevgep66, align 16, !dbg !69
  %51 = add <4 x i32> %wide.load.25, %49, !dbg !71
  %52 = add <4 x i32> %wide.load43.25, %50, !dbg !71
  %uglygep157 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep157158 = bitcast i8* %uglygep157 to <4 x i32>*
  %scevgep159 = getelementptr <4 x i32>, <4 x i32>* %uglygep157158, i64 -11, !dbg !69
  %wide.load.26 = load <4 x i32>, <4 x i32>* %scevgep159, align 16, !dbg !69
  %uglygep61 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep6162 = bitcast i8* %uglygep61 to <4 x i32>*
  %scevgep63 = getelementptr <4 x i32>, <4 x i32>* %uglygep6162, i64 -10, !dbg !69
  %wide.load43.26 = load <4 x i32>, <4 x i32>* %scevgep63, align 16, !dbg !69
  %53 = add <4 x i32> %wide.load.26, %51, !dbg !71
  %54 = add <4 x i32> %wide.load43.26, %52, !dbg !71
  %uglygep154 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep154155 = bitcast i8* %uglygep154 to <4 x i32>*
  %scevgep156 = getelementptr <4 x i32>, <4 x i32>* %uglygep154155, i64 -9, !dbg !69
  %wide.load.27 = load <4 x i32>, <4 x i32>* %scevgep156, align 16, !dbg !69
  %uglygep58 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep5859 = bitcast i8* %uglygep58 to <4 x i32>*
  %scevgep60 = getelementptr <4 x i32>, <4 x i32>* %uglygep5859, i64 -8, !dbg !69
  %wide.load43.27 = load <4 x i32>, <4 x i32>* %scevgep60, align 16, !dbg !69
  %55 = add <4 x i32> %wide.load.27, %53, !dbg !71
  %56 = add <4 x i32> %wide.load43.27, %54, !dbg !71
  %uglygep151 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep151152 = bitcast i8* %uglygep151 to <4 x i32>*
  %scevgep153 = getelementptr <4 x i32>, <4 x i32>* %uglygep151152, i64 -7, !dbg !69
  %wide.load.28 = load <4 x i32>, <4 x i32>* %scevgep153, align 16, !dbg !69
  %uglygep55 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep5556 = bitcast i8* %uglygep55 to <4 x i32>*
  %scevgep57 = getelementptr <4 x i32>, <4 x i32>* %uglygep5556, i64 -6, !dbg !69
  %wide.load43.28 = load <4 x i32>, <4 x i32>* %scevgep57, align 16, !dbg !69
  %57 = add <4 x i32> %wide.load.28, %55, !dbg !71
  %58 = add <4 x i32> %wide.load43.28, %56, !dbg !71
  %uglygep148 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep148149 = bitcast i8* %uglygep148 to <4 x i32>*
  %scevgep150 = getelementptr <4 x i32>, <4 x i32>* %uglygep148149, i64 -5, !dbg !69
  %wide.load.29 = load <4 x i32>, <4 x i32>* %scevgep150, align 16, !dbg !69
  %uglygep52 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep5253 = bitcast i8* %uglygep52 to <4 x i32>*
  %scevgep54 = getelementptr <4 x i32>, <4 x i32>* %uglygep5253, i64 -4, !dbg !69
  %wide.load43.29 = load <4 x i32>, <4 x i32>* %scevgep54, align 16, !dbg !69
  %59 = add <4 x i32> %wide.load.29, %57, !dbg !71
  %60 = add <4 x i32> %wide.load43.29, %58, !dbg !71
  %uglygep145 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep145146 = bitcast i8* %uglygep145 to <4 x i32>*
  %scevgep147 = getelementptr <4 x i32>, <4 x i32>* %uglygep145146, i64 -3, !dbg !69
  %wide.load.30 = load <4 x i32>, <4 x i32>* %scevgep147, align 16, !dbg !69
  %uglygep49 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep4950 = bitcast i8* %uglygep49 to <4 x i32>*
  %scevgep51 = getelementptr <4 x i32>, <4 x i32>* %uglygep4950, i64 -2, !dbg !69
  %wide.load43.30 = load <4 x i32>, <4 x i32>* %scevgep51, align 16, !dbg !69
  %61 = add <4 x i32> %wide.load.30, %59, !dbg !71
  %62 = add <4 x i32> %wide.load43.30, %60, !dbg !71
  %uglygep142 = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep142143 = bitcast i8* %uglygep142 to <4 x i32>*
  %scevgep144 = getelementptr <4 x i32>, <4 x i32>* %uglygep142143, i64 -1, !dbg !69
  %wide.load.31 = load <4 x i32>, <4 x i32>* %scevgep144, align 16, !dbg !69
  %uglygep = getelementptr i8, i8* %0, i64 %lsr.iv46, !dbg !69
  %uglygep48 = bitcast i8* %uglygep to <4 x i32>*
  %wide.load43.31 = load <4 x i32>, <4 x i32>* %uglygep48, align 16, !dbg !69
  %63 = add <4 x i32> %wide.load.31, %61, !dbg !71
  %64 = add <4 x i32> %wide.load43.31, %62, !dbg !71
  %bin.rdx = add <4 x i32> %64, %63, !dbg !68
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !68
  %bin.rdx238 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !68
  %rdx.shuf239 = shufflevector <4 x i32> %bin.rdx238, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !68
  %bin.rdx240 = add <4 x i32> %bin.rdx238, %rdx.shuf239, !dbg !68
  %65 = extractelement <4 x i32> %bin.rdx240, i32 0, !dbg !68
  call void @llvm.dbg.value(metadata i32 %65, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i64 undef, metadata !55, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !64
  %lsr.iv.next = add nuw nsw i64 %lsr.iv46, 1024, !dbg !72
  %exitcond38.not = icmp eq i64 %lsr.iv.next, 262144, !dbg !72
  br i1 %exitcond38.not, label %for.cond.cleanup3, label %vector.ph, !dbg !65, !llvm.loop !73

for.cond.cleanup3:                                ; preds = %vector.ph
  call void @llvm.dbg.value(metadata i32 %65, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %65, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %65, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %65, metadata !52, metadata !DIExpression()), !dbg !61
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1, !dbg !75
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next40, metadata !53, metadata !DIExpression()), !dbg !62
  %scevgep = getelementptr [256 x [256 x [256 x i32]]], [256 x [256 x [256 x i32]]]* %lsr.iv, i64 0, i64 1, i64 0, i64 0, !dbg !63
  %66 = bitcast i32* %scevgep to [256 x [256 x [256 x i32]]]*, !dbg !63
  %exitcond41.not = icmp eq i64 %indvars.iv.next40, 256, !dbg !76
  br i1 %exitcond41.not, label %for.cond.cleanup, label %for.cond1.preheader, !dbg !63, !llvm.loop !77

; uselistorder directives
  uselistorder i32 %65, { 2, 1, 0 }
  uselistorder i8* %0, { 0, 32, 1, 33, 2, 34, 3, 35, 4, 36, 5, 37, 6, 38, 7, 39, 8, 40, 9, 41, 10, 42, 11, 43, 12, 44, 13, 45, 14, 46, 15, 47, 16, 48, 17, 49, 18, 50, 19, 51, 20, 52, 21, 53, 22, 54, 23, 55, 24, 56, 25, 57, 26, 58, 27, 59, 28, 60, 29, 61, 30, 62, 31, 63 }
  uselistorder i64 %lsr.iv46, { 64, 63, 31, 62, 30, 61, 29, 60, 28, 59, 27, 58, 26, 57, 25, 56, 24, 55, 23, 54, 22, 53, 21, 52, 20, 51, 19, 50, 18, 49, 17, 48, 16, 47, 15, 46, 14, 45, 13, 44, 12, 43, 11, 42, 10, 41, 9, 40, 8, 39, 7, 38, 6, 37, 5, 36, 4, 35, 3, 34, 2, 33, 1, 32, 0 }
  uselistorder [256 x [256 x [256 x i32]]]* %lsr.iv, { 1, 0 }
  uselistorder i32 0, { 0, 4, 1, 2, 3, 5, 6, 7 }
  uselistorder i64 0, { 1, 2, 3, 0, 7, 4, 5, 6 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 19, 16, 7, 5, 3, 18, 17, 13, 14, 10, 15, 6, 4, 2, 1, 0, 11, 12, 9, 8, 20, 21 }
  uselistorder label %for.cond1.preheader, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { noinline norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aaa", scope: !2, file: !8, line: 25, type: !36, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex6.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_no_mem_write")
!4 = !{}
!5 = !{!6, !13, !15, !17, !19, !21, !26, !28, !30, !32, !0, !34, !39, !41}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "LORE_no_mem_write/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024000, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 32000)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 33554432, elements: !24)
!24 = !{!25, !25}
!25 = !DISubrange(count: 1024)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "dd", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "tmp", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "bbb", scope: !2, file: !8, line: 25, type: !36, isLocal: false, isDefinition: true, align: 128)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 536870912, elements: !37)
!37 = !{!38, !38, !38}
!38 = !DISubrange(count: 256)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !8, line: 26, type: !10, isLocal: false, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !8, line: 26, type: !10, isLocal: false, isDefinition: true)
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!47 = distinct !DISubprogram(name: "ex6", scope: !48, file: !48, line: 4, type: !49, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_no_mem_write/ex6.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!49 = !DISubroutineType(types: !50)
!50 = !{!10}
!51 = !{!52, !53, !55, !58}
!52 = !DILocalVariable(name: "ret", scope: !47, file: !48, line: 5, type: !10)
!53 = !DILocalVariable(name: "i", scope: !54, file: !48, line: 6, type: !10)
!54 = distinct !DILexicalBlock(scope: !47, file: !48, line: 6, column: 2)
!55 = !DILocalVariable(name: "j", scope: !56, file: !48, line: 7, type: !10)
!56 = distinct !DILexicalBlock(scope: !57, file: !48, line: 7, column: 4)
!57 = distinct !DILexicalBlock(scope: !54, file: !48, line: 6, column: 2)
!58 = !DILocalVariable(name: "k", scope: !59, file: !48, line: 8, type: !10)
!59 = distinct !DILexicalBlock(scope: !60, file: !48, line: 8, column: 6)
!60 = distinct !DILexicalBlock(scope: !56, file: !48, line: 7, column: 4)
!61 = !DILocation(line: 0, scope: !47)
!62 = !DILocation(line: 0, scope: !54)
!63 = !DILocation(line: 6, column: 2, scope: !54)
!64 = !DILocation(line: 0, scope: !56)
!65 = !DILocation(line: 7, column: 4, scope: !56)
!66 = !DILocation(line: 10, column: 2, scope: !47)
!67 = !DILocation(line: 0, scope: !59)
!68 = !DILocation(line: 8, column: 6, scope: !59)
!69 = !DILocation(line: 9, column: 14, scope: !70)
!70 = distinct !DILexicalBlock(scope: !59, file: !48, line: 8, column: 6)
!71 = !DILocation(line: 9, column: 11, scope: !70)
!72 = !DILocation(line: 7, column: 22, scope: !60)
!73 = distinct !{!73, !65, !74}
!74 = !DILocation(line: 9, column: 25, scope: !56)
!75 = !DILocation(line: 6, column: 29, scope: !57)
!76 = !DILocation(line: 6, column: 20, scope: !57)
!77 = distinct !{!77, !63, !78}
!78 = !DILocation(line: 9, column: 25, scope: !54)
