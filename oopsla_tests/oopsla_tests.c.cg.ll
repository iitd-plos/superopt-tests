; ModuleID = '/var/lib/jenkins/workspace/_prove-memlabels_prove_memlabels/superopt-tests/oopsla_tests/oopsla_tests.c'
source_filename = "/var/lib/jenkins/workspace/_prove-memlabels_prove_memlabels/superopt-tests/oopsla_tests/oopsla_tests.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !31
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !41
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !46
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !33
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !35
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !37
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !39
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !29
@array = dso_local global [65536 x i32] zeroinitializer, align 16, !dbg !22
@xx = dso_local local_unnamed_addr global i32* null, align 4, !dbg !54
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !8
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !14
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !16
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !18
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !20
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !27
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !48
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !50
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !52
@yy = dso_local local_unnamed_addr global i32* null, align 4, !dbg !57
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 4, !dbg !59

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex1() local_unnamed_addr #0 !dbg !66 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !73
  br label %vector.body, !dbg !74

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !75
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %0, %vector.body ]
  %vec.phi9 = phi <4 x i32> [ zeroinitializer, %entry ], [ %1, %vector.body ]
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !77
  %uglygep17 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep17, i32 8000, !dbg !77
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !77
  %scevgep18 = getelementptr <4 x i32>, <4 x i32>* %uglygep17, i32 8001, !dbg !77
  %wide.load10 = load <4 x i32>, <4 x i32>* %scevgep18, align 16, !dbg !77
  %0 = add <4 x i32> %wide.load, %vec.phi, !dbg !78
  %1 = add <4 x i32> %wide.load10, %vec.phi9, !dbg !78
  %lsr.iv.next = add nsw i32 %lsr.iv, 32, !dbg !75
  %2 = icmp eq i32 %lsr.iv.next, 0, !dbg !75
  br i1 %2, label %middle.block, label %vector.body, !dbg !75, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %1, %0, !dbg !74
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !74
  %bin.rdx11 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !74
  %rdx.shuf12 = shufflevector <4 x i32> %bin.rdx11, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !74
  %bin.rdx13 = add <4 x i32> %bin.rdx11, %rdx.shuf12, !dbg !74
  %3 = extractelement <4 x i32> %bin.rdx13, i32 0, !dbg !74
  call void @llvm.dbg.value(metadata i32 %3, metadata !69, metadata !DIExpression()), !dbg !72
  ret i32 %3, !dbg !82

; uselistorder directives
  uselistorder i32 %lsr.iv, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex2() local_unnamed_addr #0 !dbg !83 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !85, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()), !dbg !92
  br label %vector.ph, !dbg !93

vector.ph:                                        ; preds = %entry, %vector.ph
  %lsr.iv = phi i32 [ -262144, %entry ], [ %lsr.iv.next, %vector.ph ]
  %ret.019 = phi i32 [ 0, %entry ], [ %64, %vector.ph ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !86, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 0, metadata !88, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32 %ret.019, metadata !85, metadata !DIExpression()), !dbg !91
  %0 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %ret.019, i32 0, !dbg !95
  %uglygep218 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep218219 = bitcast i8* %uglygep218 to <4 x i32>*
  %scevgep220 = getelementptr <4 x i32>, <4 x i32>* %uglygep218219, i32 16384, !dbg !96
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep220, align 16, !dbg !96
  %uglygep122 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep122123 = bitcast i8* %uglygep122 to <4 x i32>*
  %scevgep124 = getelementptr <4 x i32>, <4 x i32>* %uglygep122123, i32 16385, !dbg !96
  %wide.load24 = load <4 x i32>, <4 x i32>* %scevgep124, align 16, !dbg !96
  %1 = add <4 x i32> %wide.load, %0, !dbg !98
  %uglygep215 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep215216 = bitcast i8* %uglygep215 to <4 x i32>*
  %scevgep217 = getelementptr <4 x i32>, <4 x i32>* %uglygep215216, i32 16386, !dbg !96
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep217, align 16, !dbg !96
  %uglygep119 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep119120 = bitcast i8* %uglygep119 to <4 x i32>*
  %scevgep121 = getelementptr <4 x i32>, <4 x i32>* %uglygep119120, i32 16387, !dbg !96
  %wide.load24.1 = load <4 x i32>, <4 x i32>* %scevgep121, align 16, !dbg !96
  %2 = add <4 x i32> %wide.load.1, %1, !dbg !98
  %3 = add <4 x i32> %wide.load24.1, %wide.load24, !dbg !98
  %uglygep212 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep212213 = bitcast i8* %uglygep212 to <4 x i32>*
  %scevgep214 = getelementptr <4 x i32>, <4 x i32>* %uglygep212213, i32 16388, !dbg !96
  %wide.load.2 = load <4 x i32>, <4 x i32>* %scevgep214, align 16, !dbg !96
  %uglygep116 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep116117 = bitcast i8* %uglygep116 to <4 x i32>*
  %scevgep118 = getelementptr <4 x i32>, <4 x i32>* %uglygep116117, i32 16389, !dbg !96
  %wide.load24.2 = load <4 x i32>, <4 x i32>* %scevgep118, align 16, !dbg !96
  %4 = add <4 x i32> %wide.load.2, %2, !dbg !98
  %5 = add <4 x i32> %wide.load24.2, %3, !dbg !98
  %uglygep209 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep209210 = bitcast i8* %uglygep209 to <4 x i32>*
  %scevgep211 = getelementptr <4 x i32>, <4 x i32>* %uglygep209210, i32 16390, !dbg !96
  %wide.load.3 = load <4 x i32>, <4 x i32>* %scevgep211, align 16, !dbg !96
  %uglygep113 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep113114 = bitcast i8* %uglygep113 to <4 x i32>*
  %scevgep115 = getelementptr <4 x i32>, <4 x i32>* %uglygep113114, i32 16391, !dbg !96
  %wide.load24.3 = load <4 x i32>, <4 x i32>* %scevgep115, align 16, !dbg !96
  %6 = add <4 x i32> %wide.load.3, %4, !dbg !98
  %7 = add <4 x i32> %wide.load24.3, %5, !dbg !98
  %uglygep206 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep206207 = bitcast i8* %uglygep206 to <4 x i32>*
  %scevgep208 = getelementptr <4 x i32>, <4 x i32>* %uglygep206207, i32 16392, !dbg !96
  %wide.load.4 = load <4 x i32>, <4 x i32>* %scevgep208, align 16, !dbg !96
  %uglygep110 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep110111 = bitcast i8* %uglygep110 to <4 x i32>*
  %scevgep112 = getelementptr <4 x i32>, <4 x i32>* %uglygep110111, i32 16393, !dbg !96
  %wide.load24.4 = load <4 x i32>, <4 x i32>* %scevgep112, align 16, !dbg !96
  %8 = add <4 x i32> %wide.load.4, %6, !dbg !98
  %9 = add <4 x i32> %wide.load24.4, %7, !dbg !98
  %uglygep203 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep203204 = bitcast i8* %uglygep203 to <4 x i32>*
  %scevgep205 = getelementptr <4 x i32>, <4 x i32>* %uglygep203204, i32 16394, !dbg !96
  %wide.load.5 = load <4 x i32>, <4 x i32>* %scevgep205, align 16, !dbg !96
  %uglygep107 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep107108 = bitcast i8* %uglygep107 to <4 x i32>*
  %scevgep109 = getelementptr <4 x i32>, <4 x i32>* %uglygep107108, i32 16395, !dbg !96
  %wide.load24.5 = load <4 x i32>, <4 x i32>* %scevgep109, align 16, !dbg !96
  %10 = add <4 x i32> %wide.load.5, %8, !dbg !98
  %11 = add <4 x i32> %wide.load24.5, %9, !dbg !98
  %uglygep200 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep200201 = bitcast i8* %uglygep200 to <4 x i32>*
  %scevgep202 = getelementptr <4 x i32>, <4 x i32>* %uglygep200201, i32 16396, !dbg !96
  %wide.load.6 = load <4 x i32>, <4 x i32>* %scevgep202, align 16, !dbg !96
  %uglygep104 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep104105 = bitcast i8* %uglygep104 to <4 x i32>*
  %scevgep106 = getelementptr <4 x i32>, <4 x i32>* %uglygep104105, i32 16397, !dbg !96
  %wide.load24.6 = load <4 x i32>, <4 x i32>* %scevgep106, align 16, !dbg !96
  %12 = add <4 x i32> %wide.load.6, %10, !dbg !98
  %13 = add <4 x i32> %wide.load24.6, %11, !dbg !98
  %uglygep197 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep197198 = bitcast i8* %uglygep197 to <4 x i32>*
  %scevgep199 = getelementptr <4 x i32>, <4 x i32>* %uglygep197198, i32 16398, !dbg !96
  %wide.load.7 = load <4 x i32>, <4 x i32>* %scevgep199, align 16, !dbg !96
  %uglygep101 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep101102 = bitcast i8* %uglygep101 to <4 x i32>*
  %scevgep103 = getelementptr <4 x i32>, <4 x i32>* %uglygep101102, i32 16399, !dbg !96
  %wide.load24.7 = load <4 x i32>, <4 x i32>* %scevgep103, align 16, !dbg !96
  %14 = add <4 x i32> %wide.load.7, %12, !dbg !98
  %15 = add <4 x i32> %wide.load24.7, %13, !dbg !98
  %uglygep194 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep194195 = bitcast i8* %uglygep194 to <4 x i32>*
  %scevgep196 = getelementptr <4 x i32>, <4 x i32>* %uglygep194195, i32 16400, !dbg !96
  %wide.load.8 = load <4 x i32>, <4 x i32>* %scevgep196, align 16, !dbg !96
  %uglygep98 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep9899 = bitcast i8* %uglygep98 to <4 x i32>*
  %scevgep100 = getelementptr <4 x i32>, <4 x i32>* %uglygep9899, i32 16401, !dbg !96
  %wide.load24.8 = load <4 x i32>, <4 x i32>* %scevgep100, align 16, !dbg !96
  %16 = add <4 x i32> %wide.load.8, %14, !dbg !98
  %17 = add <4 x i32> %wide.load24.8, %15, !dbg !98
  %uglygep191 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep191192 = bitcast i8* %uglygep191 to <4 x i32>*
  %scevgep193 = getelementptr <4 x i32>, <4 x i32>* %uglygep191192, i32 16402, !dbg !96
  %wide.load.9 = load <4 x i32>, <4 x i32>* %scevgep193, align 16, !dbg !96
  %uglygep95 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep9596 = bitcast i8* %uglygep95 to <4 x i32>*
  %scevgep97 = getelementptr <4 x i32>, <4 x i32>* %uglygep9596, i32 16403, !dbg !96
  %wide.load24.9 = load <4 x i32>, <4 x i32>* %scevgep97, align 16, !dbg !96
  %18 = add <4 x i32> %wide.load.9, %16, !dbg !98
  %19 = add <4 x i32> %wide.load24.9, %17, !dbg !98
  %uglygep188 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep188189 = bitcast i8* %uglygep188 to <4 x i32>*
  %scevgep190 = getelementptr <4 x i32>, <4 x i32>* %uglygep188189, i32 16404, !dbg !96
  %wide.load.10 = load <4 x i32>, <4 x i32>* %scevgep190, align 16, !dbg !96
  %uglygep92 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep9293 = bitcast i8* %uglygep92 to <4 x i32>*
  %scevgep94 = getelementptr <4 x i32>, <4 x i32>* %uglygep9293, i32 16405, !dbg !96
  %wide.load24.10 = load <4 x i32>, <4 x i32>* %scevgep94, align 16, !dbg !96
  %20 = add <4 x i32> %wide.load.10, %18, !dbg !98
  %21 = add <4 x i32> %wide.load24.10, %19, !dbg !98
  %uglygep185 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep185186 = bitcast i8* %uglygep185 to <4 x i32>*
  %scevgep187 = getelementptr <4 x i32>, <4 x i32>* %uglygep185186, i32 16406, !dbg !96
  %wide.load.11 = load <4 x i32>, <4 x i32>* %scevgep187, align 16, !dbg !96
  %uglygep89 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep8990 = bitcast i8* %uglygep89 to <4 x i32>*
  %scevgep91 = getelementptr <4 x i32>, <4 x i32>* %uglygep8990, i32 16407, !dbg !96
  %wide.load24.11 = load <4 x i32>, <4 x i32>* %scevgep91, align 16, !dbg !96
  %22 = add <4 x i32> %wide.load.11, %20, !dbg !98
  %23 = add <4 x i32> %wide.load24.11, %21, !dbg !98
  %uglygep182 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep182183 = bitcast i8* %uglygep182 to <4 x i32>*
  %scevgep184 = getelementptr <4 x i32>, <4 x i32>* %uglygep182183, i32 16408, !dbg !96
  %wide.load.12 = load <4 x i32>, <4 x i32>* %scevgep184, align 16, !dbg !96
  %uglygep86 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep8687 = bitcast i8* %uglygep86 to <4 x i32>*
  %scevgep88 = getelementptr <4 x i32>, <4 x i32>* %uglygep8687, i32 16409, !dbg !96
  %wide.load24.12 = load <4 x i32>, <4 x i32>* %scevgep88, align 16, !dbg !96
  %24 = add <4 x i32> %wide.load.12, %22, !dbg !98
  %25 = add <4 x i32> %wide.load24.12, %23, !dbg !98
  %uglygep179 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep179180 = bitcast i8* %uglygep179 to <4 x i32>*
  %scevgep181 = getelementptr <4 x i32>, <4 x i32>* %uglygep179180, i32 16410, !dbg !96
  %wide.load.13 = load <4 x i32>, <4 x i32>* %scevgep181, align 16, !dbg !96
  %uglygep83 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep8384 = bitcast i8* %uglygep83 to <4 x i32>*
  %scevgep85 = getelementptr <4 x i32>, <4 x i32>* %uglygep8384, i32 16411, !dbg !96
  %wide.load24.13 = load <4 x i32>, <4 x i32>* %scevgep85, align 16, !dbg !96
  %26 = add <4 x i32> %wide.load.13, %24, !dbg !98
  %27 = add <4 x i32> %wide.load24.13, %25, !dbg !98
  %uglygep176 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep176177 = bitcast i8* %uglygep176 to <4 x i32>*
  %scevgep178 = getelementptr <4 x i32>, <4 x i32>* %uglygep176177, i32 16412, !dbg !96
  %wide.load.14 = load <4 x i32>, <4 x i32>* %scevgep178, align 16, !dbg !96
  %uglygep80 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep8081 = bitcast i8* %uglygep80 to <4 x i32>*
  %scevgep82 = getelementptr <4 x i32>, <4 x i32>* %uglygep8081, i32 16413, !dbg !96
  %wide.load24.14 = load <4 x i32>, <4 x i32>* %scevgep82, align 16, !dbg !96
  %28 = add <4 x i32> %wide.load.14, %26, !dbg !98
  %29 = add <4 x i32> %wide.load24.14, %27, !dbg !98
  %uglygep173 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep173174 = bitcast i8* %uglygep173 to <4 x i32>*
  %scevgep175 = getelementptr <4 x i32>, <4 x i32>* %uglygep173174, i32 16414, !dbg !96
  %wide.load.15 = load <4 x i32>, <4 x i32>* %scevgep175, align 16, !dbg !96
  %uglygep77 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep7778 = bitcast i8* %uglygep77 to <4 x i32>*
  %scevgep79 = getelementptr <4 x i32>, <4 x i32>* %uglygep7778, i32 16415, !dbg !96
  %wide.load24.15 = load <4 x i32>, <4 x i32>* %scevgep79, align 16, !dbg !96
  %30 = add <4 x i32> %wide.load.15, %28, !dbg !98
  %31 = add <4 x i32> %wide.load24.15, %29, !dbg !98
  %uglygep170 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep170171 = bitcast i8* %uglygep170 to <4 x i32>*
  %scevgep172 = getelementptr <4 x i32>, <4 x i32>* %uglygep170171, i32 16416, !dbg !96
  %wide.load.16 = load <4 x i32>, <4 x i32>* %scevgep172, align 16, !dbg !96
  %uglygep74 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep7475 = bitcast i8* %uglygep74 to <4 x i32>*
  %scevgep76 = getelementptr <4 x i32>, <4 x i32>* %uglygep7475, i32 16417, !dbg !96
  %wide.load24.16 = load <4 x i32>, <4 x i32>* %scevgep76, align 16, !dbg !96
  %32 = add <4 x i32> %wide.load.16, %30, !dbg !98
  %33 = add <4 x i32> %wide.load24.16, %31, !dbg !98
  %uglygep167 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep167168 = bitcast i8* %uglygep167 to <4 x i32>*
  %scevgep169 = getelementptr <4 x i32>, <4 x i32>* %uglygep167168, i32 16418, !dbg !96
  %wide.load.17 = load <4 x i32>, <4 x i32>* %scevgep169, align 16, !dbg !96
  %uglygep71 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep7172 = bitcast i8* %uglygep71 to <4 x i32>*
  %scevgep73 = getelementptr <4 x i32>, <4 x i32>* %uglygep7172, i32 16419, !dbg !96
  %wide.load24.17 = load <4 x i32>, <4 x i32>* %scevgep73, align 16, !dbg !96
  %34 = add <4 x i32> %wide.load.17, %32, !dbg !98
  %35 = add <4 x i32> %wide.load24.17, %33, !dbg !98
  %uglygep164 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep164165 = bitcast i8* %uglygep164 to <4 x i32>*
  %scevgep166 = getelementptr <4 x i32>, <4 x i32>* %uglygep164165, i32 16420, !dbg !96
  %wide.load.18 = load <4 x i32>, <4 x i32>* %scevgep166, align 16, !dbg !96
  %uglygep68 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep6869 = bitcast i8* %uglygep68 to <4 x i32>*
  %scevgep70 = getelementptr <4 x i32>, <4 x i32>* %uglygep6869, i32 16421, !dbg !96
  %wide.load24.18 = load <4 x i32>, <4 x i32>* %scevgep70, align 16, !dbg !96
  %36 = add <4 x i32> %wide.load.18, %34, !dbg !98
  %37 = add <4 x i32> %wide.load24.18, %35, !dbg !98
  %uglygep161 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep161162 = bitcast i8* %uglygep161 to <4 x i32>*
  %scevgep163 = getelementptr <4 x i32>, <4 x i32>* %uglygep161162, i32 16422, !dbg !96
  %wide.load.19 = load <4 x i32>, <4 x i32>* %scevgep163, align 16, !dbg !96
  %uglygep65 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep6566 = bitcast i8* %uglygep65 to <4 x i32>*
  %scevgep67 = getelementptr <4 x i32>, <4 x i32>* %uglygep6566, i32 16423, !dbg !96
  %wide.load24.19 = load <4 x i32>, <4 x i32>* %scevgep67, align 16, !dbg !96
  %38 = add <4 x i32> %wide.load.19, %36, !dbg !98
  %39 = add <4 x i32> %wide.load24.19, %37, !dbg !98
  %uglygep158 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep158159 = bitcast i8* %uglygep158 to <4 x i32>*
  %scevgep160 = getelementptr <4 x i32>, <4 x i32>* %uglygep158159, i32 16424, !dbg !96
  %wide.load.20 = load <4 x i32>, <4 x i32>* %scevgep160, align 16, !dbg !96
  %uglygep62 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep6263 = bitcast i8* %uglygep62 to <4 x i32>*
  %scevgep64 = getelementptr <4 x i32>, <4 x i32>* %uglygep6263, i32 16425, !dbg !96
  %wide.load24.20 = load <4 x i32>, <4 x i32>* %scevgep64, align 16, !dbg !96
  %40 = add <4 x i32> %wide.load.20, %38, !dbg !98
  %41 = add <4 x i32> %wide.load24.20, %39, !dbg !98
  %uglygep155 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep155156 = bitcast i8* %uglygep155 to <4 x i32>*
  %scevgep157 = getelementptr <4 x i32>, <4 x i32>* %uglygep155156, i32 16426, !dbg !96
  %wide.load.21 = load <4 x i32>, <4 x i32>* %scevgep157, align 16, !dbg !96
  %uglygep59 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep5960 = bitcast i8* %uglygep59 to <4 x i32>*
  %scevgep61 = getelementptr <4 x i32>, <4 x i32>* %uglygep5960, i32 16427, !dbg !96
  %wide.load24.21 = load <4 x i32>, <4 x i32>* %scevgep61, align 16, !dbg !96
  %42 = add <4 x i32> %wide.load.21, %40, !dbg !98
  %43 = add <4 x i32> %wide.load24.21, %41, !dbg !98
  %uglygep152 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep152153 = bitcast i8* %uglygep152 to <4 x i32>*
  %scevgep154 = getelementptr <4 x i32>, <4 x i32>* %uglygep152153, i32 16428, !dbg !96
  %wide.load.22 = load <4 x i32>, <4 x i32>* %scevgep154, align 16, !dbg !96
  %uglygep56 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep5657 = bitcast i8* %uglygep56 to <4 x i32>*
  %scevgep58 = getelementptr <4 x i32>, <4 x i32>* %uglygep5657, i32 16429, !dbg !96
  %wide.load24.22 = load <4 x i32>, <4 x i32>* %scevgep58, align 16, !dbg !96
  %44 = add <4 x i32> %wide.load.22, %42, !dbg !98
  %45 = add <4 x i32> %wide.load24.22, %43, !dbg !98
  %uglygep149 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep149150 = bitcast i8* %uglygep149 to <4 x i32>*
  %scevgep151 = getelementptr <4 x i32>, <4 x i32>* %uglygep149150, i32 16430, !dbg !96
  %wide.load.23 = load <4 x i32>, <4 x i32>* %scevgep151, align 16, !dbg !96
  %uglygep53 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %scevgep55 = getelementptr <4 x i32>, <4 x i32>* %uglygep5354, i32 16431, !dbg !96
  %wide.load24.23 = load <4 x i32>, <4 x i32>* %scevgep55, align 16, !dbg !96
  %46 = add <4 x i32> %wide.load.23, %44, !dbg !98
  %47 = add <4 x i32> %wide.load24.23, %45, !dbg !98
  %uglygep146 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep146147 = bitcast i8* %uglygep146 to <4 x i32>*
  %scevgep148 = getelementptr <4 x i32>, <4 x i32>* %uglygep146147, i32 16432, !dbg !96
  %wide.load.24 = load <4 x i32>, <4 x i32>* %scevgep148, align 16, !dbg !96
  %uglygep50 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep5051 = bitcast i8* %uglygep50 to <4 x i32>*
  %scevgep52 = getelementptr <4 x i32>, <4 x i32>* %uglygep5051, i32 16433, !dbg !96
  %wide.load24.24 = load <4 x i32>, <4 x i32>* %scevgep52, align 16, !dbg !96
  %48 = add <4 x i32> %wide.load.24, %46, !dbg !98
  %49 = add <4 x i32> %wide.load24.24, %47, !dbg !98
  %uglygep143 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep143144 = bitcast i8* %uglygep143 to <4 x i32>*
  %scevgep145 = getelementptr <4 x i32>, <4 x i32>* %uglygep143144, i32 16434, !dbg !96
  %wide.load.25 = load <4 x i32>, <4 x i32>* %scevgep145, align 16, !dbg !96
  %uglygep47 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %scevgep49 = getelementptr <4 x i32>, <4 x i32>* %uglygep4748, i32 16435, !dbg !96
  %wide.load24.25 = load <4 x i32>, <4 x i32>* %scevgep49, align 16, !dbg !96
  %50 = add <4 x i32> %wide.load.25, %48, !dbg !98
  %51 = add <4 x i32> %wide.load24.25, %49, !dbg !98
  %uglygep140 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep140141 = bitcast i8* %uglygep140 to <4 x i32>*
  %scevgep142 = getelementptr <4 x i32>, <4 x i32>* %uglygep140141, i32 16436, !dbg !96
  %wide.load.26 = load <4 x i32>, <4 x i32>* %scevgep142, align 16, !dbg !96
  %uglygep44 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep4445 = bitcast i8* %uglygep44 to <4 x i32>*
  %scevgep46 = getelementptr <4 x i32>, <4 x i32>* %uglygep4445, i32 16437, !dbg !96
  %wide.load24.26 = load <4 x i32>, <4 x i32>* %scevgep46, align 16, !dbg !96
  %52 = add <4 x i32> %wide.load.26, %50, !dbg !98
  %53 = add <4 x i32> %wide.load24.26, %51, !dbg !98
  %uglygep137 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep137138 = bitcast i8* %uglygep137 to <4 x i32>*
  %scevgep139 = getelementptr <4 x i32>, <4 x i32>* %uglygep137138, i32 16438, !dbg !96
  %wide.load.27 = load <4 x i32>, <4 x i32>* %scevgep139, align 16, !dbg !96
  %uglygep41 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep4142 = bitcast i8* %uglygep41 to <4 x i32>*
  %scevgep43 = getelementptr <4 x i32>, <4 x i32>* %uglygep4142, i32 16439, !dbg !96
  %wide.load24.27 = load <4 x i32>, <4 x i32>* %scevgep43, align 16, !dbg !96
  %54 = add <4 x i32> %wide.load.27, %52, !dbg !98
  %55 = add <4 x i32> %wide.load24.27, %53, !dbg !98
  %uglygep134 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep134135 = bitcast i8* %uglygep134 to <4 x i32>*
  %scevgep136 = getelementptr <4 x i32>, <4 x i32>* %uglygep134135, i32 16440, !dbg !96
  %wide.load.28 = load <4 x i32>, <4 x i32>* %scevgep136, align 16, !dbg !96
  %uglygep38 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep3839 = bitcast i8* %uglygep38 to <4 x i32>*
  %scevgep40 = getelementptr <4 x i32>, <4 x i32>* %uglygep3839, i32 16441, !dbg !96
  %wide.load24.28 = load <4 x i32>, <4 x i32>* %scevgep40, align 16, !dbg !96
  %56 = add <4 x i32> %wide.load.28, %54, !dbg !98
  %57 = add <4 x i32> %wide.load24.28, %55, !dbg !98
  %uglygep131 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep131132 = bitcast i8* %uglygep131 to <4 x i32>*
  %scevgep133 = getelementptr <4 x i32>, <4 x i32>* %uglygep131132, i32 16442, !dbg !96
  %wide.load.29 = load <4 x i32>, <4 x i32>* %scevgep133, align 16, !dbg !96
  %uglygep35 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep3536 = bitcast i8* %uglygep35 to <4 x i32>*
  %scevgep37 = getelementptr <4 x i32>, <4 x i32>* %uglygep3536, i32 16443, !dbg !96
  %wide.load24.29 = load <4 x i32>, <4 x i32>* %scevgep37, align 16, !dbg !96
  %58 = add <4 x i32> %wide.load.29, %56, !dbg !98
  %59 = add <4 x i32> %wide.load24.29, %57, !dbg !98
  %uglygep128 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep128129 = bitcast i8* %uglygep128 to <4 x i32>*
  %scevgep130 = getelementptr <4 x i32>, <4 x i32>* %uglygep128129, i32 16444, !dbg !96
  %wide.load.30 = load <4 x i32>, <4 x i32>* %scevgep130, align 16, !dbg !96
  %uglygep32 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep3233 = bitcast i8* %uglygep32 to <4 x i32>*
  %scevgep34 = getelementptr <4 x i32>, <4 x i32>* %uglygep3233, i32 16445, !dbg !96
  %wide.load24.30 = load <4 x i32>, <4 x i32>* %scevgep34, align 16, !dbg !96
  %60 = add <4 x i32> %wide.load.30, %58, !dbg !98
  %61 = add <4 x i32> %wide.load24.30, %59, !dbg !98
  %uglygep125 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep125126 = bitcast i8* %uglygep125 to <4 x i32>*
  %scevgep127 = getelementptr <4 x i32>, <4 x i32>* %uglygep125126, i32 16446, !dbg !96
  %wide.load.31 = load <4 x i32>, <4 x i32>* %scevgep127, align 16, !dbg !96
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !96
  %uglygep31 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep31, i32 16447, !dbg !96
  %wide.load24.31 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !96
  %62 = add <4 x i32> %wide.load.31, %60, !dbg !98
  %63 = add <4 x i32> %wide.load24.31, %61, !dbg !98
  %bin.rdx = add <4 x i32> %63, %62, !dbg !95
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !95
  %bin.rdx25 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !95
  %rdx.shuf26 = shufflevector <4 x i32> %bin.rdx25, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !95
  %bin.rdx27 = add <4 x i32> %bin.rdx25, %rdx.shuf26, !dbg !95
  %64 = extractelement <4 x i32> %bin.rdx27, i32 0, !dbg !95
  call void @llvm.dbg.value(metadata i32 %64, metadata !85, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 undef, metadata !86, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !92
  %lsr.iv.next = add nsw i32 %lsr.iv, 1024, !dbg !99
  %exitcond21 = icmp eq i32 %lsr.iv.next, 0, !dbg !99
  br i1 %exitcond21, label %for.cond.cleanup, label %vector.ph, !dbg !93, !llvm.loop !100

for.cond.cleanup:                                 ; preds = %vector.ph
  call void @llvm.dbg.value(metadata i32 %64, metadata !85, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 %64, metadata !85, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 %64, metadata !85, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 %64, metadata !85, metadata !DIExpression()), !dbg !91
  ret i32 %64, !dbg !102

; uselistorder directives
  uselistorder i32 %lsr.iv, { 64, 63, 31, 62, 30, 61, 29, 60, 28, 59, 27, 58, 26, 57, 25, 56, 24, 55, 23, 54, 22, 53, 21, 52, 20, 51, 19, 50, 18, 49, 17, 48, 16, 47, 15, 46, 14, 45, 13, 44, 12, 43, 11, 42, 10, 41, 9, 40, 8, 39, 7, 38, 6, 37, 5, 36, 4, 35, 3, 34, 2, 33, 1, 32, 0 }
  uselistorder label %vector.ph, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex3() local_unnamed_addr #0 !dbg !103 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !105, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()), !dbg !114
  br label %vector.ph, !dbg !115

vector.ph:                                        ; preds = %entry, %vector.ph
  %lsr.iv74 = phi i32 [ -262144, %entry ], [ %lsr.iv.next75, %vector.ph ]
  %ret.035 = phi i32 [ 0, %entry ], [ %64, %vector.ph ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !106, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 0, metadata !108, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i32 %ret.035, metadata !105, metadata !DIExpression()), !dbg !113
  %0 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %ret.035, i32 0, !dbg !117
  %uglygep266 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep266267 = bitcast i8* %uglygep266 to <4 x i32>*
  %scevgep268 = getelementptr <4 x i32>, <4 x i32>* %uglygep266267, i32 16384, !dbg !118
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep268, align 16, !dbg !118
  %uglygep170 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep170171 = bitcast i8* %uglygep170 to <4 x i32>*
  %scevgep172 = getelementptr <4 x i32>, <4 x i32>* %uglygep170171, i32 16385, !dbg !118
  %wide.load41 = load <4 x i32>, <4 x i32>* %scevgep172, align 16, !dbg !118
  %1 = add <4 x i32> %wide.load, %0, !dbg !120
  %uglygep263 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep263264 = bitcast i8* %uglygep263 to <4 x i32>*
  %scevgep265 = getelementptr <4 x i32>, <4 x i32>* %uglygep263264, i32 16386, !dbg !118
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep265, align 16, !dbg !118
  %uglygep167 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep167168 = bitcast i8* %uglygep167 to <4 x i32>*
  %scevgep169 = getelementptr <4 x i32>, <4 x i32>* %uglygep167168, i32 16387, !dbg !118
  %wide.load41.1 = load <4 x i32>, <4 x i32>* %scevgep169, align 16, !dbg !118
  %2 = add <4 x i32> %wide.load.1, %1, !dbg !120
  %3 = add <4 x i32> %wide.load41.1, %wide.load41, !dbg !120
  %uglygep260 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep260261 = bitcast i8* %uglygep260 to <4 x i32>*
  %scevgep262 = getelementptr <4 x i32>, <4 x i32>* %uglygep260261, i32 16388, !dbg !118
  %wide.load.2 = load <4 x i32>, <4 x i32>* %scevgep262, align 16, !dbg !118
  %uglygep164 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep164165 = bitcast i8* %uglygep164 to <4 x i32>*
  %scevgep166 = getelementptr <4 x i32>, <4 x i32>* %uglygep164165, i32 16389, !dbg !118
  %wide.load41.2 = load <4 x i32>, <4 x i32>* %scevgep166, align 16, !dbg !118
  %4 = add <4 x i32> %wide.load.2, %2, !dbg !120
  %5 = add <4 x i32> %wide.load41.2, %3, !dbg !120
  %uglygep257 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep257258 = bitcast i8* %uglygep257 to <4 x i32>*
  %scevgep259 = getelementptr <4 x i32>, <4 x i32>* %uglygep257258, i32 16390, !dbg !118
  %wide.load.3 = load <4 x i32>, <4 x i32>* %scevgep259, align 16, !dbg !118
  %uglygep161 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep161162 = bitcast i8* %uglygep161 to <4 x i32>*
  %scevgep163 = getelementptr <4 x i32>, <4 x i32>* %uglygep161162, i32 16391, !dbg !118
  %wide.load41.3 = load <4 x i32>, <4 x i32>* %scevgep163, align 16, !dbg !118
  %6 = add <4 x i32> %wide.load.3, %4, !dbg !120
  %7 = add <4 x i32> %wide.load41.3, %5, !dbg !120
  %uglygep254 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep254255 = bitcast i8* %uglygep254 to <4 x i32>*
  %scevgep256 = getelementptr <4 x i32>, <4 x i32>* %uglygep254255, i32 16392, !dbg !118
  %wide.load.4 = load <4 x i32>, <4 x i32>* %scevgep256, align 16, !dbg !118
  %uglygep158 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep158159 = bitcast i8* %uglygep158 to <4 x i32>*
  %scevgep160 = getelementptr <4 x i32>, <4 x i32>* %uglygep158159, i32 16393, !dbg !118
  %wide.load41.4 = load <4 x i32>, <4 x i32>* %scevgep160, align 16, !dbg !118
  %8 = add <4 x i32> %wide.load.4, %6, !dbg !120
  %9 = add <4 x i32> %wide.load41.4, %7, !dbg !120
  %uglygep251 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep251252 = bitcast i8* %uglygep251 to <4 x i32>*
  %scevgep253 = getelementptr <4 x i32>, <4 x i32>* %uglygep251252, i32 16394, !dbg !118
  %wide.load.5 = load <4 x i32>, <4 x i32>* %scevgep253, align 16, !dbg !118
  %uglygep155 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep155156 = bitcast i8* %uglygep155 to <4 x i32>*
  %scevgep157 = getelementptr <4 x i32>, <4 x i32>* %uglygep155156, i32 16395, !dbg !118
  %wide.load41.5 = load <4 x i32>, <4 x i32>* %scevgep157, align 16, !dbg !118
  %10 = add <4 x i32> %wide.load.5, %8, !dbg !120
  %11 = add <4 x i32> %wide.load41.5, %9, !dbg !120
  %uglygep248 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep248249 = bitcast i8* %uglygep248 to <4 x i32>*
  %scevgep250 = getelementptr <4 x i32>, <4 x i32>* %uglygep248249, i32 16396, !dbg !118
  %wide.load.6 = load <4 x i32>, <4 x i32>* %scevgep250, align 16, !dbg !118
  %uglygep152 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep152153 = bitcast i8* %uglygep152 to <4 x i32>*
  %scevgep154 = getelementptr <4 x i32>, <4 x i32>* %uglygep152153, i32 16397, !dbg !118
  %wide.load41.6 = load <4 x i32>, <4 x i32>* %scevgep154, align 16, !dbg !118
  %12 = add <4 x i32> %wide.load.6, %10, !dbg !120
  %13 = add <4 x i32> %wide.load41.6, %11, !dbg !120
  %uglygep245 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep245246 = bitcast i8* %uglygep245 to <4 x i32>*
  %scevgep247 = getelementptr <4 x i32>, <4 x i32>* %uglygep245246, i32 16398, !dbg !118
  %wide.load.7 = load <4 x i32>, <4 x i32>* %scevgep247, align 16, !dbg !118
  %uglygep149 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep149150 = bitcast i8* %uglygep149 to <4 x i32>*
  %scevgep151 = getelementptr <4 x i32>, <4 x i32>* %uglygep149150, i32 16399, !dbg !118
  %wide.load41.7 = load <4 x i32>, <4 x i32>* %scevgep151, align 16, !dbg !118
  %14 = add <4 x i32> %wide.load.7, %12, !dbg !120
  %15 = add <4 x i32> %wide.load41.7, %13, !dbg !120
  %uglygep242 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep242243 = bitcast i8* %uglygep242 to <4 x i32>*
  %scevgep244 = getelementptr <4 x i32>, <4 x i32>* %uglygep242243, i32 16400, !dbg !118
  %wide.load.8 = load <4 x i32>, <4 x i32>* %scevgep244, align 16, !dbg !118
  %uglygep146 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep146147 = bitcast i8* %uglygep146 to <4 x i32>*
  %scevgep148 = getelementptr <4 x i32>, <4 x i32>* %uglygep146147, i32 16401, !dbg !118
  %wide.load41.8 = load <4 x i32>, <4 x i32>* %scevgep148, align 16, !dbg !118
  %16 = add <4 x i32> %wide.load.8, %14, !dbg !120
  %17 = add <4 x i32> %wide.load41.8, %15, !dbg !120
  %uglygep239 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep239240 = bitcast i8* %uglygep239 to <4 x i32>*
  %scevgep241 = getelementptr <4 x i32>, <4 x i32>* %uglygep239240, i32 16402, !dbg !118
  %wide.load.9 = load <4 x i32>, <4 x i32>* %scevgep241, align 16, !dbg !118
  %uglygep143 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep143144 = bitcast i8* %uglygep143 to <4 x i32>*
  %scevgep145 = getelementptr <4 x i32>, <4 x i32>* %uglygep143144, i32 16403, !dbg !118
  %wide.load41.9 = load <4 x i32>, <4 x i32>* %scevgep145, align 16, !dbg !118
  %18 = add <4 x i32> %wide.load.9, %16, !dbg !120
  %19 = add <4 x i32> %wide.load41.9, %17, !dbg !120
  %uglygep236 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep236237 = bitcast i8* %uglygep236 to <4 x i32>*
  %scevgep238 = getelementptr <4 x i32>, <4 x i32>* %uglygep236237, i32 16404, !dbg !118
  %wide.load.10 = load <4 x i32>, <4 x i32>* %scevgep238, align 16, !dbg !118
  %uglygep140 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep140141 = bitcast i8* %uglygep140 to <4 x i32>*
  %scevgep142 = getelementptr <4 x i32>, <4 x i32>* %uglygep140141, i32 16405, !dbg !118
  %wide.load41.10 = load <4 x i32>, <4 x i32>* %scevgep142, align 16, !dbg !118
  %20 = add <4 x i32> %wide.load.10, %18, !dbg !120
  %21 = add <4 x i32> %wide.load41.10, %19, !dbg !120
  %uglygep233 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep233234 = bitcast i8* %uglygep233 to <4 x i32>*
  %scevgep235 = getelementptr <4 x i32>, <4 x i32>* %uglygep233234, i32 16406, !dbg !118
  %wide.load.11 = load <4 x i32>, <4 x i32>* %scevgep235, align 16, !dbg !118
  %uglygep137 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep137138 = bitcast i8* %uglygep137 to <4 x i32>*
  %scevgep139 = getelementptr <4 x i32>, <4 x i32>* %uglygep137138, i32 16407, !dbg !118
  %wide.load41.11 = load <4 x i32>, <4 x i32>* %scevgep139, align 16, !dbg !118
  %22 = add <4 x i32> %wide.load.11, %20, !dbg !120
  %23 = add <4 x i32> %wide.load41.11, %21, !dbg !120
  %uglygep230 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep230231 = bitcast i8* %uglygep230 to <4 x i32>*
  %scevgep232 = getelementptr <4 x i32>, <4 x i32>* %uglygep230231, i32 16408, !dbg !118
  %wide.load.12 = load <4 x i32>, <4 x i32>* %scevgep232, align 16, !dbg !118
  %uglygep134 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep134135 = bitcast i8* %uglygep134 to <4 x i32>*
  %scevgep136 = getelementptr <4 x i32>, <4 x i32>* %uglygep134135, i32 16409, !dbg !118
  %wide.load41.12 = load <4 x i32>, <4 x i32>* %scevgep136, align 16, !dbg !118
  %24 = add <4 x i32> %wide.load.12, %22, !dbg !120
  %25 = add <4 x i32> %wide.load41.12, %23, !dbg !120
  %uglygep227 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep227228 = bitcast i8* %uglygep227 to <4 x i32>*
  %scevgep229 = getelementptr <4 x i32>, <4 x i32>* %uglygep227228, i32 16410, !dbg !118
  %wide.load.13 = load <4 x i32>, <4 x i32>* %scevgep229, align 16, !dbg !118
  %uglygep131 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep131132 = bitcast i8* %uglygep131 to <4 x i32>*
  %scevgep133 = getelementptr <4 x i32>, <4 x i32>* %uglygep131132, i32 16411, !dbg !118
  %wide.load41.13 = load <4 x i32>, <4 x i32>* %scevgep133, align 16, !dbg !118
  %26 = add <4 x i32> %wide.load.13, %24, !dbg !120
  %27 = add <4 x i32> %wide.load41.13, %25, !dbg !120
  %uglygep224 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep224225 = bitcast i8* %uglygep224 to <4 x i32>*
  %scevgep226 = getelementptr <4 x i32>, <4 x i32>* %uglygep224225, i32 16412, !dbg !118
  %wide.load.14 = load <4 x i32>, <4 x i32>* %scevgep226, align 16, !dbg !118
  %uglygep128 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep128129 = bitcast i8* %uglygep128 to <4 x i32>*
  %scevgep130 = getelementptr <4 x i32>, <4 x i32>* %uglygep128129, i32 16413, !dbg !118
  %wide.load41.14 = load <4 x i32>, <4 x i32>* %scevgep130, align 16, !dbg !118
  %28 = add <4 x i32> %wide.load.14, %26, !dbg !120
  %29 = add <4 x i32> %wide.load41.14, %27, !dbg !120
  %uglygep221 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep221222 = bitcast i8* %uglygep221 to <4 x i32>*
  %scevgep223 = getelementptr <4 x i32>, <4 x i32>* %uglygep221222, i32 16414, !dbg !118
  %wide.load.15 = load <4 x i32>, <4 x i32>* %scevgep223, align 16, !dbg !118
  %uglygep125 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep125126 = bitcast i8* %uglygep125 to <4 x i32>*
  %scevgep127 = getelementptr <4 x i32>, <4 x i32>* %uglygep125126, i32 16415, !dbg !118
  %wide.load41.15 = load <4 x i32>, <4 x i32>* %scevgep127, align 16, !dbg !118
  %30 = add <4 x i32> %wide.load.15, %28, !dbg !120
  %31 = add <4 x i32> %wide.load41.15, %29, !dbg !120
  %uglygep218 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep218219 = bitcast i8* %uglygep218 to <4 x i32>*
  %scevgep220 = getelementptr <4 x i32>, <4 x i32>* %uglygep218219, i32 16416, !dbg !118
  %wide.load.16 = load <4 x i32>, <4 x i32>* %scevgep220, align 16, !dbg !118
  %uglygep122 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep122123 = bitcast i8* %uglygep122 to <4 x i32>*
  %scevgep124 = getelementptr <4 x i32>, <4 x i32>* %uglygep122123, i32 16417, !dbg !118
  %wide.load41.16 = load <4 x i32>, <4 x i32>* %scevgep124, align 16, !dbg !118
  %32 = add <4 x i32> %wide.load.16, %30, !dbg !120
  %33 = add <4 x i32> %wide.load41.16, %31, !dbg !120
  %uglygep215 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep215216 = bitcast i8* %uglygep215 to <4 x i32>*
  %scevgep217 = getelementptr <4 x i32>, <4 x i32>* %uglygep215216, i32 16418, !dbg !118
  %wide.load.17 = load <4 x i32>, <4 x i32>* %scevgep217, align 16, !dbg !118
  %uglygep119 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep119120 = bitcast i8* %uglygep119 to <4 x i32>*
  %scevgep121 = getelementptr <4 x i32>, <4 x i32>* %uglygep119120, i32 16419, !dbg !118
  %wide.load41.17 = load <4 x i32>, <4 x i32>* %scevgep121, align 16, !dbg !118
  %34 = add <4 x i32> %wide.load.17, %32, !dbg !120
  %35 = add <4 x i32> %wide.load41.17, %33, !dbg !120
  %uglygep212 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep212213 = bitcast i8* %uglygep212 to <4 x i32>*
  %scevgep214 = getelementptr <4 x i32>, <4 x i32>* %uglygep212213, i32 16420, !dbg !118
  %wide.load.18 = load <4 x i32>, <4 x i32>* %scevgep214, align 16, !dbg !118
  %uglygep116 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep116117 = bitcast i8* %uglygep116 to <4 x i32>*
  %scevgep118 = getelementptr <4 x i32>, <4 x i32>* %uglygep116117, i32 16421, !dbg !118
  %wide.load41.18 = load <4 x i32>, <4 x i32>* %scevgep118, align 16, !dbg !118
  %36 = add <4 x i32> %wide.load.18, %34, !dbg !120
  %37 = add <4 x i32> %wide.load41.18, %35, !dbg !120
  %uglygep209 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep209210 = bitcast i8* %uglygep209 to <4 x i32>*
  %scevgep211 = getelementptr <4 x i32>, <4 x i32>* %uglygep209210, i32 16422, !dbg !118
  %wide.load.19 = load <4 x i32>, <4 x i32>* %scevgep211, align 16, !dbg !118
  %uglygep113 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep113114 = bitcast i8* %uglygep113 to <4 x i32>*
  %scevgep115 = getelementptr <4 x i32>, <4 x i32>* %uglygep113114, i32 16423, !dbg !118
  %wide.load41.19 = load <4 x i32>, <4 x i32>* %scevgep115, align 16, !dbg !118
  %38 = add <4 x i32> %wide.load.19, %36, !dbg !120
  %39 = add <4 x i32> %wide.load41.19, %37, !dbg !120
  %uglygep206 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep206207 = bitcast i8* %uglygep206 to <4 x i32>*
  %scevgep208 = getelementptr <4 x i32>, <4 x i32>* %uglygep206207, i32 16424, !dbg !118
  %wide.load.20 = load <4 x i32>, <4 x i32>* %scevgep208, align 16, !dbg !118
  %uglygep110 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep110111 = bitcast i8* %uglygep110 to <4 x i32>*
  %scevgep112 = getelementptr <4 x i32>, <4 x i32>* %uglygep110111, i32 16425, !dbg !118
  %wide.load41.20 = load <4 x i32>, <4 x i32>* %scevgep112, align 16, !dbg !118
  %40 = add <4 x i32> %wide.load.20, %38, !dbg !120
  %41 = add <4 x i32> %wide.load41.20, %39, !dbg !120
  %uglygep203 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep203204 = bitcast i8* %uglygep203 to <4 x i32>*
  %scevgep205 = getelementptr <4 x i32>, <4 x i32>* %uglygep203204, i32 16426, !dbg !118
  %wide.load.21 = load <4 x i32>, <4 x i32>* %scevgep205, align 16, !dbg !118
  %uglygep107 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep107108 = bitcast i8* %uglygep107 to <4 x i32>*
  %scevgep109 = getelementptr <4 x i32>, <4 x i32>* %uglygep107108, i32 16427, !dbg !118
  %wide.load41.21 = load <4 x i32>, <4 x i32>* %scevgep109, align 16, !dbg !118
  %42 = add <4 x i32> %wide.load.21, %40, !dbg !120
  %43 = add <4 x i32> %wide.load41.21, %41, !dbg !120
  %uglygep200 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep200201 = bitcast i8* %uglygep200 to <4 x i32>*
  %scevgep202 = getelementptr <4 x i32>, <4 x i32>* %uglygep200201, i32 16428, !dbg !118
  %wide.load.22 = load <4 x i32>, <4 x i32>* %scevgep202, align 16, !dbg !118
  %uglygep104 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep104105 = bitcast i8* %uglygep104 to <4 x i32>*
  %scevgep106 = getelementptr <4 x i32>, <4 x i32>* %uglygep104105, i32 16429, !dbg !118
  %wide.load41.22 = load <4 x i32>, <4 x i32>* %scevgep106, align 16, !dbg !118
  %44 = add <4 x i32> %wide.load.22, %42, !dbg !120
  %45 = add <4 x i32> %wide.load41.22, %43, !dbg !120
  %uglygep197 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep197198 = bitcast i8* %uglygep197 to <4 x i32>*
  %scevgep199 = getelementptr <4 x i32>, <4 x i32>* %uglygep197198, i32 16430, !dbg !118
  %wide.load.23 = load <4 x i32>, <4 x i32>* %scevgep199, align 16, !dbg !118
  %uglygep101 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep101102 = bitcast i8* %uglygep101 to <4 x i32>*
  %scevgep103 = getelementptr <4 x i32>, <4 x i32>* %uglygep101102, i32 16431, !dbg !118
  %wide.load41.23 = load <4 x i32>, <4 x i32>* %scevgep103, align 16, !dbg !118
  %46 = add <4 x i32> %wide.load.23, %44, !dbg !120
  %47 = add <4 x i32> %wide.load41.23, %45, !dbg !120
  %uglygep194 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep194195 = bitcast i8* %uglygep194 to <4 x i32>*
  %scevgep196 = getelementptr <4 x i32>, <4 x i32>* %uglygep194195, i32 16432, !dbg !118
  %wide.load.24 = load <4 x i32>, <4 x i32>* %scevgep196, align 16, !dbg !118
  %uglygep98 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep9899 = bitcast i8* %uglygep98 to <4 x i32>*
  %scevgep100 = getelementptr <4 x i32>, <4 x i32>* %uglygep9899, i32 16433, !dbg !118
  %wide.load41.24 = load <4 x i32>, <4 x i32>* %scevgep100, align 16, !dbg !118
  %48 = add <4 x i32> %wide.load.24, %46, !dbg !120
  %49 = add <4 x i32> %wide.load41.24, %47, !dbg !120
  %uglygep191 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep191192 = bitcast i8* %uglygep191 to <4 x i32>*
  %scevgep193 = getelementptr <4 x i32>, <4 x i32>* %uglygep191192, i32 16434, !dbg !118
  %wide.load.25 = load <4 x i32>, <4 x i32>* %scevgep193, align 16, !dbg !118
  %uglygep95 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep9596 = bitcast i8* %uglygep95 to <4 x i32>*
  %scevgep97 = getelementptr <4 x i32>, <4 x i32>* %uglygep9596, i32 16435, !dbg !118
  %wide.load41.25 = load <4 x i32>, <4 x i32>* %scevgep97, align 16, !dbg !118
  %50 = add <4 x i32> %wide.load.25, %48, !dbg !120
  %51 = add <4 x i32> %wide.load41.25, %49, !dbg !120
  %uglygep188 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep188189 = bitcast i8* %uglygep188 to <4 x i32>*
  %scevgep190 = getelementptr <4 x i32>, <4 x i32>* %uglygep188189, i32 16436, !dbg !118
  %wide.load.26 = load <4 x i32>, <4 x i32>* %scevgep190, align 16, !dbg !118
  %uglygep92 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep9293 = bitcast i8* %uglygep92 to <4 x i32>*
  %scevgep94 = getelementptr <4 x i32>, <4 x i32>* %uglygep9293, i32 16437, !dbg !118
  %wide.load41.26 = load <4 x i32>, <4 x i32>* %scevgep94, align 16, !dbg !118
  %52 = add <4 x i32> %wide.load.26, %50, !dbg !120
  %53 = add <4 x i32> %wide.load41.26, %51, !dbg !120
  %uglygep185 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep185186 = bitcast i8* %uglygep185 to <4 x i32>*
  %scevgep187 = getelementptr <4 x i32>, <4 x i32>* %uglygep185186, i32 16438, !dbg !118
  %wide.load.27 = load <4 x i32>, <4 x i32>* %scevgep187, align 16, !dbg !118
  %uglygep89 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep8990 = bitcast i8* %uglygep89 to <4 x i32>*
  %scevgep91 = getelementptr <4 x i32>, <4 x i32>* %uglygep8990, i32 16439, !dbg !118
  %wide.load41.27 = load <4 x i32>, <4 x i32>* %scevgep91, align 16, !dbg !118
  %54 = add <4 x i32> %wide.load.27, %52, !dbg !120
  %55 = add <4 x i32> %wide.load41.27, %53, !dbg !120
  %uglygep182 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep182183 = bitcast i8* %uglygep182 to <4 x i32>*
  %scevgep184 = getelementptr <4 x i32>, <4 x i32>* %uglygep182183, i32 16440, !dbg !118
  %wide.load.28 = load <4 x i32>, <4 x i32>* %scevgep184, align 16, !dbg !118
  %uglygep86 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep8687 = bitcast i8* %uglygep86 to <4 x i32>*
  %scevgep88 = getelementptr <4 x i32>, <4 x i32>* %uglygep8687, i32 16441, !dbg !118
  %wide.load41.28 = load <4 x i32>, <4 x i32>* %scevgep88, align 16, !dbg !118
  %56 = add <4 x i32> %wide.load.28, %54, !dbg !120
  %57 = add <4 x i32> %wide.load41.28, %55, !dbg !120
  %uglygep179 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep179180 = bitcast i8* %uglygep179 to <4 x i32>*
  %scevgep181 = getelementptr <4 x i32>, <4 x i32>* %uglygep179180, i32 16442, !dbg !118
  %wide.load.29 = load <4 x i32>, <4 x i32>* %scevgep181, align 16, !dbg !118
  %uglygep83 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep8384 = bitcast i8* %uglygep83 to <4 x i32>*
  %scevgep85 = getelementptr <4 x i32>, <4 x i32>* %uglygep8384, i32 16443, !dbg !118
  %wide.load41.29 = load <4 x i32>, <4 x i32>* %scevgep85, align 16, !dbg !118
  %58 = add <4 x i32> %wide.load.29, %56, !dbg !120
  %59 = add <4 x i32> %wide.load41.29, %57, !dbg !120
  %uglygep176 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep176177 = bitcast i8* %uglygep176 to <4 x i32>*
  %scevgep178 = getelementptr <4 x i32>, <4 x i32>* %uglygep176177, i32 16444, !dbg !118
  %wide.load.30 = load <4 x i32>, <4 x i32>* %scevgep178, align 16, !dbg !118
  %uglygep80 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep8081 = bitcast i8* %uglygep80 to <4 x i32>*
  %scevgep82 = getelementptr <4 x i32>, <4 x i32>* %uglygep8081, i32 16445, !dbg !118
  %wide.load41.30 = load <4 x i32>, <4 x i32>* %scevgep82, align 16, !dbg !118
  %60 = add <4 x i32> %wide.load.30, %58, !dbg !120
  %61 = add <4 x i32> %wide.load41.30, %59, !dbg !120
  %uglygep173 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep173174 = bitcast i8* %uglygep173 to <4 x i32>*
  %scevgep175 = getelementptr <4 x i32>, <4 x i32>* %uglygep173174, i32 16446, !dbg !118
  %wide.load.31 = load <4 x i32>, <4 x i32>* %scevgep175, align 16, !dbg !118
  %uglygep77 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv74, !dbg !118
  %uglygep7778 = bitcast i8* %uglygep77 to <4 x i32>*
  %scevgep79 = getelementptr <4 x i32>, <4 x i32>* %uglygep7778, i32 16447, !dbg !118
  %wide.load41.31 = load <4 x i32>, <4 x i32>* %scevgep79, align 16, !dbg !118
  %62 = add <4 x i32> %wide.load.31, %60, !dbg !120
  %63 = add <4 x i32> %wide.load41.31, %61, !dbg !120
  %bin.rdx = add <4 x i32> %63, %62, !dbg !117
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !117
  %bin.rdx42 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !117
  %rdx.shuf43 = shufflevector <4 x i32> %bin.rdx42, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !117
  %bin.rdx44 = add <4 x i32> %bin.rdx42, %rdx.shuf43, !dbg !117
  %64 = extractelement <4 x i32> %bin.rdx44, i32 0, !dbg !117
  call void @llvm.dbg.value(metadata i32 %64, metadata !105, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 undef, metadata !106, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !114
  %lsr.iv.next75 = add nsw i32 %lsr.iv74, 1024, !dbg !121
  %exitcond38 = icmp eq i32 %lsr.iv.next75, 0, !dbg !121
  br i1 %exitcond38, label %vector.ph48, label %vector.ph, !dbg !115, !llvm.loop !122

vector.ph48:                                      ; preds = %vector.ph
  call void @llvm.dbg.value(metadata i32 %64, metadata !105, metadata !DIExpression()), !dbg !113
  %65 = shufflevector <4 x i32> %bin.rdx44, <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>, !dbg !124
  br label %vector.body47, !dbg !124

vector.body47:                                    ; preds = %vector.body47, %vector.ph48
  %lsr.iv = phi i32 [ %lsr.iv.next, %vector.body47 ], [ -128000, %vector.ph48 ], !dbg !125
  %vec.phi57 = phi <4 x i32> [ %65, %vector.ph48 ], [ %66, %vector.body47 ]
  %vec.phi58 = phi <4 x i32> [ zeroinitializer, %vector.ph48 ], [ %67, %vector.body47 ]
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !127
  %uglygep72 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep72, i32 8000, !dbg !127
  %wide.load59 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !127
  %scevgep73 = getelementptr <4 x i32>, <4 x i32>* %uglygep72, i32 8001, !dbg !127
  %wide.load60 = load <4 x i32>, <4 x i32>* %scevgep73, align 16, !dbg !127
  %66 = add <4 x i32> %wide.load59, %vec.phi57, !dbg !128
  %67 = add <4 x i32> %wide.load60, %vec.phi58, !dbg !128
  %lsr.iv.next = add nsw i32 %lsr.iv, 32, !dbg !125
  %68 = icmp eq i32 %lsr.iv.next, 0, !dbg !125
  br i1 %68, label %middle.block45, label %vector.body47, !dbg !125, !llvm.loop !129

middle.block45:                                   ; preds = %vector.body47
  %bin.rdx61 = add <4 x i32> %67, %66, !dbg !124
  %rdx.shuf62 = shufflevector <4 x i32> %bin.rdx61, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !124
  %bin.rdx63 = add <4 x i32> %bin.rdx61, %rdx.shuf62, !dbg !124
  %rdx.shuf64 = shufflevector <4 x i32> %bin.rdx63, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !124
  %bin.rdx65 = add <4 x i32> %bin.rdx63, %rdx.shuf64, !dbg !124
  %69 = extractelement <4 x i32> %bin.rdx65, i32 0, !dbg !124
  call void @llvm.dbg.value(metadata i32 %69, metadata !105, metadata !DIExpression()), !dbg !113
  ret i32 %69, !dbg !131

; uselistorder directives
  uselistorder i32 %lsr.iv, { 1, 0 }
  uselistorder i32 %lsr.iv74, { 64, 63, 31, 62, 30, 61, 29, 60, 28, 59, 27, 58, 26, 57, 25, 56, 24, 55, 23, 54, 22, 53, 21, 52, 20, 51, 19, 50, 18, 49, 17, 48, 16, 47, 15, 46, 14, 45, 13, 44, 12, 43, 11, 42, 10, 41, 9, 40, 8, 39, 7, 38, 6, 37, 5, 36, 4, 35, 3, 34, 2, 33, 1, 32, 0 }
  uselistorder label %vector.ph, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex4() local_unnamed_addr #0 !dbg !132 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !134, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i32 0, metadata !135, metadata !DIExpression()), !dbg !142
  br label %vector.ph, !dbg !143

vector.ph:                                        ; preds = %entry, %vector.ph
  %lsr.iv97 = phi i32 [ -1024, %entry ], [ %lsr.iv.next, %vector.ph ]
  %lsr.iv = phi [256 x [256 x i32]]* [ bitcast (i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 0, i32 252) to [256 x [256 x i32]]*), %entry ], [ %66, %vector.ph ]
  %ret.023 = phi i32 [ 0, %entry ], [ %add7, %vector.ph ]
  %lsr.iv33 = bitcast [256 x [256 x i32]]* %lsr.iv to <4 x i32>*
  call void @llvm.dbg.value(metadata i32 undef, metadata !135, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i32 0, metadata !137, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32 %ret.023, metadata !134, metadata !DIExpression()), !dbg !141
  %0 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %ret.023, i32 0, !dbg !145
  %scevgep96 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -63, !dbg !146
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep96, align 16, !dbg !146
  %scevgep64 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -62, !dbg !146
  %wide.load28 = load <4 x i32>, <4 x i32>* %scevgep64, align 16, !dbg !146
  %1 = add <4 x i32> %wide.load, %0, !dbg !148
  %scevgep95 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -61, !dbg !146
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep95, align 16, !dbg !146
  %scevgep63 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -60, !dbg !146
  %wide.load28.1 = load <4 x i32>, <4 x i32>* %scevgep63, align 16, !dbg !146
  %2 = add <4 x i32> %wide.load.1, %1, !dbg !148
  %3 = add <4 x i32> %wide.load28.1, %wide.load28, !dbg !148
  %scevgep94 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -59, !dbg !146
  %wide.load.2 = load <4 x i32>, <4 x i32>* %scevgep94, align 16, !dbg !146
  %scevgep62 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -58, !dbg !146
  %wide.load28.2 = load <4 x i32>, <4 x i32>* %scevgep62, align 16, !dbg !146
  %4 = add <4 x i32> %wide.load.2, %2, !dbg !148
  %5 = add <4 x i32> %wide.load28.2, %3, !dbg !148
  %scevgep93 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -57, !dbg !146
  %wide.load.3 = load <4 x i32>, <4 x i32>* %scevgep93, align 16, !dbg !146
  %scevgep61 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -56, !dbg !146
  %wide.load28.3 = load <4 x i32>, <4 x i32>* %scevgep61, align 16, !dbg !146
  %6 = add <4 x i32> %wide.load.3, %4, !dbg !148
  %7 = add <4 x i32> %wide.load28.3, %5, !dbg !148
  %scevgep92 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -55, !dbg !146
  %wide.load.4 = load <4 x i32>, <4 x i32>* %scevgep92, align 16, !dbg !146
  %scevgep60 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -54, !dbg !146
  %wide.load28.4 = load <4 x i32>, <4 x i32>* %scevgep60, align 16, !dbg !146
  %8 = add <4 x i32> %wide.load.4, %6, !dbg !148
  %9 = add <4 x i32> %wide.load28.4, %7, !dbg !148
  %scevgep91 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -53, !dbg !146
  %wide.load.5 = load <4 x i32>, <4 x i32>* %scevgep91, align 16, !dbg !146
  %scevgep59 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -52, !dbg !146
  %wide.load28.5 = load <4 x i32>, <4 x i32>* %scevgep59, align 16, !dbg !146
  %10 = add <4 x i32> %wide.load.5, %8, !dbg !148
  %11 = add <4 x i32> %wide.load28.5, %9, !dbg !148
  %scevgep90 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -51, !dbg !146
  %wide.load.6 = load <4 x i32>, <4 x i32>* %scevgep90, align 16, !dbg !146
  %scevgep58 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -50, !dbg !146
  %wide.load28.6 = load <4 x i32>, <4 x i32>* %scevgep58, align 16, !dbg !146
  %12 = add <4 x i32> %wide.load.6, %10, !dbg !148
  %13 = add <4 x i32> %wide.load28.6, %11, !dbg !148
  %scevgep89 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -49, !dbg !146
  %wide.load.7 = load <4 x i32>, <4 x i32>* %scevgep89, align 16, !dbg !146
  %scevgep57 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -48, !dbg !146
  %wide.load28.7 = load <4 x i32>, <4 x i32>* %scevgep57, align 16, !dbg !146
  %14 = add <4 x i32> %wide.load.7, %12, !dbg !148
  %15 = add <4 x i32> %wide.load28.7, %13, !dbg !148
  %scevgep88 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -47, !dbg !146
  %wide.load.8 = load <4 x i32>, <4 x i32>* %scevgep88, align 16, !dbg !146
  %scevgep56 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -46, !dbg !146
  %wide.load28.8 = load <4 x i32>, <4 x i32>* %scevgep56, align 16, !dbg !146
  %16 = add <4 x i32> %wide.load.8, %14, !dbg !148
  %17 = add <4 x i32> %wide.load28.8, %15, !dbg !148
  %scevgep87 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -45, !dbg !146
  %wide.load.9 = load <4 x i32>, <4 x i32>* %scevgep87, align 16, !dbg !146
  %scevgep55 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -44, !dbg !146
  %wide.load28.9 = load <4 x i32>, <4 x i32>* %scevgep55, align 16, !dbg !146
  %18 = add <4 x i32> %wide.load.9, %16, !dbg !148
  %19 = add <4 x i32> %wide.load28.9, %17, !dbg !148
  %scevgep86 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -43, !dbg !146
  %wide.load.10 = load <4 x i32>, <4 x i32>* %scevgep86, align 16, !dbg !146
  %scevgep54 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -42, !dbg !146
  %wide.load28.10 = load <4 x i32>, <4 x i32>* %scevgep54, align 16, !dbg !146
  %20 = add <4 x i32> %wide.load.10, %18, !dbg !148
  %21 = add <4 x i32> %wide.load28.10, %19, !dbg !148
  %scevgep85 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -41, !dbg !146
  %wide.load.11 = load <4 x i32>, <4 x i32>* %scevgep85, align 16, !dbg !146
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -40, !dbg !146
  %wide.load28.11 = load <4 x i32>, <4 x i32>* %scevgep53, align 16, !dbg !146
  %22 = add <4 x i32> %wide.load.11, %20, !dbg !148
  %23 = add <4 x i32> %wide.load28.11, %21, !dbg !148
  %scevgep84 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -39, !dbg !146
  %wide.load.12 = load <4 x i32>, <4 x i32>* %scevgep84, align 16, !dbg !146
  %scevgep52 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -38, !dbg !146
  %wide.load28.12 = load <4 x i32>, <4 x i32>* %scevgep52, align 16, !dbg !146
  %24 = add <4 x i32> %wide.load.12, %22, !dbg !148
  %25 = add <4 x i32> %wide.load28.12, %23, !dbg !148
  %scevgep83 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -37, !dbg !146
  %wide.load.13 = load <4 x i32>, <4 x i32>* %scevgep83, align 16, !dbg !146
  %scevgep51 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -36, !dbg !146
  %wide.load28.13 = load <4 x i32>, <4 x i32>* %scevgep51, align 16, !dbg !146
  %26 = add <4 x i32> %wide.load.13, %24, !dbg !148
  %27 = add <4 x i32> %wide.load28.13, %25, !dbg !148
  %scevgep82 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -35, !dbg !146
  %wide.load.14 = load <4 x i32>, <4 x i32>* %scevgep82, align 16, !dbg !146
  %scevgep50 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -34, !dbg !146
  %wide.load28.14 = load <4 x i32>, <4 x i32>* %scevgep50, align 16, !dbg !146
  %28 = add <4 x i32> %wide.load.14, %26, !dbg !148
  %29 = add <4 x i32> %wide.load28.14, %27, !dbg !148
  %scevgep81 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -33, !dbg !146
  %wide.load.15 = load <4 x i32>, <4 x i32>* %scevgep81, align 16, !dbg !146
  %scevgep49 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -32, !dbg !146
  %wide.load28.15 = load <4 x i32>, <4 x i32>* %scevgep49, align 16, !dbg !146
  %30 = add <4 x i32> %wide.load.15, %28, !dbg !148
  %31 = add <4 x i32> %wide.load28.15, %29, !dbg !148
  %scevgep80 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -31, !dbg !146
  %wide.load.16 = load <4 x i32>, <4 x i32>* %scevgep80, align 16, !dbg !146
  %scevgep48 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -30, !dbg !146
  %wide.load28.16 = load <4 x i32>, <4 x i32>* %scevgep48, align 16, !dbg !146
  %32 = add <4 x i32> %wide.load.16, %30, !dbg !148
  %33 = add <4 x i32> %wide.load28.16, %31, !dbg !148
  %scevgep79 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -29, !dbg !146
  %wide.load.17 = load <4 x i32>, <4 x i32>* %scevgep79, align 16, !dbg !146
  %scevgep47 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -28, !dbg !146
  %wide.load28.17 = load <4 x i32>, <4 x i32>* %scevgep47, align 16, !dbg !146
  %34 = add <4 x i32> %wide.load.17, %32, !dbg !148
  %35 = add <4 x i32> %wide.load28.17, %33, !dbg !148
  %scevgep78 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -27, !dbg !146
  %wide.load.18 = load <4 x i32>, <4 x i32>* %scevgep78, align 16, !dbg !146
  %scevgep46 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -26, !dbg !146
  %wide.load28.18 = load <4 x i32>, <4 x i32>* %scevgep46, align 16, !dbg !146
  %36 = add <4 x i32> %wide.load.18, %34, !dbg !148
  %37 = add <4 x i32> %wide.load28.18, %35, !dbg !148
  %scevgep77 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -25, !dbg !146
  %wide.load.19 = load <4 x i32>, <4 x i32>* %scevgep77, align 16, !dbg !146
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -24, !dbg !146
  %wide.load28.19 = load <4 x i32>, <4 x i32>* %scevgep45, align 16, !dbg !146
  %38 = add <4 x i32> %wide.load.19, %36, !dbg !148
  %39 = add <4 x i32> %wide.load28.19, %37, !dbg !148
  %scevgep76 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -23, !dbg !146
  %wide.load.20 = load <4 x i32>, <4 x i32>* %scevgep76, align 16, !dbg !146
  %scevgep44 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -22, !dbg !146
  %wide.load28.20 = load <4 x i32>, <4 x i32>* %scevgep44, align 16, !dbg !146
  %40 = add <4 x i32> %wide.load.20, %38, !dbg !148
  %41 = add <4 x i32> %wide.load28.20, %39, !dbg !148
  %scevgep75 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -21, !dbg !146
  %wide.load.21 = load <4 x i32>, <4 x i32>* %scevgep75, align 16, !dbg !146
  %scevgep43 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -20, !dbg !146
  %wide.load28.21 = load <4 x i32>, <4 x i32>* %scevgep43, align 16, !dbg !146
  %42 = add <4 x i32> %wide.load.21, %40, !dbg !148
  %43 = add <4 x i32> %wide.load28.21, %41, !dbg !148
  %scevgep74 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -19, !dbg !146
  %wide.load.22 = load <4 x i32>, <4 x i32>* %scevgep74, align 16, !dbg !146
  %scevgep42 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -18, !dbg !146
  %wide.load28.22 = load <4 x i32>, <4 x i32>* %scevgep42, align 16, !dbg !146
  %44 = add <4 x i32> %wide.load.22, %42, !dbg !148
  %45 = add <4 x i32> %wide.load28.22, %43, !dbg !148
  %scevgep73 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -17, !dbg !146
  %wide.load.23 = load <4 x i32>, <4 x i32>* %scevgep73, align 16, !dbg !146
  %scevgep41 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -16, !dbg !146
  %wide.load28.23 = load <4 x i32>, <4 x i32>* %scevgep41, align 16, !dbg !146
  %46 = add <4 x i32> %wide.load.23, %44, !dbg !148
  %47 = add <4 x i32> %wide.load28.23, %45, !dbg !148
  %scevgep72 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -15, !dbg !146
  %wide.load.24 = load <4 x i32>, <4 x i32>* %scevgep72, align 16, !dbg !146
  %scevgep40 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -14, !dbg !146
  %wide.load28.24 = load <4 x i32>, <4 x i32>* %scevgep40, align 16, !dbg !146
  %48 = add <4 x i32> %wide.load.24, %46, !dbg !148
  %49 = add <4 x i32> %wide.load28.24, %47, !dbg !148
  %scevgep71 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -13, !dbg !146
  %wide.load.25 = load <4 x i32>, <4 x i32>* %scevgep71, align 16, !dbg !146
  %scevgep39 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -12, !dbg !146
  %wide.load28.25 = load <4 x i32>, <4 x i32>* %scevgep39, align 16, !dbg !146
  %50 = add <4 x i32> %wide.load.25, %48, !dbg !148
  %51 = add <4 x i32> %wide.load28.25, %49, !dbg !148
  %scevgep70 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -11, !dbg !146
  %wide.load.26 = load <4 x i32>, <4 x i32>* %scevgep70, align 16, !dbg !146
  %scevgep38 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -10, !dbg !146
  %wide.load28.26 = load <4 x i32>, <4 x i32>* %scevgep38, align 16, !dbg !146
  %52 = add <4 x i32> %wide.load.26, %50, !dbg !148
  %53 = add <4 x i32> %wide.load28.26, %51, !dbg !148
  %scevgep69 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -9, !dbg !146
  %wide.load.27 = load <4 x i32>, <4 x i32>* %scevgep69, align 16, !dbg !146
  %scevgep37 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -8, !dbg !146
  %wide.load28.27 = load <4 x i32>, <4 x i32>* %scevgep37, align 16, !dbg !146
  %54 = add <4 x i32> %wide.load.27, %52, !dbg !148
  %55 = add <4 x i32> %wide.load28.27, %53, !dbg !148
  %scevgep68 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -7, !dbg !146
  %wide.load.28 = load <4 x i32>, <4 x i32>* %scevgep68, align 16, !dbg !146
  %scevgep36 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -6, !dbg !146
  %wide.load28.28 = load <4 x i32>, <4 x i32>* %scevgep36, align 16, !dbg !146
  %56 = add <4 x i32> %wide.load.28, %54, !dbg !148
  %57 = add <4 x i32> %wide.load28.28, %55, !dbg !148
  %scevgep67 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -5, !dbg !146
  %wide.load.29 = load <4 x i32>, <4 x i32>* %scevgep67, align 16, !dbg !146
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -4, !dbg !146
  %wide.load28.29 = load <4 x i32>, <4 x i32>* %scevgep35, align 16, !dbg !146
  %58 = add <4 x i32> %wide.load.29, %56, !dbg !148
  %59 = add <4 x i32> %wide.load28.29, %57, !dbg !148
  %scevgep66 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -3, !dbg !146
  %wide.load.30 = load <4 x i32>, <4 x i32>* %scevgep66, align 16, !dbg !146
  %scevgep34 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -2, !dbg !146
  %wide.load28.30 = load <4 x i32>, <4 x i32>* %scevgep34, align 16, !dbg !146
  %60 = add <4 x i32> %wide.load.30, %58, !dbg !148
  %61 = add <4 x i32> %wide.load28.30, %59, !dbg !148
  %scevgep65 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv33, i32 -1, !dbg !146
  %wide.load.31 = load <4 x i32>, <4 x i32>* %scevgep65, align 16, !dbg !146
  %wide.load28.31 = load <4 x i32>, <4 x i32>* %lsr.iv33, align 16, !dbg !146
  %62 = add <4 x i32> %wide.load.31, %60, !dbg !148
  %63 = add <4 x i32> %wide.load28.31, %61, !dbg !148
  %bin.rdx = add <4 x i32> %63, %62, !dbg !145
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !145
  %bin.rdx29 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !145
  %rdx.shuf30 = shufflevector <4 x i32> %bin.rdx29, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !145
  %bin.rdx31 = add <4 x i32> %bin.rdx29, %rdx.shuf30, !dbg !145
  %64 = extractelement <4 x i32> %bin.rdx31, i32 0, !dbg !145
  call void @llvm.dbg.value(metadata i32 %64, metadata !134, metadata !DIExpression()), !dbg !141
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv97, !dbg !149
  %uglygep99 = bitcast i8* %uglygep to i32*
  %scevgep100 = getelementptr i32, i32* %uglygep99, i32 256, !dbg !149
  %65 = load i32, i32* %scevgep100, align 4, !dbg !149
  %add7 = add i32 %65, %64, !dbg !150
  call void @llvm.dbg.value(metadata i32 %add7, metadata !134, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i32 undef, metadata !135, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !142
  %scevgep = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i32 0, i32 1, i32 0, !dbg !151
  %66 = bitcast i32* %scevgep to [256 x [256 x i32]]*, !dbg !151
  %lsr.iv.next = add nsw i32 %lsr.iv97, 4, !dbg !151
  %exitcond25 = icmp eq i32 %lsr.iv.next, 0, !dbg !151
  br i1 %exitcond25, label %for.cond.cleanup, label %vector.ph, !dbg !143, !llvm.loop !152

for.cond.cleanup:                                 ; preds = %vector.ph
  call void @llvm.dbg.value(metadata i32 %add7, metadata !134, metadata !DIExpression()), !dbg !141
  ret i32 %add7, !dbg !154

; uselistorder directives
  uselistorder <4 x i32>* %lsr.iv33, { 63, 31, 62, 30, 61, 29, 60, 28, 59, 27, 58, 26, 57, 25, 56, 24, 55, 23, 54, 22, 53, 21, 52, 20, 51, 19, 50, 18, 49, 17, 48, 16, 47, 15, 46, 14, 45, 13, 44, 12, 43, 11, 42, 10, 41, 9, 40, 8, 39, 7, 38, 6, 37, 5, 36, 4, 35, 3, 34, 2, 33, 1, 32, 0 }
  uselistorder [256 x [256 x i32]]* %lsr.iv, { 1, 0 }
  uselistorder i32 %lsr.iv97, { 1, 0 }
  uselistorder label %vector.ph, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex5() local_unnamed_addr #0 !dbg !155 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !157, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 0, metadata !158, metadata !DIExpression()), !dbg !166
  br label %vector.body, !dbg !167

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv264 = phi i32 [ %lsr.iv.next265, %vector.body ], [ -128000, %entry ], !dbg !168
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %0, %vector.body ]
  %vec.phi40 = phi <4 x i32> [ zeroinitializer, %entry ], [ %1, %vector.body ]
  %uglygep267 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv264, !dbg !170
  %uglygep267268 = bitcast i8* %uglygep267 to <4 x i32>*
  %scevgep269 = getelementptr <4 x i32>, <4 x i32>* %uglygep267268, i32 8000, !dbg !170
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep269, align 16, !dbg !170
  %scevgep270 = getelementptr <4 x i32>, <4 x i32>* %uglygep267268, i32 8001, !dbg !170
  %wide.load41 = load <4 x i32>, <4 x i32>* %scevgep270, align 16, !dbg !170
  %0 = add <4 x i32> %wide.load, %vec.phi, !dbg !171
  %1 = add <4 x i32> %wide.load41, %vec.phi40, !dbg !171
  %lsr.iv.next265 = add nsw i32 %lsr.iv264, 32, !dbg !168
  %2 = icmp eq i32 %lsr.iv.next265, 0, !dbg !168
  br i1 %2, label %middle.block, label %vector.body, !dbg !168, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %1, %0, !dbg !167
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !167
  %bin.rdx42 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !167
  %rdx.shuf43 = shufflevector <4 x i32> %bin.rdx42, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !167
  %bin.rdx44 = add <4 x i32> %bin.rdx42, %rdx.shuf43, !dbg !167
  %3 = extractelement <4 x i32> %bin.rdx44, i32 0, !dbg !167
  br label %vector.ph48, !dbg !174

vector.ph48:                                      ; preds = %vector.ph48, %middle.block
  %lsr.iv = phi i32 [ %lsr.iv.next, %vector.ph48 ], [ -262144, %middle.block ]
  %ret.133 = phi i32 [ %68, %vector.ph48 ], [ %3, %middle.block ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !160, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i32 0, metadata !162, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i32 %ret.133, metadata !157, metadata !DIExpression()), !dbg !165
  %4 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %ret.133, i32 0, !dbg !177
  %uglygep261 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep261262 = bitcast i8* %uglygep261 to <4 x i32>*
  %scevgep263 = getelementptr <4 x i32>, <4 x i32>* %uglygep261262, i32 16384, !dbg !178
  %wide.load59 = load <4 x i32>, <4 x i32>* %scevgep263, align 16, !dbg !178
  %uglygep165 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep165166 = bitcast i8* %uglygep165 to <4 x i32>*
  %scevgep167 = getelementptr <4 x i32>, <4 x i32>* %uglygep165166, i32 16385, !dbg !178
  %wide.load60 = load <4 x i32>, <4 x i32>* %scevgep167, align 16, !dbg !178
  %5 = add <4 x i32> %wide.load59, %4, !dbg !180
  %uglygep258 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep258259 = bitcast i8* %uglygep258 to <4 x i32>*
  %scevgep260 = getelementptr <4 x i32>, <4 x i32>* %uglygep258259, i32 16386, !dbg !178
  %wide.load59.1 = load <4 x i32>, <4 x i32>* %scevgep260, align 16, !dbg !178
  %uglygep162 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep162163 = bitcast i8* %uglygep162 to <4 x i32>*
  %scevgep164 = getelementptr <4 x i32>, <4 x i32>* %uglygep162163, i32 16387, !dbg !178
  %wide.load60.1 = load <4 x i32>, <4 x i32>* %scevgep164, align 16, !dbg !178
  %6 = add <4 x i32> %wide.load59.1, %5, !dbg !180
  %7 = add <4 x i32> %wide.load60.1, %wide.load60, !dbg !180
  %uglygep255 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep255256 = bitcast i8* %uglygep255 to <4 x i32>*
  %scevgep257 = getelementptr <4 x i32>, <4 x i32>* %uglygep255256, i32 16388, !dbg !178
  %wide.load59.2 = load <4 x i32>, <4 x i32>* %scevgep257, align 16, !dbg !178
  %uglygep159 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep159160 = bitcast i8* %uglygep159 to <4 x i32>*
  %scevgep161 = getelementptr <4 x i32>, <4 x i32>* %uglygep159160, i32 16389, !dbg !178
  %wide.load60.2 = load <4 x i32>, <4 x i32>* %scevgep161, align 16, !dbg !178
  %8 = add <4 x i32> %wide.load59.2, %6, !dbg !180
  %9 = add <4 x i32> %wide.load60.2, %7, !dbg !180
  %uglygep252 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep252253 = bitcast i8* %uglygep252 to <4 x i32>*
  %scevgep254 = getelementptr <4 x i32>, <4 x i32>* %uglygep252253, i32 16390, !dbg !178
  %wide.load59.3 = load <4 x i32>, <4 x i32>* %scevgep254, align 16, !dbg !178
  %uglygep156 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep156157 = bitcast i8* %uglygep156 to <4 x i32>*
  %scevgep158 = getelementptr <4 x i32>, <4 x i32>* %uglygep156157, i32 16391, !dbg !178
  %wide.load60.3 = load <4 x i32>, <4 x i32>* %scevgep158, align 16, !dbg !178
  %10 = add <4 x i32> %wide.load59.3, %8, !dbg !180
  %11 = add <4 x i32> %wide.load60.3, %9, !dbg !180
  %uglygep249 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep249250 = bitcast i8* %uglygep249 to <4 x i32>*
  %scevgep251 = getelementptr <4 x i32>, <4 x i32>* %uglygep249250, i32 16392, !dbg !178
  %wide.load59.4 = load <4 x i32>, <4 x i32>* %scevgep251, align 16, !dbg !178
  %uglygep153 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep153154 = bitcast i8* %uglygep153 to <4 x i32>*
  %scevgep155 = getelementptr <4 x i32>, <4 x i32>* %uglygep153154, i32 16393, !dbg !178
  %wide.load60.4 = load <4 x i32>, <4 x i32>* %scevgep155, align 16, !dbg !178
  %12 = add <4 x i32> %wide.load59.4, %10, !dbg !180
  %13 = add <4 x i32> %wide.load60.4, %11, !dbg !180
  %uglygep246 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep246247 = bitcast i8* %uglygep246 to <4 x i32>*
  %scevgep248 = getelementptr <4 x i32>, <4 x i32>* %uglygep246247, i32 16394, !dbg !178
  %wide.load59.5 = load <4 x i32>, <4 x i32>* %scevgep248, align 16, !dbg !178
  %uglygep150 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep150151 = bitcast i8* %uglygep150 to <4 x i32>*
  %scevgep152 = getelementptr <4 x i32>, <4 x i32>* %uglygep150151, i32 16395, !dbg !178
  %wide.load60.5 = load <4 x i32>, <4 x i32>* %scevgep152, align 16, !dbg !178
  %14 = add <4 x i32> %wide.load59.5, %12, !dbg !180
  %15 = add <4 x i32> %wide.load60.5, %13, !dbg !180
  %uglygep243 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep243244 = bitcast i8* %uglygep243 to <4 x i32>*
  %scevgep245 = getelementptr <4 x i32>, <4 x i32>* %uglygep243244, i32 16396, !dbg !178
  %wide.load59.6 = load <4 x i32>, <4 x i32>* %scevgep245, align 16, !dbg !178
  %uglygep147 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep147148 = bitcast i8* %uglygep147 to <4 x i32>*
  %scevgep149 = getelementptr <4 x i32>, <4 x i32>* %uglygep147148, i32 16397, !dbg !178
  %wide.load60.6 = load <4 x i32>, <4 x i32>* %scevgep149, align 16, !dbg !178
  %16 = add <4 x i32> %wide.load59.6, %14, !dbg !180
  %17 = add <4 x i32> %wide.load60.6, %15, !dbg !180
  %uglygep240 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep240241 = bitcast i8* %uglygep240 to <4 x i32>*
  %scevgep242 = getelementptr <4 x i32>, <4 x i32>* %uglygep240241, i32 16398, !dbg !178
  %wide.load59.7 = load <4 x i32>, <4 x i32>* %scevgep242, align 16, !dbg !178
  %uglygep144 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep144145 = bitcast i8* %uglygep144 to <4 x i32>*
  %scevgep146 = getelementptr <4 x i32>, <4 x i32>* %uglygep144145, i32 16399, !dbg !178
  %wide.load60.7 = load <4 x i32>, <4 x i32>* %scevgep146, align 16, !dbg !178
  %18 = add <4 x i32> %wide.load59.7, %16, !dbg !180
  %19 = add <4 x i32> %wide.load60.7, %17, !dbg !180
  %uglygep237 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep237238 = bitcast i8* %uglygep237 to <4 x i32>*
  %scevgep239 = getelementptr <4 x i32>, <4 x i32>* %uglygep237238, i32 16400, !dbg !178
  %wide.load59.8 = load <4 x i32>, <4 x i32>* %scevgep239, align 16, !dbg !178
  %uglygep141 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep141142 = bitcast i8* %uglygep141 to <4 x i32>*
  %scevgep143 = getelementptr <4 x i32>, <4 x i32>* %uglygep141142, i32 16401, !dbg !178
  %wide.load60.8 = load <4 x i32>, <4 x i32>* %scevgep143, align 16, !dbg !178
  %20 = add <4 x i32> %wide.load59.8, %18, !dbg !180
  %21 = add <4 x i32> %wide.load60.8, %19, !dbg !180
  %uglygep234 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep234235 = bitcast i8* %uglygep234 to <4 x i32>*
  %scevgep236 = getelementptr <4 x i32>, <4 x i32>* %uglygep234235, i32 16402, !dbg !178
  %wide.load59.9 = load <4 x i32>, <4 x i32>* %scevgep236, align 16, !dbg !178
  %uglygep138 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep138139 = bitcast i8* %uglygep138 to <4 x i32>*
  %scevgep140 = getelementptr <4 x i32>, <4 x i32>* %uglygep138139, i32 16403, !dbg !178
  %wide.load60.9 = load <4 x i32>, <4 x i32>* %scevgep140, align 16, !dbg !178
  %22 = add <4 x i32> %wide.load59.9, %20, !dbg !180
  %23 = add <4 x i32> %wide.load60.9, %21, !dbg !180
  %uglygep231 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep231232 = bitcast i8* %uglygep231 to <4 x i32>*
  %scevgep233 = getelementptr <4 x i32>, <4 x i32>* %uglygep231232, i32 16404, !dbg !178
  %wide.load59.10 = load <4 x i32>, <4 x i32>* %scevgep233, align 16, !dbg !178
  %uglygep135 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep135136 = bitcast i8* %uglygep135 to <4 x i32>*
  %scevgep137 = getelementptr <4 x i32>, <4 x i32>* %uglygep135136, i32 16405, !dbg !178
  %wide.load60.10 = load <4 x i32>, <4 x i32>* %scevgep137, align 16, !dbg !178
  %24 = add <4 x i32> %wide.load59.10, %22, !dbg !180
  %25 = add <4 x i32> %wide.load60.10, %23, !dbg !180
  %uglygep228 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep228229 = bitcast i8* %uglygep228 to <4 x i32>*
  %scevgep230 = getelementptr <4 x i32>, <4 x i32>* %uglygep228229, i32 16406, !dbg !178
  %wide.load59.11 = load <4 x i32>, <4 x i32>* %scevgep230, align 16, !dbg !178
  %uglygep132 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep132133 = bitcast i8* %uglygep132 to <4 x i32>*
  %scevgep134 = getelementptr <4 x i32>, <4 x i32>* %uglygep132133, i32 16407, !dbg !178
  %wide.load60.11 = load <4 x i32>, <4 x i32>* %scevgep134, align 16, !dbg !178
  %26 = add <4 x i32> %wide.load59.11, %24, !dbg !180
  %27 = add <4 x i32> %wide.load60.11, %25, !dbg !180
  %uglygep225 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep225226 = bitcast i8* %uglygep225 to <4 x i32>*
  %scevgep227 = getelementptr <4 x i32>, <4 x i32>* %uglygep225226, i32 16408, !dbg !178
  %wide.load59.12 = load <4 x i32>, <4 x i32>* %scevgep227, align 16, !dbg !178
  %uglygep129 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep129130 = bitcast i8* %uglygep129 to <4 x i32>*
  %scevgep131 = getelementptr <4 x i32>, <4 x i32>* %uglygep129130, i32 16409, !dbg !178
  %wide.load60.12 = load <4 x i32>, <4 x i32>* %scevgep131, align 16, !dbg !178
  %28 = add <4 x i32> %wide.load59.12, %26, !dbg !180
  %29 = add <4 x i32> %wide.load60.12, %27, !dbg !180
  %uglygep222 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep222223 = bitcast i8* %uglygep222 to <4 x i32>*
  %scevgep224 = getelementptr <4 x i32>, <4 x i32>* %uglygep222223, i32 16410, !dbg !178
  %wide.load59.13 = load <4 x i32>, <4 x i32>* %scevgep224, align 16, !dbg !178
  %uglygep126 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep126127 = bitcast i8* %uglygep126 to <4 x i32>*
  %scevgep128 = getelementptr <4 x i32>, <4 x i32>* %uglygep126127, i32 16411, !dbg !178
  %wide.load60.13 = load <4 x i32>, <4 x i32>* %scevgep128, align 16, !dbg !178
  %30 = add <4 x i32> %wide.load59.13, %28, !dbg !180
  %31 = add <4 x i32> %wide.load60.13, %29, !dbg !180
  %uglygep219 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep219220 = bitcast i8* %uglygep219 to <4 x i32>*
  %scevgep221 = getelementptr <4 x i32>, <4 x i32>* %uglygep219220, i32 16412, !dbg !178
  %wide.load59.14 = load <4 x i32>, <4 x i32>* %scevgep221, align 16, !dbg !178
  %uglygep123 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep123124 = bitcast i8* %uglygep123 to <4 x i32>*
  %scevgep125 = getelementptr <4 x i32>, <4 x i32>* %uglygep123124, i32 16413, !dbg !178
  %wide.load60.14 = load <4 x i32>, <4 x i32>* %scevgep125, align 16, !dbg !178
  %32 = add <4 x i32> %wide.load59.14, %30, !dbg !180
  %33 = add <4 x i32> %wide.load60.14, %31, !dbg !180
  %uglygep216 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep216217 = bitcast i8* %uglygep216 to <4 x i32>*
  %scevgep218 = getelementptr <4 x i32>, <4 x i32>* %uglygep216217, i32 16414, !dbg !178
  %wide.load59.15 = load <4 x i32>, <4 x i32>* %scevgep218, align 16, !dbg !178
  %uglygep120 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep120121 = bitcast i8* %uglygep120 to <4 x i32>*
  %scevgep122 = getelementptr <4 x i32>, <4 x i32>* %uglygep120121, i32 16415, !dbg !178
  %wide.load60.15 = load <4 x i32>, <4 x i32>* %scevgep122, align 16, !dbg !178
  %34 = add <4 x i32> %wide.load59.15, %32, !dbg !180
  %35 = add <4 x i32> %wide.load60.15, %33, !dbg !180
  %uglygep213 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep213214 = bitcast i8* %uglygep213 to <4 x i32>*
  %scevgep215 = getelementptr <4 x i32>, <4 x i32>* %uglygep213214, i32 16416, !dbg !178
  %wide.load59.16 = load <4 x i32>, <4 x i32>* %scevgep215, align 16, !dbg !178
  %uglygep117 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep117118 = bitcast i8* %uglygep117 to <4 x i32>*
  %scevgep119 = getelementptr <4 x i32>, <4 x i32>* %uglygep117118, i32 16417, !dbg !178
  %wide.load60.16 = load <4 x i32>, <4 x i32>* %scevgep119, align 16, !dbg !178
  %36 = add <4 x i32> %wide.load59.16, %34, !dbg !180
  %37 = add <4 x i32> %wide.load60.16, %35, !dbg !180
  %uglygep210 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep210211 = bitcast i8* %uglygep210 to <4 x i32>*
  %scevgep212 = getelementptr <4 x i32>, <4 x i32>* %uglygep210211, i32 16418, !dbg !178
  %wide.load59.17 = load <4 x i32>, <4 x i32>* %scevgep212, align 16, !dbg !178
  %uglygep114 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep114115 = bitcast i8* %uglygep114 to <4 x i32>*
  %scevgep116 = getelementptr <4 x i32>, <4 x i32>* %uglygep114115, i32 16419, !dbg !178
  %wide.load60.17 = load <4 x i32>, <4 x i32>* %scevgep116, align 16, !dbg !178
  %38 = add <4 x i32> %wide.load59.17, %36, !dbg !180
  %39 = add <4 x i32> %wide.load60.17, %37, !dbg !180
  %uglygep207 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep207208 = bitcast i8* %uglygep207 to <4 x i32>*
  %scevgep209 = getelementptr <4 x i32>, <4 x i32>* %uglygep207208, i32 16420, !dbg !178
  %wide.load59.18 = load <4 x i32>, <4 x i32>* %scevgep209, align 16, !dbg !178
  %uglygep111 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep111112 = bitcast i8* %uglygep111 to <4 x i32>*
  %scevgep113 = getelementptr <4 x i32>, <4 x i32>* %uglygep111112, i32 16421, !dbg !178
  %wide.load60.18 = load <4 x i32>, <4 x i32>* %scevgep113, align 16, !dbg !178
  %40 = add <4 x i32> %wide.load59.18, %38, !dbg !180
  %41 = add <4 x i32> %wide.load60.18, %39, !dbg !180
  %uglygep204 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep204205 = bitcast i8* %uglygep204 to <4 x i32>*
  %scevgep206 = getelementptr <4 x i32>, <4 x i32>* %uglygep204205, i32 16422, !dbg !178
  %wide.load59.19 = load <4 x i32>, <4 x i32>* %scevgep206, align 16, !dbg !178
  %uglygep108 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep108109 = bitcast i8* %uglygep108 to <4 x i32>*
  %scevgep110 = getelementptr <4 x i32>, <4 x i32>* %uglygep108109, i32 16423, !dbg !178
  %wide.load60.19 = load <4 x i32>, <4 x i32>* %scevgep110, align 16, !dbg !178
  %42 = add <4 x i32> %wide.load59.19, %40, !dbg !180
  %43 = add <4 x i32> %wide.load60.19, %41, !dbg !180
  %uglygep201 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep201202 = bitcast i8* %uglygep201 to <4 x i32>*
  %scevgep203 = getelementptr <4 x i32>, <4 x i32>* %uglygep201202, i32 16424, !dbg !178
  %wide.load59.20 = load <4 x i32>, <4 x i32>* %scevgep203, align 16, !dbg !178
  %uglygep105 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep105106 = bitcast i8* %uglygep105 to <4 x i32>*
  %scevgep107 = getelementptr <4 x i32>, <4 x i32>* %uglygep105106, i32 16425, !dbg !178
  %wide.load60.20 = load <4 x i32>, <4 x i32>* %scevgep107, align 16, !dbg !178
  %44 = add <4 x i32> %wide.load59.20, %42, !dbg !180
  %45 = add <4 x i32> %wide.load60.20, %43, !dbg !180
  %uglygep198 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep198199 = bitcast i8* %uglygep198 to <4 x i32>*
  %scevgep200 = getelementptr <4 x i32>, <4 x i32>* %uglygep198199, i32 16426, !dbg !178
  %wide.load59.21 = load <4 x i32>, <4 x i32>* %scevgep200, align 16, !dbg !178
  %uglygep102 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep102103 = bitcast i8* %uglygep102 to <4 x i32>*
  %scevgep104 = getelementptr <4 x i32>, <4 x i32>* %uglygep102103, i32 16427, !dbg !178
  %wide.load60.21 = load <4 x i32>, <4 x i32>* %scevgep104, align 16, !dbg !178
  %46 = add <4 x i32> %wide.load59.21, %44, !dbg !180
  %47 = add <4 x i32> %wide.load60.21, %45, !dbg !180
  %uglygep195 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep195196 = bitcast i8* %uglygep195 to <4 x i32>*
  %scevgep197 = getelementptr <4 x i32>, <4 x i32>* %uglygep195196, i32 16428, !dbg !178
  %wide.load59.22 = load <4 x i32>, <4 x i32>* %scevgep197, align 16, !dbg !178
  %uglygep99 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep99100 = bitcast i8* %uglygep99 to <4 x i32>*
  %scevgep101 = getelementptr <4 x i32>, <4 x i32>* %uglygep99100, i32 16429, !dbg !178
  %wide.load60.22 = load <4 x i32>, <4 x i32>* %scevgep101, align 16, !dbg !178
  %48 = add <4 x i32> %wide.load59.22, %46, !dbg !180
  %49 = add <4 x i32> %wide.load60.22, %47, !dbg !180
  %uglygep192 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep192193 = bitcast i8* %uglygep192 to <4 x i32>*
  %scevgep194 = getelementptr <4 x i32>, <4 x i32>* %uglygep192193, i32 16430, !dbg !178
  %wide.load59.23 = load <4 x i32>, <4 x i32>* %scevgep194, align 16, !dbg !178
  %uglygep96 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep9697 = bitcast i8* %uglygep96 to <4 x i32>*
  %scevgep98 = getelementptr <4 x i32>, <4 x i32>* %uglygep9697, i32 16431, !dbg !178
  %wide.load60.23 = load <4 x i32>, <4 x i32>* %scevgep98, align 16, !dbg !178
  %50 = add <4 x i32> %wide.load59.23, %48, !dbg !180
  %51 = add <4 x i32> %wide.load60.23, %49, !dbg !180
  %uglygep189 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep189190 = bitcast i8* %uglygep189 to <4 x i32>*
  %scevgep191 = getelementptr <4 x i32>, <4 x i32>* %uglygep189190, i32 16432, !dbg !178
  %wide.load59.24 = load <4 x i32>, <4 x i32>* %scevgep191, align 16, !dbg !178
  %uglygep93 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep9394 = bitcast i8* %uglygep93 to <4 x i32>*
  %scevgep95 = getelementptr <4 x i32>, <4 x i32>* %uglygep9394, i32 16433, !dbg !178
  %wide.load60.24 = load <4 x i32>, <4 x i32>* %scevgep95, align 16, !dbg !178
  %52 = add <4 x i32> %wide.load59.24, %50, !dbg !180
  %53 = add <4 x i32> %wide.load60.24, %51, !dbg !180
  %uglygep186 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep186187 = bitcast i8* %uglygep186 to <4 x i32>*
  %scevgep188 = getelementptr <4 x i32>, <4 x i32>* %uglygep186187, i32 16434, !dbg !178
  %wide.load59.25 = load <4 x i32>, <4 x i32>* %scevgep188, align 16, !dbg !178
  %uglygep90 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep9091 = bitcast i8* %uglygep90 to <4 x i32>*
  %scevgep92 = getelementptr <4 x i32>, <4 x i32>* %uglygep9091, i32 16435, !dbg !178
  %wide.load60.25 = load <4 x i32>, <4 x i32>* %scevgep92, align 16, !dbg !178
  %54 = add <4 x i32> %wide.load59.25, %52, !dbg !180
  %55 = add <4 x i32> %wide.load60.25, %53, !dbg !180
  %uglygep183 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep183184 = bitcast i8* %uglygep183 to <4 x i32>*
  %scevgep185 = getelementptr <4 x i32>, <4 x i32>* %uglygep183184, i32 16436, !dbg !178
  %wide.load59.26 = load <4 x i32>, <4 x i32>* %scevgep185, align 16, !dbg !178
  %uglygep87 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep8788 = bitcast i8* %uglygep87 to <4 x i32>*
  %scevgep89 = getelementptr <4 x i32>, <4 x i32>* %uglygep8788, i32 16437, !dbg !178
  %wide.load60.26 = load <4 x i32>, <4 x i32>* %scevgep89, align 16, !dbg !178
  %56 = add <4 x i32> %wide.load59.26, %54, !dbg !180
  %57 = add <4 x i32> %wide.load60.26, %55, !dbg !180
  %uglygep180 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep180181 = bitcast i8* %uglygep180 to <4 x i32>*
  %scevgep182 = getelementptr <4 x i32>, <4 x i32>* %uglygep180181, i32 16438, !dbg !178
  %wide.load59.27 = load <4 x i32>, <4 x i32>* %scevgep182, align 16, !dbg !178
  %uglygep84 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep8485 = bitcast i8* %uglygep84 to <4 x i32>*
  %scevgep86 = getelementptr <4 x i32>, <4 x i32>* %uglygep8485, i32 16439, !dbg !178
  %wide.load60.27 = load <4 x i32>, <4 x i32>* %scevgep86, align 16, !dbg !178
  %58 = add <4 x i32> %wide.load59.27, %56, !dbg !180
  %59 = add <4 x i32> %wide.load60.27, %57, !dbg !180
  %uglygep177 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep177178 = bitcast i8* %uglygep177 to <4 x i32>*
  %scevgep179 = getelementptr <4 x i32>, <4 x i32>* %uglygep177178, i32 16440, !dbg !178
  %wide.load59.28 = load <4 x i32>, <4 x i32>* %scevgep179, align 16, !dbg !178
  %uglygep81 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep8182 = bitcast i8* %uglygep81 to <4 x i32>*
  %scevgep83 = getelementptr <4 x i32>, <4 x i32>* %uglygep8182, i32 16441, !dbg !178
  %wide.load60.28 = load <4 x i32>, <4 x i32>* %scevgep83, align 16, !dbg !178
  %60 = add <4 x i32> %wide.load59.28, %58, !dbg !180
  %61 = add <4 x i32> %wide.load60.28, %59, !dbg !180
  %uglygep174 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep174175 = bitcast i8* %uglygep174 to <4 x i32>*
  %scevgep176 = getelementptr <4 x i32>, <4 x i32>* %uglygep174175, i32 16442, !dbg !178
  %wide.load59.29 = load <4 x i32>, <4 x i32>* %scevgep176, align 16, !dbg !178
  %uglygep78 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep7879 = bitcast i8* %uglygep78 to <4 x i32>*
  %scevgep80 = getelementptr <4 x i32>, <4 x i32>* %uglygep7879, i32 16443, !dbg !178
  %wide.load60.29 = load <4 x i32>, <4 x i32>* %scevgep80, align 16, !dbg !178
  %62 = add <4 x i32> %wide.load59.29, %60, !dbg !180
  %63 = add <4 x i32> %wide.load60.29, %61, !dbg !180
  %uglygep171 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep171172 = bitcast i8* %uglygep171 to <4 x i32>*
  %scevgep173 = getelementptr <4 x i32>, <4 x i32>* %uglygep171172, i32 16444, !dbg !178
  %wide.load59.30 = load <4 x i32>, <4 x i32>* %scevgep173, align 16, !dbg !178
  %uglygep75 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep7576 = bitcast i8* %uglygep75 to <4 x i32>*
  %scevgep77 = getelementptr <4 x i32>, <4 x i32>* %uglygep7576, i32 16445, !dbg !178
  %wide.load60.30 = load <4 x i32>, <4 x i32>* %scevgep77, align 16, !dbg !178
  %64 = add <4 x i32> %wide.load59.30, %62, !dbg !180
  %65 = add <4 x i32> %wide.load60.30, %63, !dbg !180
  %uglygep168 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep168169 = bitcast i8* %uglygep168 to <4 x i32>*
  %scevgep170 = getelementptr <4 x i32>, <4 x i32>* %uglygep168169, i32 16446, !dbg !178
  %wide.load59.31 = load <4 x i32>, <4 x i32>* %scevgep170, align 16, !dbg !178
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv, !dbg !178
  %uglygep74 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep74, i32 16447, !dbg !178
  %wide.load60.31 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !178
  %66 = add <4 x i32> %wide.load59.31, %64, !dbg !180
  %67 = add <4 x i32> %wide.load60.31, %65, !dbg !180
  %bin.rdx61 = add <4 x i32> %67, %66, !dbg !177
  %rdx.shuf62 = shufflevector <4 x i32> %bin.rdx61, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !177
  %bin.rdx63 = add <4 x i32> %bin.rdx61, %rdx.shuf62, !dbg !177
  %rdx.shuf64 = shufflevector <4 x i32> %bin.rdx63, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !177
  %bin.rdx65 = add <4 x i32> %bin.rdx63, %rdx.shuf64, !dbg !177
  %68 = extractelement <4 x i32> %bin.rdx65, i32 0, !dbg !177
  call void @llvm.dbg.value(metadata i32 %68, metadata !157, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 undef, metadata !160, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !175
  %lsr.iv.next = add nsw i32 %lsr.iv, 1024, !dbg !181
  %exitcond37 = icmp eq i32 %lsr.iv.next, 0, !dbg !181
  br i1 %exitcond37, label %for.cond.cleanup4, label %vector.ph48, !dbg !174, !llvm.loop !182

for.cond.cleanup4:                                ; preds = %vector.ph48
  call void @llvm.dbg.value(metadata i32 %68, metadata !157, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %68, metadata !157, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %68, metadata !157, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %68, metadata !157, metadata !DIExpression()), !dbg !165
  ret i32 %68, !dbg !184

; uselistorder directives
  uselistorder i32 %lsr.iv, { 64, 63, 31, 62, 30, 61, 29, 60, 28, 59, 27, 58, 26, 57, 25, 56, 24, 55, 23, 54, 22, 53, 21, 52, 20, 51, 19, 50, 18, 49, 17, 48, 16, 47, 15, 46, 14, 45, 13, 44, 12, 43, 11, 42, 10, 41, 9, 40, 8, 39, 7, 38, 6, 37, 5, 36, 4, 35, 3, 34, 2, 33, 1, 32, 0 }
  uselistorder i32 %lsr.iv264, { 1, 0 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex6() local_unnamed_addr #1 !dbg !185 {
entry:
  call void @llvm.dbg.value(metadata i32 1, metadata !187, metadata !DIExpression()), !dbg !193
  br label %for.body4.lr.ph, !dbg !194

for.body4.lr.ph:                                  ; preds = %entry, %for.cond.cleanup3
  %lsr.iv = phi [256 x [256 x i32]]* [ bitcast (i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @bb, i32 0, i32 1, i32 0) to [256 x [256 x i32]]*), %entry ], [ %1, %for.cond.cleanup3 ]
  %i.022 = phi i32 [ 1, %entry ], [ %inc9, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i32 %i.022, metadata !187, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata i32 0, metadata !189, metadata !DIExpression()), !dbg !195
  %arrayidx6 = getelementptr [32000 x i32], [32000 x i32]* @a, i32 0, i32 %i.022, !dbg !196
  %arrayidx6.promoted = load i32, i32* %arrayidx6, align 4, !dbg !196
  br label %for.body4, !dbg !199

for.cond.cleanup:                                 ; preds = %for.cond.cleanup3
  ret i32 0, !dbg !200

for.cond.cleanup3:                                ; preds = %for.body4
  %sunkaddr = mul i32 %i.022, 4, !dbg !196
  %sunkaddr27 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %sunkaddr, !dbg !196
  %0 = bitcast i8* %sunkaddr27 to i32*, !dbg !196
  store i32 %add, i32* %0, align 4, !dbg !196
  %inc9 = add nuw nsw i32 %i.022, 1, !dbg !201
  call void @llvm.dbg.value(metadata i32 %inc9, metadata !187, metadata !DIExpression()), !dbg !193
  %scevgep = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i32 0, i32 1, i32 0, !dbg !194
  %1 = bitcast i32* %scevgep to [256 x [256 x i32]]*, !dbg !194
  %exitcond25 = icmp eq i32 %inc9, 256, !dbg !202
  br i1 %exitcond25, label %for.cond.cleanup, label %for.body4.lr.ph, !dbg !194, !llvm.loop !203

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %add24 = phi i32 [ %arrayidx6.promoted, %for.body4.lr.ph ], [ %add, %for.body4 ], !dbg !195
  %j.021 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.body4 ]
  call void @llvm.dbg.value(metadata i32 %j.021, metadata !189, metadata !DIExpression()), !dbg !195
  %scevgep26 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i32 0, i32 0, i32 %j.021, !dbg !205
  %2 = load i32, i32* %scevgep26, align 4, !dbg !205
  %mul = mul i32 %add24, %2, !dbg !206
  %add = add i32 %mul, %add24, !dbg !207
  %inc = add nuw nsw i32 %j.021, 1, !dbg !208
  call void @llvm.dbg.value(metadata i32 %inc, metadata !189, metadata !DIExpression()), !dbg !195
  %exitcond = icmp eq i32 %i.022, %inc, !dbg !209
  br i1 %exitcond, label %for.cond.cleanup3, label %for.body4, !dbg !199, !llvm.loop !210

; uselistorder directives
  uselistorder i32 %j.021, { 1, 0 }
  uselistorder i32 %add24, { 1, 0 }
  uselistorder i32 %i.022, { 1, 2, 0, 3 }
  uselistorder label %for.body4, { 1, 0 }
  uselistorder label %for.body4.lr.ph, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex7() local_unnamed_addr #0 !dbg !212 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !214, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 1, metadata !215, metadata !DIExpression()), !dbg !222
  br label %for.body4.lr.ph, !dbg !223

for.body4.lr.ph:                                  ; preds = %entry, %for.cond.cleanup3
  %lsr.iv46 = phi i32 [ 0, %entry ], [ %lsr.iv.next47, %for.cond.cleanup3 ]
  %lsr.iv = phi [256 x [256 x i32]]* [ bitcast (i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @bb, i32 0, i32 1, i32 4) to [256 x [256 x i32]]*), %entry ], [ %12, %for.cond.cleanup3 ]
  %indvar = phi i32 [ 0, %entry ], [ %2, %for.cond.cleanup3 ]
  %i.024 = phi i32 [ 1, %entry ], [ %inc8, %for.cond.cleanup3 ]
  %sum.023 = phi i32 [ 0, %entry ], [ %add.lcssa, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i32 %i.024, metadata !215, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i32 0, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 %sum.023, metadata !214, metadata !DIExpression()), !dbg !221
  %0 = lshr i32 %i.024, 3, !dbg !225
  %1 = shl nuw nsw i32 %0, 3, !dbg !225
  %2 = add i32 %indvar, 1, !dbg !225
  %arrayidx6 = getelementptr [32000 x i32], [32000 x i32]* @a, i32 0, i32 %i.024, !dbg !225
  %3 = load i32, i32* %arrayidx6, align 4, !dbg !225
  %min.iters.check = icmp ult i32 %2, 8, !dbg !228
  br i1 %min.iters.check, label %for.body4.preheader, label %vector.ph, !dbg !228

for.body4.preheader:                              ; preds = %middle.block, %for.body4.lr.ph
  %j.022.ph = phi i32 [ 0, %for.body4.lr.ph ], [ %n.vec, %middle.block ]
  %sum.121.ph = phi i32 [ %sum.023, %for.body4.lr.ph ], [ %11, %middle.block ]
  br label %for.body4, !dbg !228

vector.ph:                                        ; preds = %for.body4.lr.ph
  %n.vec = and i32 %2, -8, !dbg !228
  %broadcast.splatinsert30 = insertelement <4 x i32> undef, i32 %3, i32 0, !dbg !228
  %broadcast.splat31 = shufflevector <4 x i32> %broadcast.splatinsert30, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !228
  %4 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %sum.023, i32 0, !dbg !228
  br label %vector.body, !dbg !228

vector.body:                                      ; preds = %vector.body, %vector.ph
  %lsr.iv45 = phi i32 [ %lsr.iv.next, %vector.body ], [ %1, %vector.ph ], !dbg !229
  %lsr.iv41 = phi [256 x [256 x i32]]* [ %9, %vector.body ], [ %lsr.iv, %vector.ph ], !dbg !229
  %vec.phi = phi <4 x i32> [ %4, %vector.ph ], [ %7, %vector.body ]
  %vec.phi28 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %lsr.iv4143 = bitcast [256 x [256 x i32]]* %lsr.iv41 to <4 x i32>*
  %scevgep44 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv4143, i32 -1, !dbg !230
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep44, align 16, !dbg !230
  %wide.load29 = load <4 x i32>, <4 x i32>* %lsr.iv4143, align 16, !dbg !230
  %5 = mul <4 x i32> %broadcast.splat31, %wide.load, !dbg !231
  %6 = mul <4 x i32> %broadcast.splat31, %wide.load29, !dbg !231
  %7 = add <4 x i32> %5, %vec.phi, !dbg !232
  %8 = add <4 x i32> %6, %vec.phi28, !dbg !232
  %scevgep42 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv41, i32 0, i32 0, i32 8, !dbg !229
  %9 = bitcast i32* %scevgep42 to [256 x [256 x i32]]*, !dbg !229
  %lsr.iv.next = add i32 %lsr.iv45, -8, !dbg !229
  %10 = icmp eq i32 %lsr.iv.next, 0, !dbg !229
  br i1 %10, label %middle.block, label %vector.body, !dbg !229, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %8, %7, !dbg !228
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !228
  %bin.rdx34 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !228
  %rdx.shuf35 = shufflevector <4 x i32> %bin.rdx34, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !228
  %bin.rdx36 = add <4 x i32> %bin.rdx34, %rdx.shuf35, !dbg !228
  %11 = extractelement <4 x i32> %bin.rdx36, i32 0, !dbg !228
  %cmp.n = icmp eq i32 %2, %n.vec, !dbg !228
  br i1 %cmp.n, label %for.cond.cleanup3, label %for.body4.preheader, !dbg !228

for.cond.cleanup:                                 ; preds = %for.cond.cleanup3
  call void @llvm.dbg.value(metadata i32 %add.lcssa, metadata !214, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 %add.lcssa, metadata !214, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 %add.lcssa, metadata !214, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 %add.lcssa, metadata !214, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 %add.lcssa, metadata !214, metadata !DIExpression()), !dbg !221
  ret i32 %add.lcssa, !dbg !235

for.cond.cleanup3:                                ; preds = %for.body4, %middle.block
  %add.lcssa = phi i32 [ %11, %middle.block ], [ %add, %for.body4 ], !dbg !232
  call void @llvm.dbg.value(metadata i32 %add.lcssa, metadata !214, metadata !DIExpression()), !dbg !221
  %inc8 = add nuw nsw i32 %i.024, 1, !dbg !236
  call void @llvm.dbg.value(metadata i32 %inc8, metadata !215, metadata !DIExpression()), !dbg !222
  %scevgep = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i32 0, i32 1, i32 0, !dbg !223
  %12 = bitcast i32* %scevgep to [256 x [256 x i32]]*, !dbg !223
  %lsr.iv.next47 = add nuw nsw i32 %lsr.iv46, 1024, !dbg !223
  %exitcond26 = icmp eq i32 %inc8, 256, !dbg !237
  br i1 %exitcond26, label %for.cond.cleanup, label %for.body4.lr.ph, !dbg !223, !llvm.loop !238

for.body4:                                        ; preds = %for.body4.preheader, %for.body4
  %j.022 = phi i32 [ %inc, %for.body4 ], [ %j.022.ph, %for.body4.preheader ]
  %sum.121 = phi i32 [ %add, %for.body4 ], [ %sum.121.ph, %for.body4.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.022, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 %sum.121, metadata !214, metadata !DIExpression()), !dbg !221
  %13 = shl i32 %j.022, 2, !dbg !230
  %14 = add i32 %lsr.iv46, %13, !dbg !230
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i32 %14, !dbg !230
  %uglygep48 = bitcast i8* %uglygep to i32*
  %scevgep49 = getelementptr i32, i32* %uglygep48, i32 256, !dbg !230
  %15 = load i32, i32* %scevgep49, align 4, !dbg !230
  %mul = mul i32 %3, %15, !dbg !231
  %add = add i32 %mul, %sum.121, !dbg !232
  call void @llvm.dbg.value(metadata i32 %add, metadata !214, metadata !DIExpression()), !dbg !221
  %inc = add nuw nsw i32 %j.022, 1, !dbg !229
  call void @llvm.dbg.value(metadata i32 %inc, metadata !217, metadata !DIExpression()), !dbg !224
  %exitcond = icmp eq i32 %i.024, %inc, !dbg !240
  br i1 %exitcond, label %for.cond.cleanup3, label %for.body4, !dbg !228, !llvm.loop !241

; uselistorder directives
  uselistorder i32 %j.022, { 1, 0 }
  uselistorder i32 %add.lcssa, { 1, 0 }
  uselistorder i32 %11, { 1, 0 }
  uselistorder [256 x [256 x i32]]* %lsr.iv41, { 1, 0 }
  uselistorder i32 %n.vec, { 1, 0 }
  uselistorder i32 %3, { 1, 0 }
  uselistorder i32 %2, { 2, 0, 3, 1 }
  uselistorder i32 %sum.023, { 1, 0 }
  uselistorder i32 %i.024, { 0, 2, 3, 1 }
  uselistorder [256 x [256 x i32]]* %lsr.iv, { 1, 0 }
  uselistorder label %for.body4, { 1, 0 }
  uselistorder label %for.body4.lr.ph, { 1, 0 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @ex8(i32* nocapture %norm1, i32* nocapture %norm2) local_unnamed_addr #1 !dbg !243 {
entry:
  call void @llvm.dbg.value(metadata i32* %norm1, metadata !247, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32* %norm2, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 0, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 0, metadata !249, metadata !DIExpression()), !dbg !253
  br label %vector.ph, !dbg !254

vector.ph:                                        ; preds = %entry, %middle.block
  %lsr.iv118 = phi i32 [ 16, %entry ], [ %lsr.iv.next119, %middle.block ]
  %sum1.055 = phi i32 [ 0, %entry ], [ %16, %middle.block ]
  %i.054 = phi i32 [ 0, %entry ], [ %inc9, %middle.block ]
  call void @llvm.dbg.value(metadata i32 %sum1.055, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %i.054, metadata !249, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %sum1.055, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 0, metadata !250, metadata !DIExpression()), !dbg !253
  %0 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %sum1.055, i32 0, !dbg !256
  br label %vector.body, !dbg !256

vector.body:                                      ; preds = %vector.body, %vector.ph
  %lsr.iv120 = phi i32 [ %lsr.iv.next121, %vector.body ], [ -256, %vector.ph ], !dbg !260
  %vec.phi = phi <4 x i32> [ %0, %vector.ph ], [ %13, %vector.body ]
  %vec.phi59 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %14, %vector.body ]
  %1 = shl nsw i32 %lsr.iv120, 2, !dbg !262
  %2 = add i32 %lsr.iv118, %1, !dbg !262
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %2, !dbg !262
  %uglygep122 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep123 = getelementptr <4 x i32>, <4 x i32>* %uglygep122, i32 63, !dbg !262
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep123, align 16, !dbg !262
  %3 = shl nsw i32 %lsr.iv120, 2, !dbg !262
  %4 = add i32 %lsr.iv118, %3, !dbg !262
  %uglygep124 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %4, !dbg !262
  %uglygep124125 = bitcast i8* %uglygep124 to <4 x i32>*
  %scevgep126 = getelementptr <4 x i32>, <4 x i32>* %uglygep124125, i32 64, !dbg !262
  %wide.load61 = load <4 x i32>, <4 x i32>* %scevgep126, align 16, !dbg !262
  %5 = shl nsw i32 %lsr.iv120, 2, !dbg !264
  %6 = add i32 %lsr.iv118, %5, !dbg !264
  %uglygep127 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i32 %6, !dbg !264
  %uglygep127128 = bitcast i8* %uglygep127 to <4 x i32>*
  %scevgep129 = getelementptr <4 x i32>, <4 x i32>* %uglygep127128, i32 63, !dbg !264
  %wide.load62 = load <4 x i32>, <4 x i32>* %scevgep129, align 16, !dbg !264
  %7 = shl nsw i32 %lsr.iv120, 2, !dbg !264
  %8 = add i32 %lsr.iv118, %7, !dbg !264
  %uglygep130 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i32 %8, !dbg !264
  %uglygep130131 = bitcast i8* %uglygep130 to <4 x i32>*
  %scevgep132 = getelementptr <4 x i32>, <4 x i32>* %uglygep130131, i32 64, !dbg !264
  %wide.load63 = load <4 x i32>, <4 x i32>* %scevgep132, align 16, !dbg !264
  %9 = add <4 x i32> %wide.load62, %wide.load, !dbg !265
  %10 = add <4 x i32> %wide.load63, %wide.load61, !dbg !265
  %11 = sdiv <4 x i32> %9, <i32 2, i32 2, i32 2, i32 2>, !dbg !266
  %12 = sdiv <4 x i32> %10, <i32 2, i32 2, i32 2, i32 2>, !dbg !266
  %13 = add <4 x i32> %11, %vec.phi, !dbg !267
  %14 = add <4 x i32> %12, %vec.phi59, !dbg !267
  %lsr.iv.next121 = add nsw i32 %lsr.iv120, 8, !dbg !260
  %15 = icmp eq i32 %lsr.iv.next121, 0, !dbg !260
  br i1 %15, label %middle.block, label %vector.body, !dbg !260, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %14, %13, !dbg !256
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !256
  %bin.rdx64 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !256
  %rdx.shuf65 = shufflevector <4 x i32> %bin.rdx64, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !256
  %bin.rdx66 = add <4 x i32> %bin.rdx64, %rdx.shuf65, !dbg !256
  %16 = extractelement <4 x i32> %bin.rdx66, i32 0, !dbg !256
  call void @llvm.dbg.value(metadata i32 %16, metadata !251, metadata !DIExpression()), !dbg !253
  %inc9 = add nuw nsw i32 %i.054, 1, !dbg !270
  call void @llvm.dbg.value(metadata i32 %inc9, metadata !249, metadata !DIExpression()), !dbg !253
  %lsr.iv.next119 = add nuw nsw i32 %lsr.iv118, 1024, !dbg !254
  %exitcond58 = icmp eq i32 %inc9, 256, !dbg !271
  br i1 %exitcond58, label %vector.ph70.preheader, label %vector.ph, !dbg !254, !llvm.loop !272

vector.ph70.preheader:                            ; preds = %middle.block
  br label %vector.ph70, !dbg !274

vector.ph70:                                      ; preds = %vector.ph70.preheader, %middle.block67
  %lsr.iv109 = phi [256 x [256 x i32]]* [ bitcast (i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 0, i32 4) to [256 x [256 x i32]]*), %vector.ph70.preheader ], [ %44, %middle.block67 ]
  %lsr.iv = phi [256 x [256 x i32]]* [ bitcast (i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 7, i32 0) to [256 x [256 x i32]]*), %vector.ph70.preheader ], [ %43, %middle.block67 ]
  %sum2.051 = phi i32 [ %42, %middle.block67 ], [ 0, %vector.ph70.preheader ]
  %i.150 = phi i32 [ %inc28, %middle.block67 ], [ 0, %vector.ph70.preheader ]
  call void @llvm.dbg.value(metadata i32 %sum2.051, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %i.150, metadata !249, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %sum2.051, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 0, metadata !250, metadata !DIExpression()), !dbg !253
  %17 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %sum2.051, i32 0, !dbg !276
  br label %vector.body69, !dbg !276

vector.body69:                                    ; preds = %vector.body69, %vector.ph70
  %lsr.iv111 = phi i32 [ %lsr.iv.next, %vector.body69 ], [ -256, %vector.ph70 ], !dbg !280
  %lsr.iv99 = phi [256 x [256 x i32]]* [ %40, %vector.body69 ], [ %lsr.iv, %vector.ph70 ], !dbg !280
  %vec.phi75 = phi <4 x i32> [ %17, %vector.ph70 ], [ %38, %vector.body69 ]
  %vec.phi76 = phi <4 x i32> [ zeroinitializer, %vector.ph70 ], [ %39, %vector.body69 ]
  %lsr.iv99101 = bitcast [256 x [256 x i32]]* %lsr.iv99 to i32*
  %scevgep112 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv109, i32 0, i32 0, i32 %lsr.iv111, !dbg !282
  %scevgep112113 = bitcast i32* %scevgep112 to <4 x i32>*
  %scevgep114 = getelementptr <4 x i32>, <4 x i32>* %scevgep112113, i32 63, !dbg !282
  %wide.load81 = load <4 x i32>, <4 x i32>* %scevgep114, align 16, !dbg !282
  %scevgep115 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv109, i32 0, i32 0, i32 %lsr.iv111, !dbg !282
  %scevgep115116 = bitcast i32* %scevgep115 to <4 x i32>*
  %scevgep117 = getelementptr <4 x i32>, <4 x i32>* %scevgep115116, i32 64, !dbg !282
  %wide.load82 = load <4 x i32>, <4 x i32>* %scevgep117, align 16, !dbg !282
  %scevgep108 = getelementptr i32, i32* %lsr.iv99101, i32 -1792, !dbg !284
  %scevgep107 = getelementptr i32, i32* %lsr.iv99101, i32 -1536, !dbg !284
  %scevgep106 = getelementptr i32, i32* %lsr.iv99101, i32 -1280, !dbg !284
  %scevgep105 = getelementptr i32, i32* %lsr.iv99101, i32 -1024, !dbg !284
  %scevgep104 = getelementptr i32, i32* %lsr.iv99101, i32 -768, !dbg !284
  %scevgep103 = getelementptr i32, i32* %lsr.iv99101, i32 -512, !dbg !284
  %scevgep102 = getelementptr i32, i32* %lsr.iv99101, i32 -256, !dbg !284
  %18 = load i32, i32* %scevgep108, align 4, !dbg !284
  %19 = load i32, i32* %scevgep107, align 4, !dbg !284
  %20 = load i32, i32* %scevgep106, align 4, !dbg !284
  %21 = load i32, i32* %scevgep105, align 4, !dbg !284
  %22 = insertelement <4 x i32> undef, i32 %18, i32 0, !dbg !284
  %23 = insertelement <4 x i32> %22, i32 %19, i32 1, !dbg !284
  %24 = insertelement <4 x i32> %23, i32 %20, i32 2, !dbg !284
  %25 = insertelement <4 x i32> %24, i32 %21, i32 3, !dbg !284
  %26 = load i32, i32* %scevgep104, align 4, !dbg !284
  %27 = load i32, i32* %scevgep103, align 4, !dbg !284
  %28 = load i32, i32* %scevgep102, align 4, !dbg !284
  %29 = load i32, i32* %lsr.iv99101, align 4, !dbg !284
  %30 = insertelement <4 x i32> undef, i32 %26, i32 0, !dbg !280
  %31 = insertelement <4 x i32> %30, i32 %27, i32 1, !dbg !280
  %32 = insertelement <4 x i32> %31, i32 %28, i32 2, !dbg !280
  %33 = insertelement <4 x i32> %32, i32 %29, i32 3, !dbg !280
  %34 = add <4 x i32> %25, %wide.load81, !dbg !280
  %35 = add <4 x i32> %33, %wide.load82, !dbg !280
  %36 = sdiv <4 x i32> %34, <i32 2, i32 2, i32 2, i32 2>, !dbg !285
  %37 = sdiv <4 x i32> %35, <i32 2, i32 2, i32 2, i32 2>, !dbg !285
  %38 = add <4 x i32> %36, %vec.phi75, !dbg !286
  %39 = add <4 x i32> %37, %vec.phi76, !dbg !286
  %scevgep100 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv99, i32 0, i32 8, i32 0, !dbg !280
  %40 = bitcast i32* %scevgep100 to [256 x [256 x i32]]*, !dbg !280
  %lsr.iv.next = add nsw i32 %lsr.iv111, 8, !dbg !280
  %41 = icmp eq i32 %lsr.iv.next, 0, !dbg !280
  br i1 %41, label %middle.block67, label %vector.body69, !dbg !280, !llvm.loop !287

middle.block67:                                   ; preds = %vector.body69
  %bin.rdx83 = add <4 x i32> %39, %38, !dbg !276
  %rdx.shuf84 = shufflevector <4 x i32> %bin.rdx83, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !276
  %bin.rdx85 = add <4 x i32> %bin.rdx83, %rdx.shuf84, !dbg !276
  %rdx.shuf86 = shufflevector <4 x i32> %bin.rdx85, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !276
  %bin.rdx87 = add <4 x i32> %bin.rdx85, %rdx.shuf86, !dbg !276
  %42 = extractelement <4 x i32> %bin.rdx87, i32 0, !dbg !276
  call void @llvm.dbg.value(metadata i32 %42, metadata !252, metadata !DIExpression()), !dbg !253
  %inc28 = add nuw nsw i32 %i.150, 1, !dbg !289
  call void @llvm.dbg.value(metadata i32 %inc28, metadata !249, metadata !DIExpression()), !dbg !253
  %scevgep = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i32 0, i32 0, i32 1, !dbg !274
  %43 = bitcast i32* %scevgep to [256 x [256 x i32]]*, !dbg !274
  %scevgep110 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv109, i32 0, i32 1, i32 0, !dbg !274
  %44 = bitcast i32* %scevgep110 to [256 x [256 x i32]]*, !dbg !274
  %exitcond56 = icmp eq i32 %inc28, 256, !dbg !290
  br i1 %exitcond56, label %for.end29, label %vector.ph70, !dbg !274, !llvm.loop !291

for.end29:                                        ; preds = %middle.block67
  call void @llvm.dbg.value(metadata i32 %42, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %42, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %42, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %42, metadata !252, metadata !DIExpression()), !dbg !253
  store i32 %16, i32* %norm1, align 4, !dbg !293
  store i32 %42, i32* %norm2, align 4, !dbg !294
  ret void, !dbg !295

; uselistorder directives
  uselistorder i32 %inc28, { 1, 0 }
  uselistorder i32* %lsr.iv99101, { 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder [256 x [256 x i32]]* %lsr.iv99, { 1, 0 }
  uselistorder i32 %lsr.iv111, { 2, 0, 1 }
  uselistorder [256 x [256 x i32]]* %lsr.iv, { 1, 0 }
  uselistorder [256 x [256 x i32]]* %lsr.iv109, { 2, 0, 1 }
  uselistorder i32 %lsr.iv120, { 4, 0, 1, 2, 3 }
  uselistorder i32 %lsr.iv118, { 4, 0, 1, 2, 3 }
  uselistorder label %vector.ph70, { 1, 0 }
  uselistorder label %vector.ph, { 1, 0 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex9() local_unnamed_addr #1 !dbg !296 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !298, metadata !DIExpression()), !dbg !304
  br label %for.body, !dbg !305

for.cond.cleanup:                                 ; preds = %for.body6
  ret i32 0, !dbg !306

for.body:                                         ; preds = %for.body6, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %for.body6 ], [ 4, %entry ]
  %i.034 = phi i32 [ 0, %entry ], [ %inc17, %for.body6 ]
  call void @llvm.dbg.value(metadata i32 %i.034, metadata !298, metadata !DIExpression()), !dbg !304
  %arrayidx = getelementptr [32000 x i32], [32000 x i32]* @b, i32 0, i32 %i.034, !dbg !307
  %0 = load i32, i32* %arrayidx, align 4, !dbg !307
  %arrayidx1 = getelementptr [32000 x i32], [32000 x i32]* @c, i32 0, i32 %i.034, !dbg !308
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !308
  %mul = mul i32 %1, %0, !dbg !309
  %arrayidx2 = getelementptr [32000 x i32], [32000 x i32]* @a, i32 0, i32 %i.034, !dbg !310
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !311
  %add = add i32 %2, %mul, !dbg !311
  store i32 %add, i32* %arrayidx2, align 4, !dbg !311
  call void @llvm.dbg.value(metadata i32 1, metadata !300, metadata !DIExpression()), !dbg !312
  %sub = add nsw i32 %i.034, -1, !dbg !313
  %broadcast.splatinsert37 = insertelement <4 x i32> undef, i32 %add, i32 0, !dbg !316
  %broadcast.splat38 = shufflevector <4 x i32> %broadcast.splatinsert37, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !316
  br label %vector.body, !dbg !316

vector.body:                                      ; preds = %vector.body, %for.body
  %lsr.iv39 = phi i32 [ %lsr.iv.next40, %vector.body ], [ -255, %for.body ]
  %3 = shl nsw i32 %lsr.iv39, 2, !dbg !317
  %4 = add i32 %lsr.iv, %3, !dbg !317
  %uglygep45 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %4, !dbg !317
  %uglygep47 = getelementptr i8, i8* %uglygep45, i32 -4, !dbg !317
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep4748, align 4, !dbg !317
  %5 = shl nsw i32 %lsr.iv39, 2, !dbg !318
  %6 = add i32 %lsr.iv, %5, !dbg !318
  %uglygep49 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i32 %6, !dbg !318
  %uglygep4950 = bitcast i8* %uglygep49 to <4 x i32>*
  %scevgep51 = getelementptr <4 x i32>, <4 x i32>* %uglygep4950, i32 63, !dbg !318
  %scevgep5152 = bitcast <4 x i32>* %scevgep51 to i8*
  %uglygep53 = getelementptr i8, i8* %scevgep5152, i32 12, !dbg !318
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %wide.load36 = load <4 x i32>, <4 x i32>* %uglygep5354, align 4, !dbg !318
  %7 = mul <4 x i32> %wide.load36, %broadcast.splat38, !dbg !319
  %8 = add <4 x i32> %7, %wide.load, !dbg !320
  %9 = shl nsw i32 %lsr.iv39, 2, !dbg !321
  %10 = add i32 %lsr.iv, %9, !dbg !321
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %10, !dbg !321
  %uglygep41 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep41, i32 63, !dbg !321
  %scevgep42 = bitcast <4 x i32>* %scevgep to i8*
  %uglygep43 = getelementptr i8, i8* %scevgep42, i32 12, !dbg !321
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  store <4 x i32> %8, <4 x i32>* %uglygep4344, align 4, !dbg !321
  %lsr.iv.next40 = add nuw nsw i32 %lsr.iv39, 4
  %11 = icmp eq i32 %lsr.iv.next40, -3
  br i1 %11, label %for.body6, label %vector.body, !llvm.loop !322

for.body6:                                        ; preds = %vector.body
  call void @llvm.dbg.value(metadata i32 253, metadata !300, metadata !DIExpression()), !dbg !312
  %arrayidx8 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 %sub, i32 253, !dbg !317
  %12 = load i32, i32* %arrayidx8, align 4, !dbg !317
  %arrayidx10 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i32 0, i32 %i.034, i32 253, !dbg !318
  %13 = load i32, i32* %arrayidx10, align 4, !dbg !318
  %mul12 = mul i32 %13, %add, !dbg !319
  %add13 = add i32 %mul12, %12, !dbg !320
  %arrayidx15 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 %i.034, i32 253, !dbg !324
  store i32 %add13, i32* %arrayidx15, align 4, !dbg !321
  call void @llvm.dbg.value(metadata i32 254, metadata !300, metadata !DIExpression()), !dbg !312
  %arrayidx8.1 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 %sub, i32 254, !dbg !317
  %14 = load i32, i32* %arrayidx8.1, align 8, !dbg !317
  %arrayidx10.1 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i32 0, i32 %i.034, i32 254, !dbg !318
  %15 = load i32, i32* %arrayidx10.1, align 8, !dbg !318
  %mul12.1 = mul i32 %15, %add, !dbg !319
  %add13.1 = add i32 %mul12.1, %14, !dbg !320
  %arrayidx15.1 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 %i.034, i32 254, !dbg !324
  store i32 %add13.1, i32* %arrayidx15.1, align 8, !dbg !321
  call void @llvm.dbg.value(metadata i32 255, metadata !300, metadata !DIExpression()), !dbg !312
  %arrayidx8.2 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 %sub, i32 255, !dbg !317
  %16 = load i32, i32* %arrayidx8.2, align 4, !dbg !317
  %arrayidx10.2 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i32 0, i32 %i.034, i32 255, !dbg !318
  %17 = load i32, i32* %arrayidx10.2, align 4, !dbg !318
  %mul12.2 = mul i32 %17, %add, !dbg !319
  %add13.2 = add i32 %mul12.2, %16, !dbg !320
  %arrayidx15.2 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 %i.034, i32 255, !dbg !324
  store i32 %add13.2, i32* %arrayidx15.2, align 4, !dbg !321
  call void @llvm.dbg.value(metadata i32 256, metadata !300, metadata !DIExpression()), !dbg !312
  %inc17 = add nuw nsw i32 %i.034, 1, !dbg !325
  call void @llvm.dbg.value(metadata i32 %inc17, metadata !298, metadata !DIExpression()), !dbg !304
  %lsr.iv.next = add nuw nsw i32 %lsr.iv, 1024, !dbg !305
  %exitcond35 = icmp eq i32 %inc17, 256, !dbg !326
  br i1 %exitcond35, label %for.cond.cleanup, label %for.body, !dbg !305, !llvm.loop !327

; uselistorder directives
  uselistorder i32 %lsr.iv39, { 3, 2, 0, 1 }
  uselistorder i32 %add, { 0, 1, 3, 2, 4 }
  uselistorder i32 %i.034, { 4, 0, 1, 2, 3, 10, 9, 8, 5, 6, 7 }
  uselistorder i32 %lsr.iv, { 3, 2, 0, 1 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex30() local_unnamed_addr #1 !dbg !329 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !331, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 0, metadata !332, metadata !DIExpression()), !dbg !339
  br label %for.body, !dbg !340

for.cond.cleanup:                                 ; preds = %middle.block
  call void @llvm.dbg.value(metadata i32 %add14.2, metadata !331, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 %add14.2, metadata !331, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 %add14.2, metadata !331, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 %add14.2, metadata !331, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 %add14.2, metadata !331, metadata !DIExpression()), !dbg !338
  ret i32 %add14.2, !dbg !341

for.body:                                         ; preds = %middle.block, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %middle.block ], [ -1020, %entry ]
  %i.035 = phi i32 [ 0, %entry ], [ %inc16, %middle.block ]
  %sum.034 = phi i32 [ 0, %entry ], [ %add14.2, %middle.block ]
  call void @llvm.dbg.value(metadata i32 %i.035, metadata !332, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 %sum.034, metadata !331, metadata !DIExpression()), !dbg !338
  %arrayidx = getelementptr [32000 x i32], [32000 x i32]* @b, i32 0, i32 %i.035, !dbg !342
  %0 = load i32, i32* %arrayidx, align 4, !dbg !342
  %arrayidx1 = getelementptr [32000 x i32], [32000 x i32]* @c, i32 0, i32 %i.035, !dbg !343
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !343
  %mul = mul i32 %1, %0, !dbg !344
  %arrayidx2 = getelementptr [32000 x i32], [32000 x i32]* @a, i32 0, i32 %i.035, !dbg !345
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !346
  %add = add i32 %2, %mul, !dbg !346
  store i32 %add, i32* %arrayidx2, align 4, !dbg !346
  call void @llvm.dbg.value(metadata i32 1, metadata !334, metadata !DIExpression()), !dbg !347
  %sub = add nsw i32 %i.035, -1, !dbg !348
  %broadcast.splatinsert38 = insertelement <4 x i32> undef, i32 %add, i32 0, !dbg !351
  %broadcast.splat39 = shufflevector <4 x i32> %broadcast.splatinsert38, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !351
  %3 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %sum.034, i32 0, !dbg !351
  br label %vector.body, !dbg !351

vector.body:                                      ; preds = %vector.body, %for.body
  %lsr.iv42 = phi i32 [ %lsr.iv.next43, %vector.body ], [ -255, %for.body ]
  %vec.phi = phi <4 x i32> [ %3, %for.body ], [ %10, %vector.body ]
  %4 = shl nsw i32 %lsr.iv42, 2, !dbg !352
  %5 = add i32 %lsr.iv, %4, !dbg !352
  %uglygep48 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %5, !dbg !352
  %uglygep4849 = bitcast i8* %uglygep48 to <4 x i32>*
  %scevgep50 = getelementptr <4 x i32>, <4 x i32>* %uglygep4849, i32 63, !dbg !352
  %scevgep5051 = bitcast <4 x i32>* %scevgep50 to i8*
  %uglygep52 = getelementptr i8, i8* %scevgep5051, i32 12, !dbg !352
  %uglygep5253 = bitcast i8* %uglygep52 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep5253, align 4, !dbg !352
  %6 = shl nsw i32 %lsr.iv42, 2, !dbg !353
  %7 = add i32 %lsr.iv, %6, !dbg !353
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i32 %7, !dbg !353
  %uglygep44 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep44, i32 127, !dbg !353
  %scevgep45 = bitcast <4 x i32>* %scevgep to i8*
  %uglygep46 = getelementptr i8, i8* %scevgep45, i32 12, !dbg !353
  %uglygep4647 = bitcast i8* %uglygep46 to <4 x i32>*
  %wide.load37 = load <4 x i32>, <4 x i32>* %uglygep4647, align 4, !dbg !353
  %8 = mul <4 x i32> %wide.load37, %broadcast.splat39, !dbg !354
  %9 = add <4 x i32> %wide.load, %vec.phi, !dbg !355
  %10 = add <4 x i32> %9, %8, !dbg !356
  %lsr.iv.next43 = add nuw nsw i32 %lsr.iv42, 4
  %11 = icmp eq i32 %lsr.iv.next43, -3
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !357

middle.block:                                     ; preds = %vector.body
  %rdx.shuf = shufflevector <4 x i32> %10, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !351
  %bin.rdx = add <4 x i32> %10, %rdx.shuf, !dbg !351
  %rdx.shuf40 = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !351
  %bin.rdx41 = add <4 x i32> %bin.rdx, %rdx.shuf40, !dbg !351
  %12 = extractelement <4 x i32> %bin.rdx41, i32 0, !dbg !351
  call void @llvm.dbg.value(metadata i32 253, metadata !334, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 %12, metadata !331, metadata !DIExpression()), !dbg !338
  %arrayidx8 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 %sub, i32 253, !dbg !352
  %13 = load i32, i32* %arrayidx8, align 4, !dbg !352
  %arrayidx10 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i32 0, i32 %i.035, i32 253, !dbg !353
  %14 = load i32, i32* %arrayidx10, align 4, !dbg !353
  %mul12 = mul i32 %14, %add, !dbg !354
  %add13 = add i32 %13, %12, !dbg !355
  %add14 = add i32 %add13, %mul12, !dbg !356
  call void @llvm.dbg.value(metadata i32 %add14, metadata !331, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 254, metadata !334, metadata !DIExpression()), !dbg !347
  %arrayidx8.1 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 %sub, i32 254, !dbg !352
  %15 = load i32, i32* %arrayidx8.1, align 8, !dbg !352
  %arrayidx10.1 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i32 0, i32 %i.035, i32 254, !dbg !353
  %16 = load i32, i32* %arrayidx10.1, align 8, !dbg !353
  %mul12.1 = mul i32 %16, %add, !dbg !354
  %add13.1 = add i32 %15, %add14, !dbg !355
  %add14.1 = add i32 %add13.1, %mul12.1, !dbg !356
  call void @llvm.dbg.value(metadata i32 %add14.1, metadata !331, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 255, metadata !334, metadata !DIExpression()), !dbg !347
  %arrayidx8.2 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 %sub, i32 255, !dbg !352
  %17 = load i32, i32* %arrayidx8.2, align 4, !dbg !352
  %arrayidx10.2 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i32 0, i32 %i.035, i32 255, !dbg !353
  %18 = load i32, i32* %arrayidx10.2, align 4, !dbg !353
  %mul12.2 = mul i32 %18, %add, !dbg !354
  %add13.2 = add i32 %17, %add14.1, !dbg !355
  %add14.2 = add i32 %add13.2, %mul12.2, !dbg !356
  call void @llvm.dbg.value(metadata i32 %add14.2, metadata !331, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 256, metadata !334, metadata !DIExpression()), !dbg !347
  %inc16 = add nuw nsw i32 %i.035, 1, !dbg !359
  call void @llvm.dbg.value(metadata i32 %inc16, metadata !332, metadata !DIExpression()), !dbg !339
  %lsr.iv.next = add nsw i32 %lsr.iv, 1024, !dbg !340
  %exitcond36 = icmp eq i32 %inc16, 256, !dbg !360
  br i1 %exitcond36, label %for.cond.cleanup, label %for.body, !dbg !340, !llvm.loop !361

; uselistorder directives
  uselistorder i32 %lsr.iv42, { 2, 1, 0 }
  uselistorder i32 %add, { 0, 1, 3, 2, 4 }
  uselistorder i32 %i.035, { 2, 0, 1, 7, 6, 3, 4, 5 }
  uselistorder i32 %lsr.iv, { 2, 1, 0 }
  uselistorder i32 255, { 1, 0, 4, 3, 2 }
  uselistorder i32 254, { 1, 0, 4, 3, 2 }
  uselistorder [256 x [256 x i32]]* @bb, { 3, 4, 7, 5, 6, 8, 0, 1, 2 }
  uselistorder i32 12, { 1, 0, 3, 2 }
  uselistorder i32 63, { 0, 2, 1, 5, 3, 4 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex10() local_unnamed_addr #1 !dbg !363 {
entry:
  call void @llvm.dbg.value(metadata i32 16000, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32 0, metadata !366, metadata !DIExpression()), !dbg !369
  br label %for.body, !dbg !370

for.cond.cleanup:                                 ; preds = %for.body
  ret i32 0, !dbg !371

for.body:                                         ; preds = %for.body, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  call void @llvm.dbg.value(metadata i32 %i.018, metadata !366, metadata !DIExpression()), !dbg !369
  %add = add nuw nsw i32 %i.018, 1, !dbg !372
  %cmp1 = icmp ult i32 %i.018, 15999, !dbg !376
  %0 = shl nuw nsw i32 %i.018, 2, !dbg !377
  %uglygep21 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %0, !dbg !377
  %uglygep2122 = bitcast i8* %uglygep21 to i32*
  %1 = load i32, i32* %uglygep2122, align 4, !dbg !377
  %c.sink = select i1 %cmp1, [32000 x i32]* @c, [32000 x i32]* @d, !dbg !378
  %scevgep = getelementptr [32000 x i32], [32000 x i32]* %c.sink, i32 0, i32 %i.018, !dbg !377
  %2 = load i32, i32* %scevgep, align 4, !dbg !377
  %mul = mul i32 %2, %1, !dbg !377
  %3 = shl nuw nsw i32 %i.018, 2, !dbg !377
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %3, !dbg !377
  %uglygep20 = bitcast i8* %uglygep to i32*
  %4 = load i32, i32* %uglygep20, align 4, !dbg !377
  %add4 = add i32 %4, %mul, !dbg !377
  store i32 %add4, i32* %uglygep20, align 4, !dbg !377
  call void @llvm.dbg.value(metadata i32 %add, metadata !366, metadata !DIExpression()), !dbg !369
  %exitcond = icmp eq i32 %add, 32000, !dbg !379
  br i1 %exitcond, label %for.cond.cleanup, label %for.body, !dbg !370, !llvm.loop !380

; uselistorder directives
  uselistorder i32 %i.018, { 1, 2, 0, 4, 3 }
}

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex31() local_unnamed_addr #0 !dbg !382 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !384, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i32 16000, metadata !385, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i32 0, metadata !386, metadata !DIExpression()), !dbg !389
  br label %for.body, !dbg !390

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %sum.1, metadata !384, metadata !DIExpression()), !dbg !388
  ret i32 %sum.1, !dbg !391

for.body:                                         ; preds = %for.body, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %sum.017 = phi i32 [ 0, %entry ], [ %sum.1, %for.body ]
  call void @llvm.dbg.value(metadata i32 %i.018, metadata !386, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 %sum.017, metadata !384, metadata !DIExpression()), !dbg !388
  %add = add nuw nsw i32 %i.018, 1, !dbg !392
  %cmp1 = icmp ult i32 %i.018, 15999, !dbg !396
  %0 = shl nuw nsw i32 %i.018, 2, !dbg !397
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %0, !dbg !397
  %uglygep19 = bitcast i8* %uglygep to i32*
  %1 = load i32, i32* %uglygep19, align 4, !dbg !397
  call void @llvm.dbg.value(metadata i32 undef, metadata !384, metadata !DIExpression()), !dbg !388
  %c.d = select i1 %cmp1, [32000 x i32]* @c, [32000 x i32]* @d
  %scevgep = getelementptr [32000 x i32], [32000 x i32]* %c.d, i32 0, i32 %i.018, !dbg !397
  %.pn = load i32, i32* %scevgep, align 4, !dbg !397
  %mul.pn = mul i32 %.pn, %1, !dbg !397
  %sum.1 = add i32 %mul.pn, %sum.017, !dbg !397
  call void @llvm.dbg.value(metadata i32 %add, metadata !386, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 %sum.1, metadata !384, metadata !DIExpression()), !dbg !388
  %exitcond = icmp eq i32 %add, 32000, !dbg !398
  br i1 %exitcond, label %for.cond.cleanup, label %for.body, !dbg !390, !llvm.loop !399

; uselistorder directives
  uselistorder i32 %i.018, { 0, 1, 3, 2 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex11() local_unnamed_addr #1 !dbg !401 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !403, metadata !DIExpression()), !dbg !409
  br label %for.body, !dbg !410

for.cond.cleanup:                                 ; preds = %for.inc
  ret i32 0, !dbg !411

for.body:                                         ; preds = %for.inc, %entry
  %i.027 = phi i32 [ 0, %entry ], [ %inc.pre-phi, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.027, metadata !403, metadata !DIExpression()), !dbg !409
  %arrayidx = getelementptr [32000 x i32], [32000 x i32]* @a, i32 0, i32 %i.027, !dbg !412
  %0 = load i32, i32* %arrayidx, align 4, !dbg !412
  %cmp1 = icmp sgt i32 %0, -1, !dbg !414
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end, !dbg !415

for.body.for.inc_crit_edge:                       ; preds = %for.body
  %.pre29 = add nuw nsw i32 %i.027, 1, !dbg !416
  br label %for.inc, !dbg !415

if.end:                                           ; preds = %for.body
  %arrayidx2 = getelementptr [32000 x i32], [32000 x i32]* @b, i32 0, i32 %i.027, !dbg !417
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !417
  %cmp3 = icmp sgt i32 %1, -1, !dbg !419
  %arrayidx9.phi.trans.insert = getelementptr [32000 x i32], [32000 x i32]* @c, i32 0, i32 %i.027, !dbg !420
  %.pre = load i32, i32* %arrayidx9.phi.trans.insert, align 4, !dbg !420
  %arrayidx10.phi.trans.insert = getelementptr [32000 x i32], [32000 x i32]* @d, i32 0, i32 %i.027, !dbg !420
  %.pre28 = load i32, i32* %arrayidx10.phi.trans.insert, align 4, !dbg !420
  br i1 %cmp3, label %L30, label %if.end5, !dbg !421

if.end5:                                          ; preds = %if.end
  %mul = mul i32 %.pre28, %.pre, !dbg !422
  %add = add i32 %mul, %0, !dbg !423
  %sunkaddr = mul i32 %i.027, 4, !dbg !423
  %sunkaddr30 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %sunkaddr, !dbg !423
  %2 = bitcast i8* %sunkaddr30 to i32*, !dbg !423
  store i32 %add, i32* %2, align 4, !dbg !423
  br label %L30, !dbg !424

L30:                                              ; preds = %if.end, %if.end5
  call void @llvm.dbg.label(metadata !405), !dbg !425
  %arrayidx11 = getelementptr [32000 x i32], [32000 x i32]* @e, i32 0, i32 %i.027, !dbg !426
  %3 = load i32, i32* %arrayidx11, align 4, !dbg !426
  %mul12 = mul i32 %3, %.pre28, !dbg !427
  %add13 = add i32 %mul12, %.pre, !dbg !428
  %add14 = add nuw nsw i32 %i.027, 1, !dbg !429
  %arrayidx15 = getelementptr [32000 x i32], [32000 x i32]* @b, i32 0, i32 %add14, !dbg !430
  store i32 %add13, i32* %arrayidx15, align 4, !dbg !431
  br label %for.inc, !dbg !430

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %L30
  %inc.pre-phi = phi i32 [ %.pre29, %for.body.for.inc_crit_edge ], [ %add14, %L30 ], !dbg !416
  call void @llvm.dbg.label(metadata !408), !dbg !432
  call void @llvm.dbg.value(metadata i32 %inc.pre-phi, metadata !403, metadata !DIExpression()), !dbg !409
  %exitcond = icmp eq i32 %inc.pre-phi, 31999, !dbg !433
  br i1 %exitcond, label %for.cond.cleanup, label %for.body, !dbg !410, !llvm.loop !434

; uselistorder directives
  uselistorder i32 %inc.pre-phi, { 1, 0 }
  uselistorder i32 %i.027, { 4, 5, 0, 2, 3, 6, 1, 7 }
  uselistorder label %for.inc, { 1, 0 }
  uselistorder label %L30, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex32() local_unnamed_addr #0 !dbg !436 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata i32 0, metadata !439, metadata !DIExpression()), !dbg !446
  br label %vector.body, !dbg !447

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %vector.body ], [ -127984, %entry ], !dbg !448
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %predphi, %vector.body ]
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !449
  %uglygep36 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep36, i32 7999, !dbg !449
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !449
  %0 = icmp slt <4 x i32> %wide.load, zeroinitializer, !dbg !451
  %uglygep37 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !452
  %uglygep3738 = bitcast i8* %uglygep37 to <4 x i32>*
  %scevgep39 = getelementptr <4 x i32>, <4 x i32>* %uglygep3738, i32 7999, !dbg !452
  %wide.load29 = load <4 x i32>, <4 x i32>* %scevgep39, align 16, !dbg !452
  %uglygep40 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !454
  %uglygep4041 = bitcast i8* %uglygep40 to <4 x i32>*
  %scevgep42 = getelementptr <4 x i32>, <4 x i32>* %uglygep4041, i32 7999, !dbg !454
  %wide.load30 = load <4 x i32>, <4 x i32>* %scevgep42, align 16, !dbg !454
  %uglygep43 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !454
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %uglygep4344, i32 7999, !dbg !454
  %wide.load31 = load <4 x i32>, <4 x i32>* %scevgep45, align 16, !dbg !454
  %1 = mul <4 x i32> %wide.load31, %wide.load30, !dbg !455
  %2 = icmp slt <4 x i32> %wide.load29, zeroinitializer, !dbg !455
  %3 = select <4 x i1> %2, <4 x i32> %1, <4 x i32> zeroinitializer, !dbg !455
  %4 = add <4 x i32> %vec.phi, %3, !dbg !455
  %uglygep46 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv, !dbg !456
  %uglygep4647 = bitcast i8* %uglygep46 to <4 x i32>*
  %scevgep48 = getelementptr <4 x i32>, <4 x i32>* %uglygep4647, i32 7999, !dbg !456
  %wide.load32 = load <4 x i32>, <4 x i32>* %scevgep48, align 16, !dbg !456
  %5 = mul <4 x i32> %wide.load32, %wide.load31, !dbg !457
  %6 = add <4 x i32> %wide.load30, %4, !dbg !458
  %7 = add <4 x i32> %6, %5, !dbg !459
  %predphi = select <4 x i1> %0, <4 x i32> %7, <4 x i32> %vec.phi, !dbg !445
  %lsr.iv.next = add nsw i32 %lsr.iv, 16, !dbg !448
  %8 = icmp eq i32 %lsr.iv.next, 0, !dbg !448
  br i1 %8, label %middle.block, label %vector.body, !dbg !448, !llvm.loop !460

middle.block:                                     ; preds = %vector.body
  %rdx.shuf = shufflevector <4 x i32> %predphi, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !447
  %bin.rdx = add <4 x i32> %predphi, %rdx.shuf, !dbg !447
  %rdx.shuf33 = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !447
  %bin.rdx34 = add <4 x i32> %bin.rdx, %rdx.shuf33, !dbg !447
  %9 = extractelement <4 x i32> %bin.rdx34, i32 0, !dbg !447
  call void @llvm.dbg.value(metadata i32 31996, metadata !439, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i32 %9, metadata !438, metadata !DIExpression()), !dbg !445
  %10 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i32 0, i32 31996), align 16, !dbg !449
  %cmp1 = icmp sgt i32 %10, -1, !dbg !451
  br i1 %cmp1, label %for.inc, label %if.end, !dbg !462

if.end:                                           ; preds = %middle.block
  %11 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i32 0, i32 31996), align 16, !dbg !452
  %.pre = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i32 0, i32 31996), align 16, !dbg !454
  %.pre28 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @d, i32 0, i32 31996), align 16, !dbg !454
  %mul = mul i32 %.pre28, %.pre, !dbg !455
  %cmp3.inv = icmp slt i32 %11, 0, !dbg !455
  %add = select i1 %cmp3.inv, i32 %mul, i32 0, !dbg !455
  %sum.1 = add i32 %9, %add, !dbg !455
  call void @llvm.dbg.value(metadata i32 %sum.1, metadata !438, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.label(metadata !441), !dbg !463
  %12 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i32 0, i32 31996), align 16, !dbg !456
  %mul11 = mul i32 %12, %.pre28, !dbg !457
  %add12 = add i32 %.pre, %sum.1, !dbg !458
  %add13 = add i32 %add12, %mul11, !dbg !459
  call void @llvm.dbg.value(metadata i32 %add13, metadata !438, metadata !DIExpression()), !dbg !445
  br label %for.inc, !dbg !464

for.inc:                                          ; preds = %if.end, %middle.block
  %sum.2 = phi i32 [ %9, %middle.block ], [ %add13, %if.end ], !dbg !445
  call void @llvm.dbg.value(metadata i32 %sum.2, metadata !438, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.label(metadata !444), !dbg !465
  call void @llvm.dbg.value(metadata i32 31997, metadata !439, metadata !DIExpression()), !dbg !446
  %13 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i32 0, i32 31997), align 4, !dbg !449
  %cmp1.1 = icmp sgt i32 %13, -1, !dbg !451
  br i1 %cmp1.1, label %for.inc.1, label %if.end.1, !dbg !462

if.end.1:                                         ; preds = %for.inc
  %14 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i32 0, i32 31997), align 4, !dbg !452
  %.pre.1 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i32 0, i32 31997), align 4, !dbg !454
  %.pre28.1 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @d, i32 0, i32 31997), align 4, !dbg !454
  %mul.1 = mul i32 %.pre28.1, %.pre.1, !dbg !455
  %cmp3.inv.1 = icmp slt i32 %14, 0, !dbg !455
  %add.1 = select i1 %cmp3.inv.1, i32 %mul.1, i32 0, !dbg !455
  %sum.1.1 = add i32 %sum.2, %add.1, !dbg !455
  call void @llvm.dbg.value(metadata i32 %sum.1.1, metadata !438, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.label(metadata !441), !dbg !463
  %15 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i32 0, i32 31997), align 4, !dbg !456
  %mul11.1 = mul i32 %15, %.pre28.1, !dbg !457
  %add12.1 = add i32 %.pre.1, %sum.1.1, !dbg !458
  %add13.1 = add i32 %add12.1, %mul11.1, !dbg !459
  call void @llvm.dbg.value(metadata i32 %add13.1, metadata !438, metadata !DIExpression()), !dbg !445
  br label %for.inc.1, !dbg !464

for.inc.1:                                        ; preds = %if.end.1, %for.inc
  %sum.2.1 = phi i32 [ %sum.2, %for.inc ], [ %add13.1, %if.end.1 ], !dbg !445
  call void @llvm.dbg.value(metadata i32 %sum.2.1, metadata !438, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.label(metadata !444), !dbg !465
  call void @llvm.dbg.value(metadata i32 31998, metadata !439, metadata !DIExpression()), !dbg !446
  %16 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i32 0, i32 31998), align 8, !dbg !449
  %cmp1.2 = icmp sgt i32 %16, -1, !dbg !451
  br i1 %cmp1.2, label %for.inc.2, label %if.end.2, !dbg !462

if.end.2:                                         ; preds = %for.inc.1
  %17 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i32 0, i32 31998), align 8, !dbg !452
  %.pre.2 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i32 0, i32 31998), align 8, !dbg !454
  %.pre28.2 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @d, i32 0, i32 31998), align 8, !dbg !454
  %mul.2 = mul i32 %.pre28.2, %.pre.2, !dbg !455
  %cmp3.inv.2 = icmp slt i32 %17, 0, !dbg !455
  %add.2 = select i1 %cmp3.inv.2, i32 %mul.2, i32 0, !dbg !455
  %sum.1.2 = add i32 %sum.2.1, %add.2, !dbg !455
  call void @llvm.dbg.value(metadata i32 %sum.1.2, metadata !438, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.label(metadata !441), !dbg !463
  %18 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i32 0, i32 31998), align 8, !dbg !456
  %mul11.2 = mul i32 %18, %.pre28.2, !dbg !457
  %add12.2 = add i32 %.pre.2, %sum.1.2, !dbg !458
  %add13.2 = add i32 %add12.2, %mul11.2, !dbg !459
  call void @llvm.dbg.value(metadata i32 %add13.2, metadata !438, metadata !DIExpression()), !dbg !445
  br label %for.inc.2, !dbg !464

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1
  %sum.2.2 = phi i32 [ %sum.2.1, %for.inc.1 ], [ %add13.2, %if.end.2 ], !dbg !445
  call void @llvm.dbg.value(metadata i32 %sum.2.2, metadata !438, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.label(metadata !444), !dbg !465
  call void @llvm.dbg.value(metadata i32 31999, metadata !439, metadata !DIExpression()), !dbg !446
  ret i32 %sum.2.2, !dbg !466

; uselistorder directives
  uselistorder i32 %lsr.iv, { 5, 0, 1, 2, 3, 4 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex12() local_unnamed_addr #1 !dbg !467 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !469, metadata !DIExpression()), !dbg !475
  br label %for.body, !dbg !476

for.cond.cleanup:                                 ; preds = %L30
  ret i32 0, !dbg !477

for.body:                                         ; preds = %L30, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %L30 ], [ -128000, %entry ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !469, metadata !DIExpression()), !dbg !475
  %uglygep59 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !478
  %uglygep5960 = bitcast i8* %uglygep59 to i32*
  %scevgep61 = getelementptr i32, i32* %uglygep5960, i32 32000, !dbg !478
  %0 = load i32, i32* %scevgep61, align 4, !dbg !478
  %cmp1 = icmp sgt i32 %0, 0, !dbg !480
  br i1 %cmp1, label %L20, label %if.end, !dbg !481

if.end:                                           ; preds = %for.body
  %uglygep44 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !482
  %uglygep4445 = bitcast i8* %uglygep44 to i32*
  %scevgep46 = getelementptr i32, i32* %uglygep4445, i32 32000, !dbg !482
  %1 = load i32, i32* %scevgep46, align 4, !dbg !482
  %uglygep53 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !483
  %uglygep5354 = bitcast i8* %uglygep53 to i32*
  %scevgep55 = getelementptr i32, i32* %uglygep5354, i32 32000, !dbg !483
  %2 = load i32, i32* %scevgep55, align 4, !dbg !483
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv, !dbg !484
  %uglygep4748 = bitcast i8* %uglygep47 to i32*
  %scevgep49 = getelementptr i32, i32* %uglygep4748, i32 32000, !dbg !484
  %3 = load i32, i32* %scevgep49, align 4, !dbg !484
  %mul = mul i32 %3, %2, !dbg !485
  %add = sub i32 %mul, %1, !dbg !486
  store i32 %add, i32* %scevgep46, align 4, !dbg !487
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !488
  %uglygep37 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep37, i32 32000, !dbg !488
  %.pre35 = load i32, i32* %scevgep, align 4, !dbg !488
  br label %L30, !dbg !489

L20:                                              ; preds = %for.body
  call void @llvm.dbg.label(metadata !471), !dbg !490
  %uglygep38 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !491
  %uglygep3839 = bitcast i8* %uglygep38 to i32*
  %scevgep40 = getelementptr i32, i32* %uglygep3839, i32 32000, !dbg !491
  %4 = load i32, i32* %scevgep40, align 4, !dbg !491
  %uglygep56 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !492
  %uglygep5657 = bitcast i8* %uglygep56 to i32*
  %scevgep58 = getelementptr i32, i32* %uglygep5657, i32 32000, !dbg !492
  %5 = load i32, i32* %scevgep58, align 4, !dbg !492
  %uglygep50 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv, !dbg !493
  %uglygep5051 = bitcast i8* %uglygep50 to i32*
  %scevgep52 = getelementptr i32, i32* %uglygep5051, i32 32000, !dbg !493
  %6 = load i32, i32* %scevgep52, align 4, !dbg !493
  %mul10 = mul i32 %6, %5, !dbg !494
  %add11 = sub i32 %mul10, %4, !dbg !495
  store i32 %add11, i32* %scevgep40, align 4, !dbg !496
  %uglygep41 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !497
  %uglygep4142 = bitcast i8* %uglygep41 to i32*
  %scevgep43 = getelementptr i32, i32* %uglygep4142, i32 32000, !dbg !497
  %.pre = load i32, i32* %scevgep43, align 4, !dbg !497
  br label %L30, !dbg !498

L30:                                              ; preds = %L20, %if.end
  %7 = phi i32 [ %5, %L20 ], [ %2, %if.end ], !dbg !499
  %8 = phi i32 [ %add11, %L20 ], [ %.pre35, %if.end ], !dbg !488
  %9 = phi i32 [ %.pre, %L20 ], [ %add, %if.end ], !dbg !497
  call void @llvm.dbg.label(metadata !474), !dbg !500
  %mul16 = mul i32 %7, %8, !dbg !501
  %add17 = add i32 %mul16, %9, !dbg !502
  %sunkaddr = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !503
  %sunkaddr62 = getelementptr i8, i8* %sunkaddr, i32 128000, !dbg !503
  %10 = bitcast i8* %sunkaddr62 to i32*, !dbg !503
  store i32 %add17, i32* %10, align 4, !dbg !503
  call void @llvm.dbg.value(metadata i32 undef, metadata !469, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !475
  %lsr.iv.next = add nsw i32 %lsr.iv, 4, !dbg !504
  %exitcond = icmp eq i32 %lsr.iv.next, 0, !dbg !504
  br i1 %exitcond, label %for.cond.cleanup, label %for.body, !dbg !476, !llvm.loop !505

; uselistorder directives
  uselistorder i32* %scevgep40, { 1, 0 }
  uselistorder i32* %scevgep46, { 1, 0 }
  uselistorder i32 %lsr.iv, { 10, 0, 7, 4, 2, 8, 9, 5, 3, 6, 1 }
}

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex33() local_unnamed_addr #0 !dbg !507 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !509, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata i32 0, metadata !510, metadata !DIExpression()), !dbg !517
  br label %vector.body, !dbg !518

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !519
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %5, %vector.body ]
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !520
  %uglygep52 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep52, i32 8000, !dbg !520
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !520
  %0 = icmp slt <4 x i32> %wide.load, <i32 1, i32 1, i32 1, i32 1>, !dbg !522
  %uglygep53 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !523
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %scevgep55 = getelementptr <4 x i32>, <4 x i32>* %uglygep5354, i32 8000, !dbg !523
  %wide.load38 = load <4 x i32>, <4 x i32>* %scevgep55, align 16, !dbg !523
  %uglygep56 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !524
  %uglygep5657 = bitcast i8* %uglygep56 to <4 x i32>*
  %scevgep58 = getelementptr <4 x i32>, <4 x i32>* %uglygep5657, i32 8000, !dbg !524
  %wide.load39 = load <4 x i32>, <4 x i32>* %scevgep58, align 16, !dbg !524
  %uglygep59 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv, !dbg !525
  %uglygep5960 = bitcast i8* %uglygep59 to <4 x i32>*
  %scevgep61 = getelementptr <4 x i32>, <4 x i32>* %uglygep5960, i32 8000, !dbg !525
  %wide.load40 = load <4 x i32>, <4 x i32>* %scevgep61, align 16, !dbg !525
  %1 = mul <4 x i32> %wide.load40, %wide.load39, !dbg !526
  %uglygep62 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !527
  %uglygep6263 = bitcast i8* %uglygep62 to <4 x i32>*
  %scevgep64 = getelementptr <4 x i32>, <4 x i32>* %uglygep6263, i32 8000, !dbg !527
  %wide.load41 = load <4 x i32>, <4 x i32>* %scevgep64, align 16, !dbg !527
  %predphi48.v = select <4 x i1> %0, <4 x i32> %wide.load38, <4 x i32> %wide.load41
  %predphi48 = sub <4 x i32> %1, %predphi48.v
  %2 = mul <4 x i32> %wide.load39, %wide.load41, !dbg !528
  %3 = add <4 x i32> %predphi48, %vec.phi, !dbg !529
  %4 = add <4 x i32> %3, %wide.load38, !dbg !530
  %5 = add <4 x i32> %4, %2, !dbg !531
  %lsr.iv.next = add nsw i32 %lsr.iv, 16, !dbg !519
  %6 = icmp eq i32 %lsr.iv.next, 0, !dbg !519
  br i1 %6, label %middle.block, label %vector.body, !dbg !519, !llvm.loop !532

middle.block:                                     ; preds = %vector.body
  %rdx.shuf = shufflevector <4 x i32> %5, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !518
  %bin.rdx = add <4 x i32> %5, %rdx.shuf, !dbg !518
  %rdx.shuf49 = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !518
  %bin.rdx50 = add <4 x i32> %bin.rdx, %rdx.shuf49, !dbg !518
  %7 = extractelement <4 x i32> %bin.rdx50, i32 0, !dbg !518
  call void @llvm.dbg.value(metadata i32 %7, metadata !509, metadata !DIExpression()), !dbg !516
  ret i32 %7, !dbg !534

; uselistorder directives
  uselistorder <4 x i32> %wide.load41, { 1, 0 }
  uselistorder <4 x i32> %wide.load38, { 1, 0 }
  uselistorder i32 %lsr.iv, { 5, 0, 1, 2, 3, 4 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex13() local_unnamed_addr #1 !dbg !535 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !537, metadata !DIExpression()), !dbg !543
  br label %for.body, !dbg !544

for.cond.cleanup:                                 ; preds = %L30
  ret i32 0, !dbg !545

for.body:                                         ; preds = %L30, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %L30 ], [ -128000, %entry ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !537, metadata !DIExpression()), !dbg !543
  %uglygep78 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !546
  %uglygep7879 = bitcast i8* %uglygep78 to i32*
  %scevgep80 = getelementptr i32, i32* %uglygep7879, i32 32000, !dbg !546
  %0 = load i32, i32* %scevgep80, align 4, !dbg !546
  %cmp1 = icmp sgt i32 %0, 0, !dbg !548
  br i1 %cmp1, label %L20, label %if.end, !dbg !549

if.end:                                           ; preds = %for.body
  %uglygep69 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !550
  %uglygep6970 = bitcast i8* %uglygep69 to i32*
  %scevgep71 = getelementptr i32, i32* %uglygep6970, i32 32000, !dbg !550
  %1 = load i32, i32* %scevgep71, align 4, !dbg !550
  %uglygep54 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !551
  %uglygep5455 = bitcast i8* %uglygep54 to i32*
  %scevgep56 = getelementptr i32, i32* %uglygep5455, i32 32000, !dbg !551
  %2 = load i32, i32* %scevgep56, align 4, !dbg !551
  %mul = mul i32 %2, %2, !dbg !552
  %add = sub i32 %mul, %1, !dbg !553
  store i32 %add, i32* %scevgep71, align 4, !dbg !554
  %cmp8 = icmp sgt i32 %add, %0, !dbg !555
  br i1 %cmp8, label %if.end10, label %if.end.L30_crit_edge, !dbg !557

if.end.L30_crit_edge:                             ; preds = %if.end
  %uglygep57 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !558
  %uglygep5758 = bitcast i8* %uglygep57 to i32*
  %scevgep59 = getelementptr i32, i32* %uglygep5758, i32 32000, !dbg !558
  %.pre50 = load i32, i32* %scevgep59, align 4, !dbg !558
  br label %L30, !dbg !557

if.end10:                                         ; preds = %if.end
  %uglygep72 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv, !dbg !559
  %uglygep7273 = bitcast i8* %uglygep72 to i32*
  %scevgep74 = getelementptr i32, i32* %uglygep7273, i32 32000, !dbg !559
  %3 = load i32, i32* %scevgep74, align 4, !dbg !559
  %mul13 = mul i32 %3, %2, !dbg !560
  %uglygep60 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !561
  %uglygep6061 = bitcast i8* %uglygep60 to i32*
  %scevgep62 = getelementptr i32, i32* %uglygep6061, i32 32000, !dbg !561
  %4 = load i32, i32* %scevgep62, align 4, !dbg !561
  %add15 = add i32 %4, %mul13, !dbg !561
  store i32 %add15, i32* %scevgep62, align 4, !dbg !561
  br label %L30, !dbg !562

L20:                                              ; preds = %for.body
  call void @llvm.dbg.label(metadata !539), !dbg !563
  %uglygep63 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !564
  %uglygep6364 = bitcast i8* %uglygep63 to i32*
  %scevgep65 = getelementptr i32, i32* %uglygep6364, i32 32000, !dbg !564
  %5 = load i32, i32* %scevgep65, align 4, !dbg !564
  %uglygep75 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv, !dbg !565
  %uglygep7576 = bitcast i8* %uglygep75 to i32*
  %scevgep77 = getelementptr i32, i32* %uglygep7576, i32 32000, !dbg !565
  %6 = load i32, i32* %scevgep77, align 4, !dbg !565
  %mul20 = mul i32 %6, %6, !dbg !566
  %add21 = sub i32 %mul20, %5, !dbg !567
  store i32 %add21, i32* %scevgep65, align 4, !dbg !568
  %uglygep66 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !569
  %uglygep6667 = bitcast i8* %uglygep66 to i32*
  %scevgep68 = getelementptr i32, i32* %uglygep6667, i32 32000, !dbg !569
  %.pre = load i32, i32* %scevgep68, align 4, !dbg !569
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !570
  %uglygep53 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep53, i32 32000, !dbg !570
  %.pre51 = load i32, i32* %scevgep, align 4, !dbg !570
  br label %L30, !dbg !571

L30:                                              ; preds = %if.end.L30_crit_edge, %L20, %if.end10
  %7 = phi i32 [ %2, %if.end.L30_crit_edge ], [ %.pre51, %L20 ], [ %2, %if.end10 ], !dbg !570
  %8 = phi i32 [ %.pre50, %if.end.L30_crit_edge ], [ %add21, %L20 ], [ %add15, %if.end10 ], !dbg !558
  %9 = phi i32 [ %add, %if.end.L30_crit_edge ], [ %.pre, %L20 ], [ %add, %if.end10 ], !dbg !569
  call void @llvm.dbg.label(metadata !542), !dbg !572
  %mul26 = mul i32 %7, %8, !dbg !573
  %add27 = add i32 %mul26, %9, !dbg !574
  %sunkaddr = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !575
  %sunkaddr81 = getelementptr i8, i8* %sunkaddr, i32 128000, !dbg !575
  %10 = bitcast i8* %sunkaddr81 to i32*, !dbg !575
  store i32 %add27, i32* %10, align 4, !dbg !575
  call void @llvm.dbg.value(metadata i32 undef, metadata !537, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !543
  %lsr.iv.next = add nsw i32 %lsr.iv, 4, !dbg !576
  %exitcond = icmp eq i32 %lsr.iv.next, 0, !dbg !576
  br i1 %exitcond, label %for.cond.cleanup, label %for.body, !dbg !544, !llvm.loop !577

; uselistorder directives
  uselistorder i32* %scevgep65, { 1, 0 }
  uselistorder i32* %scevgep62, { 1, 0 }
  uselistorder i32 %add, { 0, 1, 3, 2 }
  uselistorder i32* %scevgep71, { 1, 0 }
  uselistorder i32 %lsr.iv, { 11, 0, 10, 5, 2, 6, 7, 3, 8, 9, 4, 1 }
  uselistorder label %L30, { 1, 2, 0 }
}

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex34() local_unnamed_addr #0 !dbg !579 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !581, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i32 0, metadata !582, metadata !DIExpression()), !dbg !589
  br label %for.body, !dbg !590

for.cond.cleanup:                                 ; preds = %L30
  call void @llvm.dbg.value(metadata i32 %add27, metadata !581, metadata !DIExpression()), !dbg !588
  ret i32 %add27, !dbg !591

for.body:                                         ; preds = %L30, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %L30 ], [ -128000, %entry ]
  %sum.048 = phi i32 [ 0, %entry ], [ %add27, %L30 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !582, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 %sum.048, metadata !581, metadata !DIExpression()), !dbg !588
  %uglygep75 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !592
  %uglygep7576 = bitcast i8* %uglygep75 to i32*
  %scevgep77 = getelementptr i32, i32* %uglygep7576, i32 32000, !dbg !592
  %0 = load i32, i32* %scevgep77, align 4, !dbg !592
  %cmp1 = icmp sgt i32 %0, 0, !dbg !594
  br i1 %cmp1, label %L20, label %if.end, !dbg !595

if.end:                                           ; preds = %for.body
  %uglygep60 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !596
  %uglygep6061 = bitcast i8* %uglygep60 to i32*
  %scevgep62 = getelementptr i32, i32* %uglygep6061, i32 32000, !dbg !596
  %1 = load i32, i32* %scevgep62, align 4, !dbg !596
  %uglygep54 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !597
  %uglygep5455 = bitcast i8* %uglygep54 to i32*
  %scevgep56 = getelementptr i32, i32* %uglygep5455, i32 32000, !dbg !597
  %2 = load i32, i32* %scevgep56, align 4, !dbg !597
  %mul = mul i32 %2, %2, !dbg !598
  %add = sub i32 %mul, %1, !dbg !599
  %add5 = add i32 %add, %sum.048, !dbg !600
  call void @llvm.dbg.value(metadata i32 %add5, metadata !581, metadata !DIExpression()), !dbg !588
  %cmp8 = icmp sgt i32 %1, %0, !dbg !601
  br i1 %cmp8, label %if.end10, label %L30, !dbg !603

if.end10:                                         ; preds = %if.end
  %uglygep63 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv, !dbg !604
  %uglygep6364 = bitcast i8* %uglygep63 to i32*
  %scevgep65 = getelementptr i32, i32* %uglygep6364, i32 32000, !dbg !604
  %3 = load i32, i32* %scevgep65, align 4, !dbg !604
  %mul13 = mul i32 %3, %2, !dbg !605
  %add14 = add i32 %mul13, %add5, !dbg !606
  call void @llvm.dbg.value(metadata i32 %add14, metadata !581, metadata !DIExpression()), !dbg !588
  br label %L30, !dbg !607

L20:                                              ; preds = %for.body
  call void @llvm.dbg.label(metadata !584), !dbg !608
  %uglygep72 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !609
  %uglygep7273 = bitcast i8* %uglygep72 to i32*
  %scevgep74 = getelementptr i32, i32* %uglygep7273, i32 32000, !dbg !609
  %4 = load i32, i32* %scevgep74, align 4, !dbg !609
  %uglygep66 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv, !dbg !610
  %uglygep6667 = bitcast i8* %uglygep66 to i32*
  %scevgep68 = getelementptr i32, i32* %uglygep6667, i32 32000, !dbg !610
  %5 = load i32, i32* %scevgep68, align 4, !dbg !610
  %mul19 = mul i32 %5, %5, !dbg !611
  %add20 = sub i32 %sum.048, %4, !dbg !612
  %add21 = add i32 %add20, %mul19, !dbg !613
  call void @llvm.dbg.value(metadata i32 %add21, metadata !581, metadata !DIExpression()), !dbg !588
  %uglygep57 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !614
  %uglygep5758 = bitcast i8* %uglygep57 to i32*
  %scevgep59 = getelementptr i32, i32* %uglygep5758, i32 32000, !dbg !614
  %.pre = load i32, i32* %scevgep59, align 4, !dbg !614
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !615
  %uglygep53 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep53, i32 32000, !dbg !615
  %.pre51 = load i32, i32* %scevgep, align 4, !dbg !615
  br label %L30, !dbg !616

L30:                                              ; preds = %if.end, %L20, %if.end10
  %6 = phi i32 [ %.pre51, %L20 ], [ %2, %if.end ], [ %2, %if.end10 ], !dbg !615
  %7 = phi i32 [ %.pre, %L20 ], [ %1, %if.end ], [ %1, %if.end10 ], !dbg !614
  %sum.1 = phi i32 [ %add21, %L20 ], [ %add5, %if.end ], [ %add14, %if.end10 ], !dbg !617
  call void @llvm.dbg.value(metadata i32 %sum.1, metadata !581, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.label(metadata !587), !dbg !618
  %uglygep69 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !619
  %uglygep6970 = bitcast i8* %uglygep69 to i32*
  %scevgep71 = getelementptr i32, i32* %uglygep6970, i32 32000, !dbg !619
  %8 = load i32, i32* %scevgep71, align 4, !dbg !619
  %mul25 = mul i32 %6, %8, !dbg !620
  %add26 = add i32 %7, %sum.1, !dbg !621
  %add27 = add i32 %add26, %mul25, !dbg !622
  call void @llvm.dbg.value(metadata i32 %add27, metadata !581, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i32 undef, metadata !582, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !589
  %lsr.iv.next = add nsw i32 %lsr.iv, 4, !dbg !623
  %exitcond = icmp eq i32 %lsr.iv.next, 0, !dbg !623
  br i1 %exitcond, label %for.cond.cleanup, label %for.body, !dbg !590, !llvm.loop !624

; uselistorder directives
  uselistorder i32 %add5, { 1, 0 }
  uselistorder i32 %1, { 0, 1, 3, 2 }
  uselistorder i32 %lsr.iv, { 9, 2, 8, 6, 3, 1, 4, 7, 5, 0 }
  uselistorder label %L30, { 1, 2, 0 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex14() local_unnamed_addr #1 !dbg !626 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !628, metadata !DIExpression()), !dbg !630
  br label %vector.body, !dbg !631

vector.body:                                      ; preds = %pred.store.continue29, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %pred.store.continue29 ], [ 0, %entry ], !dbg !632
  %uglygep43 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !634
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep4344, align 16, !dbg !634
  %0 = icmp slt <4 x i32> %wide.load, zeroinitializer, !dbg !637
  %uglygep45 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !638
  %uglygep4546 = bitcast i8* %uglygep45 to <4 x i32>*
  %wide.load20 = load <4 x i32>, <4 x i32>* %uglygep4546, align 16, !dbg !638
  %1 = icmp sgt <4 x i32> %wide.load20, %wide.load, !dbg !641
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !642
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %wide.load21 = load <4 x i32>, <4 x i32>* %uglygep4748, align 16, !dbg !642
  %uglygep49 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv, !dbg !644
  %uglygep4950 = bitcast i8* %uglygep49 to <4 x i32>*
  %wide.load22 = load <4 x i32>, <4 x i32>* %uglygep4950, align 16, !dbg !644
  %2 = mul <4 x i32> %wide.load22, %wide.load21, !dbg !645
  %uglygep39 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !646
  %uglygep3940 = bitcast i8* %uglygep39 to <4 x i32>*
  %wide.load23 = load <4 x i32>, <4 x i32>* %uglygep3940, align 16, !dbg !646
  %3 = add <4 x i32> %wide.load23, %2, !dbg !646
  %4 = and <4 x i1> %1, %0, !dbg !646
  %5 = extractelement <4 x i1> %4, i32 0, !dbg !646
  br i1 %5, label %pred.store.if, label %pred.store.continue, !dbg !632

pred.store.if:                                    ; preds = %vector.body
  %6 = extractelement <4 x i32> %3, i32 0, !dbg !646
  %sunkaddr = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !646
  %7 = bitcast i8* %sunkaddr to i32*, !dbg !646
  store i32 %6, i32* %7, align 16, !dbg !646
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %8 = extractelement <4 x i1> %4, i32 1, !dbg !646
  br i1 %8, label %pred.store.if24, label %pred.store.continue25, !dbg !646

pred.store.if24:                                  ; preds = %pred.store.continue
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !646
  %uglygep31 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep31, i32 1, !dbg !646
  %9 = extractelement <4 x i32> %3, i32 1, !dbg !646
  store i32 %9, i32* %scevgep, align 4, !dbg !646
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue
  %10 = extractelement <4 x i1> %4, i32 2, !dbg !646
  br i1 %10, label %pred.store.if26, label %pred.store.continue27, !dbg !646

pred.store.if26:                                  ; preds = %pred.store.continue25
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !646
  %uglygep3233 = bitcast i8* %uglygep32 to i32*
  %scevgep34 = getelementptr i32, i32* %uglygep3233, i32 2, !dbg !646
  %11 = extractelement <4 x i32> %3, i32 2, !dbg !646
  store i32 %11, i32* %scevgep34, align 8, !dbg !646
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %12 = extractelement <4 x i1> %4, i32 3, !dbg !646
  br i1 %12, label %pred.store.if28, label %pred.store.continue29, !dbg !646

pred.store.if28:                                  ; preds = %pred.store.continue27
  %uglygep35 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !646
  %uglygep3536 = bitcast i8* %uglygep35 to i32*
  %scevgep37 = getelementptr i32, i32* %uglygep3536, i32 3, !dbg !646
  %13 = extractelement <4 x i32> %3, i32 3, !dbg !646
  store i32 %13, i32* %scevgep37, align 4, !dbg !646
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %lsr.iv.next = add nuw nsw i32 %lsr.iv, 16, !dbg !632
  %14 = icmp eq i32 %lsr.iv.next, 128000, !dbg !632
  br i1 %14, label %for.cond.cleanup, label %vector.body, !dbg !632, !llvm.loop !647

for.cond.cleanup:                                 ; preds = %pred.store.continue29
  ret i32 0, !dbg !649

; uselistorder directives
  uselistorder i32 %lsr.iv, { 9, 6, 7, 8, 0, 5, 1, 2, 3, 4 }
  uselistorder i32 3, { 3, 0, 4, 5, 6, 1, 2 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex15(i32 %x) local_unnamed_addr #1 !dbg !650 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !654, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i32 0, metadata !655, metadata !DIExpression()), !dbg !658
  %cmp17 = icmp sgt i32 %x, 0, !dbg !659
  br i1 %cmp17, label %for.body.us.preheader, label %for.body.preheader, !dbg !665

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !665

for.body.us.preheader:                            ; preds = %entry
  br label %for.body.us, !dbg !665

for.body.us:                                      ; preds = %for.body.us.preheader, %for.inc.us
  %lsr.iv = phi i32 [ -128000, %for.body.us.preheader ], [ %lsr.iv.next, %for.inc.us ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !655, metadata !DIExpression()), !dbg !658
  %uglygep78 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !666
  %uglygep7879 = bitcast i8* %uglygep78 to i32*
  %scevgep80 = getelementptr i32, i32* %uglygep7879, i32 32000, !dbg !666
  %0 = load i32, i32* %scevgep80, align 4, !dbg !666
  %uglygep75 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !667
  %uglygep7576 = bitcast i8* %uglygep75 to i32*
  %scevgep77 = getelementptr i32, i32* %uglygep7576, i32 32000, !dbg !667
  %1 = load i32, i32* %scevgep77, align 4, !dbg !667
  %cmp2.us = icmp sgt i32 %0, %1, !dbg !668
  br i1 %cmp2.us, label %if.then.us, label %if.else.us, !dbg !669

if.else.us:                                       ; preds = %for.body.us
  %uglygep72 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv, !dbg !670
  %uglygep7273 = bitcast i8* %uglygep72 to i32*
  %scevgep74 = getelementptr i32, i32* %uglygep7273, i32 32000, !dbg !670
  %2 = load i32, i32* %scevgep74, align 4, !dbg !670
  %mul14.us = mul i32 %2, %2, !dbg !671
  %add15.us = add i32 %mul14.us, %0, !dbg !672
  %sunkaddr = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !673
  %sunkaddr99 = getelementptr i8, i8* %sunkaddr, i32 128000, !dbg !673
  %3 = bitcast i8* %sunkaddr99 to i32*, !dbg !673
  store i32 %add15.us, i32* %3, align 4, !dbg !673
  %uglygep69 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !674
  %uglygep6970 = bitcast i8* %uglygep69 to i32*
  %scevgep71 = getelementptr i32, i32* %uglygep6970, i32 32000, !dbg !674
  %4 = load i32, i32* %scevgep71, align 4, !dbg !674
  %mul22.us = mul i32 %4, %4, !dbg !676
  %add23.us = add i32 %mul22.us, %0, !dbg !677
  %uglygep63 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !678
  %uglygep6364 = bitcast i8* %uglygep63 to i32*
  %scevgep65 = getelementptr i32, i32* %uglygep6364, i32 32000, !dbg !678
  store i32 %add23.us, i32* %scevgep65, align 4, !dbg !678
  br label %for.inc.us, !dbg !679

if.then.us:                                       ; preds = %for.body.us
  %uglygep66 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !680
  %uglygep6667 = bitcast i8* %uglygep66 to i32*
  %scevgep68 = getelementptr i32, i32* %uglygep6667, i32 32000, !dbg !680
  %5 = load i32, i32* %scevgep68, align 4, !dbg !680
  %mul.us = mul i32 %5, %1, !dbg !682
  %add.us = add i32 %mul.us, %0, !dbg !683
  %sunkaddr100 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !683
  %sunkaddr101 = getelementptr i8, i8* %sunkaddr100, i32 128000, !dbg !683
  %6 = bitcast i8* %sunkaddr101 to i32*, !dbg !683
  store i32 %add.us, i32* %6, align 4, !dbg !683
  %mul8.us = mul i32 %5, %5, !dbg !684
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !687
  %uglygep62 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep62, i32 32000, !dbg !687
  %7 = load i32, i32* %scevgep, align 4, !dbg !687
  %add10.us = add i32 %7, %mul8.us, !dbg !687
  store i32 %add10.us, i32* %scevgep, align 4, !dbg !687
  br label %for.inc.us, !dbg !688

for.inc.us:                                       ; preds = %if.then.us, %if.else.us
  call void @llvm.dbg.value(metadata i32 undef, metadata !655, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !658
  %lsr.iv.next = add nsw i32 %lsr.iv, 4, !dbg !689
  %exitcond = icmp eq i32 %lsr.iv.next, 0, !dbg !689
  br i1 %exitcond, label %for.cond.cleanup, label %for.body.us, !dbg !665, !llvm.loop !690

for.cond.cleanup:                                 ; preds = %for.inc, %for.inc.us
  ret i32 0, !dbg !692

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %lsr.iv81 = phi i32 [ -128000, %for.body.preheader ], [ %lsr.iv.next82, %for.inc ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !655, metadata !DIExpression()), !dbg !658
  %uglygep96 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv81, !dbg !666
  %uglygep9697 = bitcast i8* %uglygep96 to i32*
  %scevgep98 = getelementptr i32, i32* %uglygep9697, i32 32000, !dbg !666
  %8 = load i32, i32* %scevgep98, align 4, !dbg !666
  %uglygep93 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv81, !dbg !667
  %uglygep9394 = bitcast i8* %uglygep93 to i32*
  %scevgep95 = getelementptr i32, i32* %uglygep9394, i32 32000, !dbg !667
  %9 = load i32, i32* %scevgep95, align 4, !dbg !667
  %cmp2 = icmp sgt i32 %8, %9, !dbg !668
  br i1 %cmp2, label %if.then, label %if.else, !dbg !669

if.then:                                          ; preds = %for.body
  %uglygep90 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv81, !dbg !680
  %uglygep9091 = bitcast i8* %uglygep90 to i32*
  %scevgep92 = getelementptr i32, i32* %uglygep9091, i32 32000, !dbg !680
  %10 = load i32, i32* %scevgep92, align 4, !dbg !680
  %mul = mul i32 %10, %9, !dbg !682
  %add = add i32 %mul, %8, !dbg !683
  %sunkaddr102 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv81, !dbg !683
  %sunkaddr103 = getelementptr i8, i8* %sunkaddr102, i32 128000, !dbg !683
  %11 = bitcast i8* %sunkaddr103 to i32*, !dbg !683
  store i32 %add, i32* %11, align 4, !dbg !683
  %mul8 = mul i32 %10, %10, !dbg !684
  br label %for.inc, !dbg !688

if.else:                                          ; preds = %for.body
  %uglygep87 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv81, !dbg !670
  %uglygep8788 = bitcast i8* %uglygep87 to i32*
  %scevgep89 = getelementptr i32, i32* %uglygep8788, i32 32000, !dbg !670
  %12 = load i32, i32* %scevgep89, align 4, !dbg !670
  %mul14 = mul i32 %12, %12, !dbg !671
  %add15 = add i32 %mul14, %8, !dbg !672
  %sunkaddr104 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv81, !dbg !673
  %sunkaddr105 = getelementptr i8, i8* %sunkaddr104, i32 128000, !dbg !673
  %13 = bitcast i8* %sunkaddr105 to i32*, !dbg !673
  store i32 %add15, i32* %13, align 4, !dbg !673
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %mul8.sink = phi i32 [ %mul8, %if.then ], [ %mul14, %if.else ]
  %uglygep84 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv81, !dbg !693
  %uglygep8485 = bitcast i8* %uglygep84 to i32*
  %scevgep86 = getelementptr i32, i32* %uglygep8485, i32 32000, !dbg !693
  %14 = load i32, i32* %scevgep86, align 4, !dbg !693
  %add10 = add i32 %14, %mul8.sink, !dbg !693
  store i32 %add10, i32* %scevgep86, align 4, !dbg !693
  call void @llvm.dbg.value(metadata i32 undef, metadata !655, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !658
  %lsr.iv.next82 = add nsw i32 %lsr.iv81, 4, !dbg !689
  %exitcond55 = icmp eq i32 %lsr.iv.next82, 0, !dbg !689
  br i1 %exitcond55, label %for.cond.cleanup, label %for.body, !dbg !665, !llvm.loop !690

; uselistorder directives
  uselistorder i32 %10, { 2, 1, 0 }
  uselistorder i32 %8, { 1, 0, 2 }
  uselistorder i32 %lsr.iv81, { 7, 6, 0, 5, 1, 4, 3, 2 }
  uselistorder i32* %scevgep, { 1, 0 }
  uselistorder i32 %lsr.iv, { 9, 8, 0, 6, 7, 5, 1, 4, 3, 2 }
  uselistorder label %for.inc, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
  uselistorder label %for.body.us, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex36(i32 %x) local_unnamed_addr #0 !dbg !694 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !696, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i32 0, metadata !697, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i32 0, metadata !698, metadata !DIExpression()), !dbg !701
  %cmp14 = icmp sgt i32 %x, 0, !dbg !702
  br i1 %cmp14, label %for.body.us.preheader, label %for.body.preheader, !dbg !708

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !708

for.body.us.preheader:                            ; preds = %entry
  br label %for.body.us, !dbg !708

for.body.us:                                      ; preds = %for.body.us.preheader, %for.inc.us
  %lsr.iv = phi i32 [ -128000, %for.body.us.preheader ], [ %lsr.iv.next, %for.inc.us ]
  %sum.048.us = phi i32 [ %sum.1.us, %for.inc.us ], [ 0, %for.body.us.preheader ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !698, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i32 %sum.048.us, metadata !697, metadata !DIExpression()), !dbg !700
  %uglygep68 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !709
  %uglygep6869 = bitcast i8* %uglygep68 to i32*
  %scevgep70 = getelementptr i32, i32* %uglygep6869, i32 32000, !dbg !709
  %0 = load i32, i32* %scevgep70, align 4, !dbg !709
  %uglygep65 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !710
  %uglygep6566 = bitcast i8* %uglygep65 to i32*
  %scevgep67 = getelementptr i32, i32* %uglygep6566, i32 32000, !dbg !710
  %1 = load i32, i32* %scevgep67, align 4, !dbg !710
  %cmp2.us = icmp sgt i32 %0, %1, !dbg !711
  br i1 %cmp2.us, label %if.then.us, label %if.else.us, !dbg !712

if.else.us:                                       ; preds = %for.body.us
  %uglygep62 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv, !dbg !713
  %uglygep6263 = bitcast i8* %uglygep62 to i32*
  %scevgep64 = getelementptr i32, i32* %uglygep6263, i32 32000, !dbg !713
  %2 = load i32, i32* %scevgep64, align 4, !dbg !713
  %mul12.us = mul i32 %2, %2, !dbg !714
  %add13.us = add i32 %mul12.us, %0, !dbg !715
  call void @llvm.dbg.value(metadata i32 %add13.us, metadata !697, metadata !DIExpression()), !dbg !700
  %uglygep59 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !716
  %uglygep5960 = bitcast i8* %uglygep59 to i32*
  %scevgep61 = getelementptr i32, i32* %uglygep5960, i32 32000, !dbg !716
  %3 = load i32, i32* %scevgep61, align 4, !dbg !716
  %mul19.us = mul i32 %3, %3, !dbg !718
  %add20.us = add i32 %add13.us, %0, !dbg !719
  %add21.us = add i32 %add20.us, %mul19.us, !dbg !720
  call void @llvm.dbg.value(metadata i32 %add21.us, metadata !697, metadata !DIExpression()), !dbg !700
  br label %for.inc.us, !dbg !721

if.then.us:                                       ; preds = %for.body.us
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !722
  %uglygep58 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep58, i32 32000, !dbg !722
  %4 = load i32, i32* %scevgep, align 4, !dbg !722
  call void @llvm.dbg.value(metadata i32 undef, metadata !697, metadata !DIExpression()), !dbg !700
  %reass.add.us = add i32 %4, %1
  %reass.mul.us = mul i32 %reass.add.us, %4
  %add8.us = add i32 %reass.mul.us, %sum.048.us, !dbg !724
  call void @llvm.dbg.value(metadata i32 %add8.us, metadata !697, metadata !DIExpression()), !dbg !700
  br label %for.inc.us, !dbg !727

for.inc.us:                                       ; preds = %if.then.us, %if.else.us
  %sum.1.us = phi i32 [ %add8.us, %if.then.us ], [ %add21.us, %if.else.us ], !dbg !728
  call void @llvm.dbg.value(metadata i32 %sum.1.us, metadata !697, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i32 undef, metadata !698, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !701
  %lsr.iv.next = add nsw i32 %lsr.iv, 4, !dbg !729
  %exitcond = icmp eq i32 %lsr.iv.next, 0, !dbg !729
  br i1 %exitcond, label %for.cond.cleanup, label %for.body.us, !dbg !708, !llvm.loop !730

for.cond.cleanup:                                 ; preds = %for.inc, %for.inc.us
  %sum.0.lcssa = phi i32 [ %sum.1.us, %for.inc.us ], [ %sum.1, %for.inc ], !dbg !700
  call void @llvm.dbg.value(metadata i32 %sum.0.lcssa, metadata !697, metadata !DIExpression()), !dbg !700
  ret i32 %sum.0.lcssa, !dbg !732

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %lsr.iv71 = phi i32 [ -128000, %for.body.preheader ], [ %lsr.iv.next72, %for.inc ]
  %sum.048 = phi i32 [ %sum.1, %for.inc ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !698, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i32 %sum.048, metadata !697, metadata !DIExpression()), !dbg !700
  %uglygep83 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv71, !dbg !709
  %uglygep8384 = bitcast i8* %uglygep83 to i32*
  %scevgep85 = getelementptr i32, i32* %uglygep8384, i32 32000, !dbg !709
  %5 = load i32, i32* %scevgep85, align 4, !dbg !709
  %uglygep80 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv71, !dbg !710
  %uglygep8081 = bitcast i8* %uglygep80 to i32*
  %scevgep82 = getelementptr i32, i32* %uglygep8081, i32 32000, !dbg !710
  %6 = load i32, i32* %scevgep82, align 4, !dbg !710
  %cmp2 = icmp sgt i32 %5, %6, !dbg !711
  br i1 %cmp2, label %if.then, label %if.else, !dbg !712

if.then:                                          ; preds = %for.body
  %uglygep77 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv71, !dbg !722
  %uglygep7778 = bitcast i8* %uglygep77 to i32*
  %scevgep79 = getelementptr i32, i32* %uglygep7778, i32 32000, !dbg !722
  %7 = load i32, i32* %scevgep79, align 4, !dbg !722
  call void @llvm.dbg.value(metadata i32 undef, metadata !697, metadata !DIExpression()), !dbg !700
  %reass.add = add i32 %7, %6
  %reass.mul = mul i32 %reass.add, %7
  %add8 = add i32 %reass.mul, %sum.048, !dbg !724
  call void @llvm.dbg.value(metadata i32 %add8, metadata !697, metadata !DIExpression()), !dbg !700
  br label %for.inc, !dbg !727

if.else:                                          ; preds = %for.body
  %uglygep74 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv71, !dbg !713
  %uglygep7475 = bitcast i8* %uglygep74 to i32*
  %scevgep76 = getelementptr i32, i32* %uglygep7475, i32 32000, !dbg !713
  %8 = load i32, i32* %scevgep76, align 4, !dbg !713
  %mul12 = mul i32 %8, %8, !dbg !714
  %add13 = add i32 %mul12, %5, !dbg !715
  call void @llvm.dbg.value(metadata i32 %add13, metadata !697, metadata !DIExpression()), !dbg !700
  %add26 = add i32 %add13, %mul12, !dbg !733
  call void @llvm.dbg.value(metadata i32 %add26, metadata !697, metadata !DIExpression()), !dbg !700
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %sum.1 = phi i32 [ %add8, %if.then ], [ %add26, %if.else ], !dbg !728
  call void @llvm.dbg.value(metadata i32 %sum.1, metadata !697, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i32 undef, metadata !698, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !701
  %lsr.iv.next72 = add nsw i32 %lsr.iv71, 4, !dbg !729
  %exitcond52 = icmp eq i32 %lsr.iv.next72, 0, !dbg !729
  br i1 %exitcond52, label %for.cond.cleanup, label %for.body, !dbg !708, !llvm.loop !730

; uselistorder directives
  uselistorder i32 %lsr.iv71, { 4, 3, 2, 1, 0 }
  uselistorder i32 %lsr.iv, { 5, 4, 3, 2, 1, 0 }
  uselistorder label %for.inc, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
  uselistorder label %for.body.us, { 1, 0 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex17() local_unnamed_addr #1 !dbg !735 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 0, metadata !737, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 0, metadata !738, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 0, metadata !741, metadata !DIExpression()), !dbg !748
  br label %vector.ph, !dbg !749

vector.ph:                                        ; preds = %entry, %middle.block
  %lsr.iv = phi [256 x [256 x i32]]* [ @aa, %entry ], [ %14, %middle.block ]
  %i.047 = phi i32 [ 0, %entry ], [ %inc12, %middle.block ]
  %xindex.046 = phi i32 [ 0, %entry ], [ %13, %middle.block ]
  %sum.045 = phi i32 [ 0, %entry ], [ %12, %middle.block ]
  %yindex.044 = phi i32 [ 0, %entry ], [ %11, %middle.block ]
  call void @llvm.dbg.value(metadata i32 %i.047, metadata !741, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i32 %xindex.046, metadata !737, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %sum.045, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %yindex.044, metadata !738, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 0, metadata !743, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %xindex.046, metadata !737, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %sum.045, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %yindex.044, metadata !738, metadata !DIExpression()), !dbg !747
  %broadcast.splatinsert = insertelement <4 x i32> undef, i32 %i.047, i32 0, !dbg !751
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !751
  %0 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %xindex.046, i32 0, !dbg !751
  %1 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %sum.045, i32 0, !dbg !751
  %2 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %yindex.044, i32 0, !dbg !751
  br label %vector.body, !dbg !751

vector.body:                                      ; preds = %vector.body, %vector.ph
  %lsr.iv73 = phi i32 [ %lsr.iv.next, %vector.body ], [ -256, %vector.ph ], !dbg !752
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %0, %vector.ph ], [ %9, %vector.body ]
  %vec.phi49 = phi <4 x i32> [ %1, %vector.ph ], [ %7, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ %2, %vector.ph ], [ %5, %vector.body ]
  %scevgep74 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i32 0, i32 0, i32 %lsr.iv73, !dbg !754
  %scevgep7475 = bitcast i32* %scevgep74 to <4 x i32>*
  %scevgep76 = getelementptr <4 x i32>, <4 x i32>* %scevgep7475, i32 64, !dbg !754
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep76, align 16, !dbg !754
  %3 = icmp sgt <4 x i32> %wide.load, zeroinitializer, !dbg !757
  %4 = select <4 x i1> %3, <4 x i32> %vec.ind, <4 x i32> zeroinitializer, !dbg !758
  %5 = add <4 x i32> %4, %vec.phi50, !dbg !758
  %6 = select <4 x i1> %3, <4 x i32> %wide.load, <4 x i32> zeroinitializer, !dbg !758
  %7 = add <4 x i32> %6, %vec.phi49, !dbg !758
  %8 = select <4 x i1> %3, <4 x i32> %broadcast.splat, <4 x i32> zeroinitializer, !dbg !758
  %9 = add <4 x i32> %8, %vec.phi, !dbg !758
  %vec.ind.next = add <4 x i32> %vec.ind, <i32 4, i32 4, i32 4, i32 4>
  %lsr.iv.next = add nsw i32 %lsr.iv73, 4, !dbg !752
  %10 = icmp eq i32 %lsr.iv.next, 0, !dbg !752
  br i1 %10, label %middle.block, label %vector.body, !dbg !752, !llvm.loop !759

middle.block:                                     ; preds = %vector.body
  %rdx.shuf58 = shufflevector <4 x i32> %5, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !751
  %bin.rdx59 = add <4 x i32> %5, %rdx.shuf58, !dbg !751
  %rdx.shuf60 = shufflevector <4 x i32> %bin.rdx59, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !751
  %bin.rdx61 = add <4 x i32> %bin.rdx59, %rdx.shuf60, !dbg !751
  %11 = extractelement <4 x i32> %bin.rdx61, i32 0, !dbg !751
  %rdx.shuf53 = shufflevector <4 x i32> %7, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !751
  %bin.rdx54 = add <4 x i32> %7, %rdx.shuf53, !dbg !751
  %rdx.shuf55 = shufflevector <4 x i32> %bin.rdx54, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !751
  %bin.rdx56 = add <4 x i32> %bin.rdx54, %rdx.shuf55, !dbg !751
  %12 = extractelement <4 x i32> %bin.rdx56, i32 0, !dbg !751
  %rdx.shuf = shufflevector <4 x i32> %9, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !751
  %bin.rdx = add <4 x i32> %9, %rdx.shuf, !dbg !751
  %rdx.shuf51 = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !751
  %bin.rdx52 = add <4 x i32> %bin.rdx, %rdx.shuf51, !dbg !751
  %13 = extractelement <4 x i32> %bin.rdx52, i32 0, !dbg !751
  call void @llvm.dbg.value(metadata i32 %11, metadata !738, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %12, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %13, metadata !737, metadata !DIExpression()), !dbg !747
  %inc12 = add nuw nsw i32 %i.047, 1, !dbg !761
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !741, metadata !DIExpression()), !dbg !748
  %scevgep = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i32 0, i32 1, i32 0, !dbg !749
  %14 = bitcast i32* %scevgep to [256 x [256 x i32]]*, !dbg !749
  %exitcond48 = icmp eq i32 %inc12, 256, !dbg !762
  br i1 %exitcond48, label %for.cond.cleanup, label %vector.ph, !dbg !749, !llvm.loop !763

for.cond.cleanup:                                 ; preds = %middle.block
  call void @llvm.dbg.value(metadata i32 %11, metadata !738, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %12, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %13, metadata !737, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %11, metadata !738, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %12, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %13, metadata !737, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %11, metadata !738, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %12, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %13, metadata !737, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %11, metadata !738, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %12, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %13, metadata !737, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 undef, metadata !740, metadata !DIExpression()), !dbg !747
  %add17 = add i32 %11, 2, !dbg !765
  %add18 = add i32 %add17, %12, !dbg !766
  %add19 = add i32 %add18, %13, !dbg !767
  store i32 %add19, i32* @temp, align 4, !dbg !768
  ret i32 0, !dbg !769

; uselistorder directives
  uselistorder <4 x i32> %vec.ind, { 1, 0 }
  uselistorder i32 %lsr.iv73, { 1, 0 }
  uselistorder i32 %i.047, { 1, 0 }
  uselistorder [256 x [256 x i32]]* %lsr.iv, { 1, 0 }
  uselistorder i32 256, { 2, 3, 4, 6, 5, 0, 7, 8, 1 }
  uselistorder i32 64, { 0, 3, 1, 2 }
  uselistorder i32 -256, { 0, 3, 2, 1 }
  uselistorder label %vector.ph, { 1, 0 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex18() local_unnamed_addr #1 !dbg !770 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !772, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i32 0, metadata !773, metadata !DIExpression()), !dbg !776
  br label %vector.body, !dbg !777

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !778
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %4, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %entry ], [ %5, %vector.body ]
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !780
  %uglygep20 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep20, i32 8000, !dbg !780
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !780
  %scevgep21 = getelementptr <4 x i32>, <4 x i32>* %uglygep20, i32 8001, !dbg !780
  %wide.load13 = load <4 x i32>, <4 x i32>* %scevgep21, align 16, !dbg !780
  %0 = icmp sgt <4 x i32> %wide.load, zeroinitializer, !dbg !783
  %1 = icmp sgt <4 x i32> %wide.load13, zeroinitializer, !dbg !783
  %2 = select <4 x i1> %0, <4 x i32> %wide.load, <4 x i32> zeroinitializer, !dbg !784
  %3 = select <4 x i1> %1, <4 x i32> %wide.load13, <4 x i32> zeroinitializer, !dbg !784
  %4 = add <4 x i32> %2, %vec.phi, !dbg !784
  %5 = add <4 x i32> %3, %vec.phi12, !dbg !784
  %lsr.iv.next = add nsw i32 %lsr.iv, 32, !dbg !778
  %6 = icmp eq i32 %lsr.iv.next, 0, !dbg !778
  br i1 %6, label %middle.block, label %vector.body, !dbg !778, !llvm.loop !785

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %5, %4, !dbg !777
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !777
  %bin.rdx14 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !777
  %rdx.shuf15 = shufflevector <4 x i32> %bin.rdx14, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !777
  %bin.rdx16 = add <4 x i32> %bin.rdx14, %rdx.shuf15, !dbg !777
  %7 = extractelement <4 x i32> %bin.rdx16, i32 0, !dbg !777
  call void @llvm.dbg.value(metadata i32 %7, metadata !772, metadata !DIExpression()), !dbg !775
  store i32 %7, i32* @temp, align 4, !dbg !787
  ret i32 0, !dbg !788

; uselistorder directives
  uselistorder i32 %lsr.iv, { 1, 0 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex20(i32 %t) local_unnamed_addr #1 !dbg !789 {
entry:
  call void @llvm.dbg.value(metadata i32 %t, metadata !791, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 -2, metadata !792, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 -1, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 0, metadata !795, metadata !DIExpression()), !dbg !799
  br label %for.body, !dbg !800

for.cond:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 undef, metadata !795, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !799
  call void @llvm.dbg.value(metadata i32 undef, metadata !795, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !799
  %lsr.iv.next = add nsw i32 %lsr.iv, 4, !dbg !801
  %exitcond = icmp eq i32 %lsr.iv.next, 0, !dbg !801
  br i1 %exitcond, label %cleanup3, label %for.body, !dbg !800, !llvm.loop !803

for.body:                                         ; preds = %for.cond, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %for.cond ], [ -128000, %entry ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !795, metadata !DIExpression()), !dbg !799
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !805
  %uglygep16 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep16, i32 32000, !dbg !805
  %0 = load i32, i32* %scevgep, align 4, !dbg !805
  %cmp1 = icmp sgt i32 %0, %t, !dbg !808
  call void @llvm.dbg.value(metadata i32 undef, metadata !795, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !799
  br i1 %cmp1, label %cleanup3, label %for.cond, !dbg !809

cleanup3:                                         ; preds = %for.cond, %for.body
  %value.0 = phi i32 [ -1, %for.cond ], [ %0, %for.body ], !dbg !798
  call void @llvm.dbg.value(metadata i32 undef, metadata !792, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 %value.0, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.label(metadata !797), !dbg !810
  call void @llvm.dbg.value(metadata i32 undef, metadata !794, metadata !DIExpression()), !dbg !798
  store i32 %value.0, i32* @temp, align 4, !dbg !811
  ret i32 0, !dbg !812

; uselistorder directives
  uselistorder i32 %lsr.iv.next, { 1, 0 }
  uselistorder void (metadata)* @llvm.dbg.label, { 4, 5, 6, 7, 8, 9, 10, 0, 1, 2, 3, 11, 12, 13, 14 }
  uselistorder label %cleanup3, { 1, 0 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex21() local_unnamed_addr #1 !dbg !813 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i32 0, i32 0), align 16, !dbg !819
  call void @llvm.dbg.value(metadata i32 %0, metadata !815, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i32 0, metadata !816, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i32 undef, metadata !816, metadata !DIExpression()), !dbg !820
  %1 = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !822
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !822
  br label %for.body, !dbg !825

for.cond.cleanup:                                 ; preds = %for.body
  ret i32 0, !dbg !826

for.body:                                         ; preds = %entry, %for.body
  %lsr.iv = phi i32 [ -5, %entry ], [ %lsr.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !817, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i32 undef, metadata !816, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !820
  %3 = shl nsw i32 %lsr.iv, 2, !dbg !827
  %uglygep62 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %3, !dbg !827
  %uglygep6263 = bitcast i8* %uglygep62 to <4 x i32>*
  %scevgep64 = getelementptr <4 x i32>, <4 x i32>* %uglygep6263, i32 1, !dbg !827
  %scevgep6465 = bitcast <4 x i32>* %scevgep64 to i8*
  %uglygep66 = getelementptr i8, i8* %scevgep6465, i32 4, !dbg !827
  %uglygep6667 = bitcast i8* %uglygep66 to <4 x i32>*
  %4 = load <4 x i32>, <4 x i32>* %uglygep6667, align 4, !dbg !827
  %5 = mul <4 x i32> %4, %2, !dbg !822
  %6 = shl nsw i32 %lsr.iv, 2, !dbg !828
  %uglygep53 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %6, !dbg !828
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %scevgep55 = getelementptr <4 x i32>, <4 x i32>* %uglygep5354, i32 1, !dbg !828
  %scevgep5556 = bitcast <4 x i32>* %scevgep55 to i8*
  %uglygep57 = getelementptr i8, i8* %scevgep5556, i32 4, !dbg !828
  %uglygep5758 = bitcast i8* %uglygep57 to <4 x i32>*
  %7 = load <4 x i32>, <4 x i32>* %uglygep5758, align 4, !dbg !828
  %8 = add <4 x i32> %7, %5, !dbg !828
  %9 = shl nsw i32 %lsr.iv, 2, !dbg !828
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %9, !dbg !828
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %scevgep49 = getelementptr <4 x i32>, <4 x i32>* %uglygep4748, i32 1, !dbg !828
  %scevgep4950 = bitcast <4 x i32>* %scevgep49 to i8*
  %uglygep51 = getelementptr i8, i8* %scevgep4950, i32 4, !dbg !828
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  store <4 x i32> %8, <4 x i32>* %uglygep5152, align 4, !dbg !828
  %10 = shl nsw i32 %lsr.iv, 2, !dbg !829
  %uglygep59 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %10, !dbg !829
  %uglygep5960 = bitcast i8* %uglygep59 to i32*
  %scevgep61 = getelementptr i32, i32* %uglygep5960, i32 9, !dbg !829
  %11 = load i32, i32* %scevgep61, align 4, !dbg !829
  %mul22 = mul i32 %11, %0, !dbg !830
  %12 = shl nsw i32 %lsr.iv, 2, !dbg !831
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %12, !dbg !831
  %uglygep46 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep46, i32 9, !dbg !831
  %13 = load i32, i32* %scevgep, align 4, !dbg !831
  %add25 = add i32 %13, %mul22, !dbg !831
  store i32 %add25, i32* %scevgep, align 4, !dbg !831
  call void @llvm.dbg.value(metadata i32 undef, metadata !817, metadata !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value)), !dbg !821
  call void @llvm.dbg.value(metadata i32 undef, metadata !816, metadata !DIExpression()), !dbg !820
  %lsr.iv.next = add nsw i32 %lsr.iv, 5, !dbg !832
  %cmp = icmp ult i32 %lsr.iv.next, 31995, !dbg !832
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !825, !llvm.loop !833

; uselistorder directives
  uselistorder i32* %scevgep, { 1, 0 }
  uselistorder i32 %lsr.iv, { 5, 4, 1, 3, 2, 0 }
  uselistorder i32 %0, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex37() local_unnamed_addr #0 !dbg !835 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !837, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i32 0, metadata !838, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i32 0, metadata !839, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i32 undef, metadata !838, metadata !DIExpression()), !dbg !841
  br label %for.body, !dbg !843

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %op.extra, metadata !837, metadata !DIExpression()), !dbg !841
  ret i32 %op.extra, !dbg !844

for.body:                                         ; preds = %entry, %for.body
  %lsr.iv = phi i32 [ -5, %entry ], [ %lsr.iv.next, %for.body ]
  %sum.028 = phi i32 [ 0, %entry ], [ %op.extra, %for.body ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !839, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i32 %sum.028, metadata !837, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i32 undef, metadata !838, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !841
  %0 = shl nsw i32 %lsr.iv, 2, !dbg !845
  %uglygep33 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %0, !dbg !845
  %uglygep3334 = bitcast i8* %uglygep33 to <4 x i32>*
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %uglygep3334, i32 1, !dbg !845
  %scevgep3536 = bitcast <4 x i32>* %scevgep35 to i8*
  %uglygep37 = getelementptr i8, i8* %scevgep3536, i32 4, !dbg !845
  %uglygep3738 = bitcast i8* %uglygep37 to <4 x i32>*
  %1 = load <4 x i32>, <4 x i32>* %uglygep3738, align 4, !dbg !845
  call void @llvm.dbg.value(metadata i32 undef, metadata !837, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i32 undef, metadata !837, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i32 undef, metadata !837, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i32 undef, metadata !837, metadata !DIExpression()), !dbg !841
  %2 = shl nsw i32 %lsr.iv, 2, !dbg !848
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %2, !dbg !848
  %uglygep32 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep32, i32 9, !dbg !848
  %3 = load i32, i32* %scevgep, align 4, !dbg !848
  %rdx.shuf = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !849
  %bin.rdx = add <4 x i32> %1, %rdx.shuf, !dbg !849
  %rdx.shuf30 = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !849
  %bin.rdx31 = add <4 x i32> %bin.rdx, %rdx.shuf30, !dbg !849
  %4 = extractelement <4 x i32> %bin.rdx31, i32 0, !dbg !849
  %5 = add i32 %4, %3, !dbg !848
  %op.extra = add i32 %5, %sum.028, !dbg !850
  call void @llvm.dbg.value(metadata i32 %op.extra, metadata !837, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i32 undef, metadata !839, metadata !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value)), !dbg !842
  call void @llvm.dbg.value(metadata i32 undef, metadata !838, metadata !DIExpression()), !dbg !841
  %lsr.iv.next = add nsw i32 %lsr.iv, 5, !dbg !851
  %cmp = icmp ult i32 %lsr.iv.next, 31995, !dbg !851
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !843, !llvm.loop !852

; uselistorder directives
  uselistorder i32 %lsr.iv, { 2, 1, 0 }
  uselistorder i32 9, { 0, 2, 1 }
  uselistorder i32 2, { 1, 0, 6, 3, 5, 4, 2, 25, 21, 7, 22, 8, 10, 9, 12, 11, 15, 13, 14, 23, 24, 16, 17, 18, 19, 20 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex22() local_unnamed_addr #1 !dbg !854 {
entry:
  store i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i32 0, i32 4), i32** @xx, align 4, !dbg !860
  call void @llvm.dbg.value(metadata i32 0, metadata !856, metadata !DIExpression()), !dbg !861
  %0 = load i32, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i32 0, i32 8), align 16, !dbg !862
  %1 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i32 0, i32 0), align 16, !dbg !865
  %add225 = add i32 %1, %0, !dbg !866
  store i32 %add225, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i32 0, i32 4), align 16, !dbg !867
  call void @llvm.dbg.value(metadata i32 1, metadata !856, metadata !DIExpression()), !dbg !861
  br label %for.body.for.body_crit_edge, !dbg !868

for.cond.cleanup:                                 ; preds = %for.body.for.body_crit_edge
  store i32 0, i32* @temp, align 4, !dbg !869
  call void @llvm.dbg.value(metadata i32 0, metadata !858, metadata !DIExpression()), !dbg !870
  %2 = load i32*, i32** @xx, align 4, !dbg !871
  br label %for.body8, !dbg !874

for.body.for.body_crit_edge:                      ; preds = %entry, %for.body.for.body_crit_edge
  %lsr.iv28 = phi i32 [ -127996, %entry ], [ %lsr.iv.next29, %for.body.for.body_crit_edge ]
  %.pre = load i32*, i32** @xx, align 4, !dbg !875
  %.pre37 = bitcast i32* %.pre to i8*
  call void @llvm.dbg.value(metadata i32 undef, metadata !856, metadata !DIExpression()), !dbg !861
  %uglygep31 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i32 %lsr.iv28, !dbg !862
  %uglygep3132 = bitcast i8* %uglygep31 to i32*
  %scevgep33 = getelementptr i32, i32* %uglygep3132, i32 32008, !dbg !862
  %3 = load i32, i32* %scevgep33, align 4, !dbg !862
  %uglygep34 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv28, !dbg !865
  %uglygep3435 = bitcast i8* %uglygep34 to i32*
  %scevgep36 = getelementptr i32, i32* %uglygep3435, i32 32000, !dbg !865
  %4 = load i32, i32* %scevgep36, align 4, !dbg !865
  %add2 = add i32 %4, %3, !dbg !866
  %uglygep38 = getelementptr i8, i8* %.pre37, i32 %lsr.iv28, !dbg !867
  %uglygep3839 = bitcast i8* %uglygep38 to i32*
  %scevgep40 = getelementptr i32, i32* %uglygep3839, i32 32000, !dbg !867
  store i32 %add2, i32* %scevgep40, align 4, !dbg !867
  call void @llvm.dbg.value(metadata i32 undef, metadata !856, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !861
  %lsr.iv.next29 = add nsw i32 %lsr.iv28, 4, !dbg !876
  %exitcond24 = icmp eq i32 %lsr.iv.next29, 0, !dbg !876
  br i1 %exitcond24, label %for.cond.cleanup, label %for.body.for.body_crit_edge, !dbg !868, !llvm.loop !877

for.cond.cleanup7:                                ; preds = %for.body8
  ret i32 0, !dbg !879

for.body8:                                        ; preds = %for.body8, %for.cond.cleanup
  %lsr.iv = phi i32 [ %lsr.iv.next, %for.body8 ], [ -128000, %for.cond.cleanup ], !dbg !880
  %5 = phi i32 [ 0, %for.cond.cleanup ], [ %add10, %for.body8 ], !dbg !880
  %6 = bitcast i32* %2 to i8*
  call void @llvm.dbg.value(metadata i32 undef, metadata !858, metadata !DIExpression()), !dbg !870
  %uglygep = getelementptr i8, i8* %6, i32 %lsr.iv, !dbg !881
  %uglygep27 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep27, i32 32000, !dbg !881
  %7 = load i32, i32* %scevgep, align 4, !dbg !881
  %add10 = add i32 %5, %7, !dbg !880
  store i32 %add10, i32* @temp, align 4, !dbg !880
  call void @llvm.dbg.value(metadata i32 undef, metadata !858, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !870
  %lsr.iv.next = add nsw i32 %lsr.iv, 4, !dbg !882
  %exitcond = icmp eq i32 %lsr.iv.next, 0, !dbg !882
  br i1 %exitcond, label %for.cond.cleanup7, label %for.body8, !dbg !874, !llvm.loop !883

; uselistorder directives
  uselistorder i32 %add10, { 1, 0 }
  uselistorder i32 %lsr.iv, { 1, 0 }
  uselistorder i32 %lsr.iv28, { 3, 0, 1, 2 }
  uselistorder i32 8, { 4, 1, 2, 0, 3, 5 }
  uselistorder label %for.body.for.body_crit_edge, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex23() local_unnamed_addr #0 !dbg !885 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !887, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata i32 0, metadata !888, metadata !DIExpression()), !dbg !891
  br label %vector.body, !dbg !892

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !893
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %predphi31, %vector.body ]
  %vec.phi22 = phi <4 x i32> [ zeroinitializer, %entry ], [ %predphi32, %vector.body ]
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !895
  %uglygep37 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep37, i32 8000, !dbg !895
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !895
  %scevgep38 = getelementptr <4 x i32>, <4 x i32>* %uglygep37, i32 8001, !dbg !895
  %wide.load23 = load <4 x i32>, <4 x i32>* %scevgep38, align 16, !dbg !895
  %0 = icmp sgt <4 x i32> %wide.load, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !898
  %1 = icmp sgt <4 x i32> %wide.load23, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !898
  %uglygep39 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !899
  %uglygep3940 = bitcast i8* %uglygep39 to <4 x i32>*
  %scevgep41 = getelementptr <4 x i32>, <4 x i32>* %uglygep3940, i32 8000, !dbg !899
  %wide.load24 = load <4 x i32>, <4 x i32>* %scevgep41, align 16, !dbg !899
  %scevgep42 = getelementptr <4 x i32>, <4 x i32>* %uglygep3940, i32 8001, !dbg !899
  %wide.load25 = load <4 x i32>, <4 x i32>* %scevgep42, align 16, !dbg !899
  %2 = icmp sle <4 x i32> %wide.load24, %wide.load, !dbg !902
  %3 = icmp sle <4 x i32> %wide.load25, %wide.load23, !dbg !902
  %uglygep43 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !903
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %uglygep4344, i32 8000, !dbg !903
  %wide.load26 = load <4 x i32>, <4 x i32>* %scevgep45, align 16, !dbg !903
  %scevgep46 = getelementptr <4 x i32>, <4 x i32>* %uglygep4344, i32 8001, !dbg !903
  %wide.load27 = load <4 x i32>, <4 x i32>* %scevgep46, align 16, !dbg !903
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i32 %lsr.iv, !dbg !905
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %scevgep49 = getelementptr <4 x i32>, <4 x i32>* %uglygep4748, i32 8000, !dbg !905
  %wide.load28 = load <4 x i32>, <4 x i32>* %scevgep49, align 16, !dbg !905
  %scevgep50 = getelementptr <4 x i32>, <4 x i32>* %uglygep4748, i32 8001, !dbg !905
  %wide.load29 = load <4 x i32>, <4 x i32>* %scevgep50, align 16, !dbg !905
  %4 = mul <4 x i32> %wide.load28, %wide.load26, !dbg !906
  %5 = mul <4 x i32> %wide.load29, %wide.load27, !dbg !906
  %6 = or <4 x i1> %2, %0, !dbg !890
  %predphi = select <4 x i1> %6, <4 x i32> zeroinitializer, <4 x i32> %4, !dbg !890
  %predphi31 = add <4 x i32> %vec.phi, %predphi, !dbg !890
  %7 = or <4 x i1> %3, %1, !dbg !890
  %predphi30 = select <4 x i1> %7, <4 x i32> zeroinitializer, <4 x i32> %5, !dbg !890
  %predphi32 = add <4 x i32> %vec.phi22, %predphi30, !dbg !890
  %lsr.iv.next = add nsw i32 %lsr.iv, 32, !dbg !893
  %8 = icmp eq i32 %lsr.iv.next, 0, !dbg !893
  br i1 %8, label %middle.block, label %vector.body, !dbg !893, !llvm.loop !907

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %predphi32, %predphi31, !dbg !892
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !892
  %bin.rdx33 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !892
  %rdx.shuf34 = shufflevector <4 x i32> %bin.rdx33, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !892
  %bin.rdx35 = add <4 x i32> %bin.rdx33, %rdx.shuf34, !dbg !892
  %9 = extractelement <4 x i32> %bin.rdx35, i32 0, !dbg !892
  call void @llvm.dbg.value(metadata i32 %9, metadata !887, metadata !DIExpression()), !dbg !890
  ret i32 %9, !dbg !909

; uselistorder directives
  uselistorder <4 x i32> %wide.load23, { 1, 0 }
  uselistorder <4 x i32> %wide.load, { 1, 0 }
  uselistorder i32 %lsr.iv, { 4, 0, 1, 2, 3 }
  uselistorder [32000 x i32]* @e, { 1, 2, 3, 0, 4 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex25() local_unnamed_addr #1 !dbg !910 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !912, metadata !DIExpression()), !dbg !914
  br label %for.body, !dbg !915

for.cond.cleanup:                                 ; preds = %for.inc
  ret i32 0, !dbg !916

for.body:                                         ; preds = %for.inc, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %for.inc ], [ -128000, %entry ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !912, metadata !DIExpression()), !dbg !914
  %uglygep48 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !917
  %uglygep4849 = bitcast i8* %uglygep48 to i32*
  %scevgep50 = getelementptr i32, i32* %uglygep4849, i32 32000, !dbg !917
  %0 = load i32, i32* %scevgep50, align 4, !dbg !917
  %cmp1 = icmp slt i32 %0, 0, !dbg !921
  br i1 %cmp1, label %if.then, label %if.else, !dbg !922

if.then:                                          ; preds = %for.body
  %uglygep45 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !923
  %uglygep4546 = bitcast i8* %uglygep45 to i32*
  %scevgep47 = getelementptr i32, i32* %uglygep4546, i32 32000, !dbg !923
  %1 = load i32, i32* %scevgep47, align 4, !dbg !923
  %uglygep39 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !925
  %uglygep3940 = bitcast i8* %uglygep39 to i32*
  %scevgep41 = getelementptr i32, i32* %uglygep3940, i32 32000, !dbg !925
  %2 = load i32, i32* %scevgep41, align 4, !dbg !925
  %mul = mul i32 %2, %1, !dbg !926
  br label %for.inc, !dbg !927

if.else:                                          ; preds = %for.body
  %cmp6 = icmp eq i32 %0, 0, !dbg !928
  br i1 %cmp6, label %if.then7, label %if.else13, !dbg !930

if.then7:                                         ; preds = %if.else
  %uglygep42 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !931
  %uglygep4243 = bitcast i8* %uglygep42 to i32*
  %scevgep44 = getelementptr i32, i32* %uglygep4243, i32 32000, !dbg !931
  %3 = load i32, i32* %scevgep44, align 4, !dbg !931
  %mul10 = mul i32 %3, %3, !dbg !933
  br label %for.inc, !dbg !934

if.else13:                                        ; preds = %if.else
  %uglygep36 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !935
  %uglygep3637 = bitcast i8* %uglygep36 to i32*
  %scevgep38 = getelementptr i32, i32* %uglygep3637, i32 32000, !dbg !935
  %4 = load i32, i32* %scevgep38, align 4, !dbg !935
  %mul16 = mul i32 %4, %4, !dbg !937
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else13, %if.then7
  %mul.sink = phi i32 [ %mul, %if.then ], [ %mul16, %if.else13 ], [ %mul10, %if.then7 ]
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !938
  %uglygep35 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep35, i32 32000, !dbg !938
  %5 = load i32, i32* %scevgep, align 4, !dbg !938
  %add = add i32 %5, %mul.sink, !dbg !938
  store i32 %add, i32* %scevgep, align 4, !dbg !938
  call void @llvm.dbg.value(metadata i32 undef, metadata !912, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !914
  %lsr.iv.next = add nsw i32 %lsr.iv, 4, !dbg !939
  %exitcond = icmp eq i32 %lsr.iv.next, 0, !dbg !939
  br i1 %exitcond, label %for.cond.cleanup, label %for.body, !dbg !915, !llvm.loop !940

; uselistorder directives
  uselistorder i32 %lsr.iv, { 6, 5, 4, 2, 3, 1, 0 }
  uselistorder label %for.inc, { 1, 2, 0 }
}

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex38() local_unnamed_addr #0 !dbg !942 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !944, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i32 0, metadata !945, metadata !DIExpression()), !dbg !948
  br label %vector.body, !dbg !949

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !950
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %4, %vector.body ]
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i32 %lsr.iv, !dbg !952
  %uglygep40 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep40, i32 8000, !dbg !952
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !952
  %0 = icmp sgt <4 x i32> %wide.load, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !955
  %1 = icmp ne <4 x i32> %wide.load, zeroinitializer, !dbg !956
  %uglygep41 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i32 %lsr.iv, !dbg !958
  %uglygep4142 = bitcast i8* %uglygep41 to <4 x i32>*
  %scevgep43 = getelementptr <4 x i32>, <4 x i32>* %uglygep4142, i32 8000, !dbg !958
  %wide.load32 = load <4 x i32>, <4 x i32>* %scevgep43, align 16, !dbg !958
  %2 = mul <4 x i32> %wide.load32, %wide.load32, !dbg !960
  %uglygep44 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i32 %lsr.iv, !dbg !961
  %uglygep4445 = bitcast i8* %uglygep44 to <4 x i32>*
  %scevgep46 = getelementptr <4 x i32>, <4 x i32>* %uglygep4445, i32 8000, !dbg !961
  %wide.load33 = load <4 x i32>, <4 x i32>* %scevgep46, align 16, !dbg !961
  %3 = and <4 x i1> %1, %0, !dbg !963
  %predphi.v = select <4 x i1> %1, <4 x i32> %wide.load32, <4 x i32> %wide.load33
  %predphi = mul <4 x i32> %predphi.v, %wide.load33
  %predphi36 = select <4 x i1> %3, <4 x i32> %2, <4 x i32> %predphi
  %4 = add <4 x i32> %predphi36, %vec.phi, !dbg !965
  %lsr.iv.next = add nsw i32 %lsr.iv, 16, !dbg !950
  %5 = icmp eq i32 %lsr.iv.next, 0, !dbg !950
  br i1 %5, label %middle.block, label %vector.body, !dbg !950, !llvm.loop !966

middle.block:                                     ; preds = %vector.body
  %rdx.shuf = shufflevector <4 x i32> %4, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !949
  %bin.rdx = add <4 x i32> %4, %rdx.shuf, !dbg !949
  %rdx.shuf37 = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !949
  %bin.rdx38 = add <4 x i32> %bin.rdx, %rdx.shuf37, !dbg !949
  %6 = extractelement <4 x i32> %bin.rdx38, i32 0, !dbg !949
  call void @llvm.dbg.value(metadata i32 %6, metadata !944, metadata !DIExpression()), !dbg !947
  ret i32 %6, !dbg !968

; uselistorder directives
  uselistorder <4 x i32> %wide.load33, { 1, 0 }
  uselistorder <4 x i32> %wide.load, { 1, 0 }
  uselistorder i32 %lsr.iv, { 3, 0, 1, 2 }
  uselistorder <4 x i32> undef, { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 14, 15, 12, 13, 10, 11, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 0, 2, 1, 3, 5, 4, 7, 6, 8, 9, 10, 12, 11, 13, 14, 16, 15, 18, 17, 19, 21, 20, 22, 23, 24 }
  uselistorder [32000 x i32]* @c, { 7, 1, 2, 3, 0, 5, 6, 4, 8, 9 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 0, 2, 1, 3, 5, 4, 8, 9, 10, 6, 7, 12, 11, 13, 14, 15, 16, 17, 18, 19 }
  uselistorder [32000 x i32]* @d, { 1, 2, 3, 0, 5, 6, 4 }
  uselistorder i8* bitcast ([32000 x i32]* @d to i8*), { 0, 1, 2, 3, 5, 4, 6, 8, 7, 9, 11, 10, 13, 12, 14, 15, 16, 17 }
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex28(i32* nocapture readonly %ip) local_unnamed_addr #1 !dbg !969 {
entry:
  call void @llvm.dbg.value(metadata i32* %ip, metadata !973, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i32 0, metadata !974, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i32 0, metadata !975, metadata !DIExpression()), !dbg !978
  br label %for.body, !dbg !979

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %add, metadata !974, metadata !DIExpression()), !dbg !977
  store i32 %add, i32* @temp, align 4, !dbg !980
  ret i32 0, !dbg !981

for.body:                                         ; preds = %for.body, %entry
  %lsr.iv = phi i32 [ %lsr.iv.next, %for.body ], [ -128000, %entry ]
  %sum.09 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %0 = bitcast i32* %ip to i8*
  call void @llvm.dbg.value(metadata i32 undef, metadata !975, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata i32 %sum.09, metadata !974, metadata !DIExpression()), !dbg !977
  %uglygep14 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i32 %lsr.iv, !dbg !982
  %uglygep1415 = bitcast i8* %uglygep14 to i32*
  %scevgep16 = getelementptr i32, i32* %uglygep1415, i32 32000, !dbg !982
  %1 = load i32, i32* %scevgep16, align 4, !dbg !982
  %uglygep = getelementptr i8, i8* %0, i32 %lsr.iv, !dbg !985
  %uglygep12 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep12, i32 32000, !dbg !985
  %2 = load i32, i32* %scevgep, align 4, !dbg !985
  %arrayidx2 = getelementptr [32000 x i32], [32000 x i32]* @b, i32 0, i32 %2, !dbg !986
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !986
  %mul = mul i32 %3, %1, !dbg !987
  %add = add i32 %mul, %sum.09, !dbg !988
  call void @llvm.dbg.value(metadata i32 %add, metadata !974, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i32 undef, metadata !975, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !978
  %lsr.iv.next = add nsw i32 %lsr.iv, 4, !dbg !989
  %exitcond = icmp eq i32 %lsr.iv.next, 0, !dbg !989
  br i1 %exitcond, label %for.cond.cleanup, label %for.body, !dbg !979, !llvm.loop !990

; uselistorder directives
  uselistorder i32 %lsr.iv, { 2, 1, 0 }
  uselistorder i32 4, { 0, 1, 3, 2, 25, 4, 7, 6, 5, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24 }
  uselistorder [32000 x i32]* @b, { 4, 1, 2, 3, 5, 6, 0, 7, 8 }
  uselistorder i32 32000, { 1, 0, 7, 6, 4, 5, 3, 2, 10, 8, 9, 11, 15, 14, 13, 12, 20, 19, 18, 17, 16, 25, 24, 23, 22, 21, 32, 30, 31, 29, 28, 27, 26, 35, 41, 39, 36, 34, 37, 40, 38, 33, 51, 46, 43, 47, 48, 44, 49, 50, 45, 42, 58, 55, 53, 59, 60, 56, 54, 57, 52, 61, 62 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 7, 8, 9, 10, 11, 12, 2, 3, 4, 5, 6 }
  uselistorder [32000 x i32]* @a, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 0, 1, 2, 3, 6, 5, 4, 7, 8, 9, 10, 11, 13, 12, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
}

; Function Attrs: nofree noinline norecurse nounwind writeonly
define dso_local i32 @ex29() local_unnamed_addr #3 !dbg !992 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !994, metadata !DIExpression()), !dbg !1000
  br label %vector.ph, !dbg !1001

vector.ph:                                        ; preds = %entry, %vector.ph
  %lsr.iv87 = phi i32 [ -263168, %entry ], [ %lsr.iv.next, %vector.ph ]
  %lsr.iv = phi [256 x [256 x i32]]* [ bitcast (i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i32 0, i32 0, i32 252) to [256 x [256 x i32]]*), %entry ], [ %0, %vector.ph ]
  %lsr.iv23 = bitcast [256 x [256 x i32]]* %lsr.iv to <4 x i32>*
  call void @llvm.dbg.value(metadata i32 undef, metadata !994, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 0, metadata !996, metadata !DIExpression()), !dbg !1002
  %scevgep86 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -63, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep86, align 16, !dbg !1003
  %scevgep54 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -62, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep54, align 16, !dbg !1003
  %scevgep85 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -61, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep85, align 16, !dbg !1003
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -60, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep53, align 16, !dbg !1003
  %scevgep84 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -59, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep84, align 16, !dbg !1003
  %scevgep52 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -58, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep52, align 16, !dbg !1003
  %scevgep83 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -57, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep83, align 16, !dbg !1003
  %scevgep51 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -56, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep51, align 16, !dbg !1003
  %scevgep82 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -55, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep82, align 16, !dbg !1003
  %scevgep50 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -54, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep50, align 16, !dbg !1003
  %scevgep81 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -53, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep81, align 16, !dbg !1003
  %scevgep49 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -52, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep49, align 16, !dbg !1003
  %scevgep80 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -51, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep80, align 16, !dbg !1003
  %scevgep48 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -50, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep48, align 16, !dbg !1003
  %scevgep79 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -49, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep79, align 16, !dbg !1003
  %scevgep47 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -48, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep47, align 16, !dbg !1003
  %scevgep78 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -47, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep78, align 16, !dbg !1003
  %scevgep46 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -46, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep46, align 16, !dbg !1003
  %scevgep77 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -45, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep77, align 16, !dbg !1003
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -44, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep45, align 16, !dbg !1003
  %scevgep76 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -43, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep76, align 16, !dbg !1003
  %scevgep44 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -42, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep44, align 16, !dbg !1003
  %scevgep75 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -41, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep75, align 16, !dbg !1003
  %scevgep43 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -40, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep43, align 16, !dbg !1003
  %scevgep74 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -39, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep74, align 16, !dbg !1003
  %scevgep42 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -38, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep42, align 16, !dbg !1003
  %scevgep73 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -37, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep73, align 16, !dbg !1003
  %scevgep41 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -36, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep41, align 16, !dbg !1003
  %scevgep72 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -35, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep72, align 16, !dbg !1003
  %scevgep40 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -34, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep40, align 16, !dbg !1003
  %scevgep71 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -33, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep71, align 16, !dbg !1003
  %scevgep39 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -32, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep39, align 16, !dbg !1003
  %scevgep70 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -31, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep70, align 16, !dbg !1003
  %scevgep38 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -30, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep38, align 16, !dbg !1003
  %scevgep69 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -29, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep69, align 16, !dbg !1003
  %scevgep37 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -28, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep37, align 16, !dbg !1003
  %scevgep68 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -27, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep68, align 16, !dbg !1003
  %scevgep36 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -26, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep36, align 16, !dbg !1003
  %scevgep67 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -25, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep67, align 16, !dbg !1003
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -24, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep35, align 16, !dbg !1003
  %scevgep66 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -23, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep66, align 16, !dbg !1003
  %scevgep34 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -22, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep34, align 16, !dbg !1003
  %scevgep65 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -21, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep65, align 16, !dbg !1003
  %scevgep33 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -20, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep33, align 16, !dbg !1003
  %scevgep64 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -19, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep64, align 16, !dbg !1003
  %scevgep32 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -18, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep32, align 16, !dbg !1003
  %scevgep63 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -17, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep63, align 16, !dbg !1003
  %scevgep31 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -16, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep31, align 16, !dbg !1003
  %scevgep62 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -15, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep62, align 16, !dbg !1003
  %scevgep30 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -14, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep30, align 16, !dbg !1003
  %scevgep61 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -13, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep61, align 16, !dbg !1003
  %scevgep29 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -12, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep29, align 16, !dbg !1003
  %scevgep60 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -11, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep60, align 16, !dbg !1003
  %scevgep28 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -10, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep28, align 16, !dbg !1003
  %scevgep59 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -9, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep59, align 16, !dbg !1003
  %scevgep27 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -8, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep27, align 16, !dbg !1003
  %scevgep58 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -7, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep58, align 16, !dbg !1003
  %scevgep26 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -6, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep26, align 16, !dbg !1003
  %scevgep57 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -5, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep57, align 16, !dbg !1003
  %scevgep25 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -4, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep25, align 16, !dbg !1003
  %scevgep56 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -3, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep56, align 16, !dbg !1003
  %scevgep24 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -2, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep24, align 16, !dbg !1003
  %scevgep55 = getelementptr <4 x i32>, <4 x i32>* %lsr.iv23, i32 -1, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %scevgep55, align 16, !dbg !1003
  store <4 x i32> zeroinitializer, <4 x i32>* %lsr.iv23, align 16, !dbg !1003
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i32 %lsr.iv87, !dbg !1006
  %uglygep89 = bitcast i8* %uglygep to i32*
  %scevgep90 = getelementptr i32, i32* %uglygep89, i32 65792, !dbg !1006
  store i32 1, i32* %scevgep90, align 4, !dbg !1006
  call void @llvm.dbg.value(metadata i32 undef, metadata !994, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1000
  %scevgep = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i32 0, i32 1, i32 0, !dbg !1007
  %0 = bitcast i32* %scevgep to [256 x [256 x i32]]*, !dbg !1007
  %lsr.iv.next = add nsw i32 %lsr.iv87, 1028, !dbg !1007
  %exitcond21 = icmp eq i32 %lsr.iv.next, 0, !dbg !1007
  br i1 %exitcond21, label %for.cond.cleanup, label %vector.ph, !dbg !1001, !llvm.loop !1008

for.cond.cleanup:                                 ; preds = %vector.ph
  ret i32 0, !dbg !1010

; uselistorder directives
  uselistorder <4 x i32>* %lsr.iv23, { 63, 31, 62, 30, 61, 29, 60, 28, 59, 27, 58, 26, 57, 25, 56, 24, 55, 23, 54, 22, 53, 21, 52, 20, 51, 19, 50, 18, 49, 17, 48, 16, 47, 15, 46, 14, 45, 13, 44, 12, 43, 11, 42, 10, 41, 9, 40, 8, 39, 7, 38, 6, 37, 5, 36, 4, 35, 3, 34, 2, 33, 1, 32, 0 }
  uselistorder [256 x [256 x i32]]* %lsr.iv, { 1, 0 }
  uselistorder i32 %lsr.iv87, { 1, 0 }
  uselistorder i32 1, { 0, 22, 1, 4, 3, 2, 5, 23, 14, 6, 15, 24, 19, 25, 26, 27, 28, 7, 8, 29, 16, 17, 30, 32, 9, 31, 18, 20, 10, 34, 11, 33, 21, 12, 13, 35 }
  uselistorder i8* bitcast ([256 x [256 x i32]]* @aa to i8*), { 0, 1, 3, 2, 4, 5, 69, 37, 68, 36, 67, 35, 66, 34, 65, 33, 64, 32, 63, 31, 62, 30, 61, 29, 60, 28, 59, 27, 58, 26, 57, 25, 56, 24, 55, 23, 54, 22, 53, 21, 52, 20, 51, 19, 50, 18, 49, 17, 48, 16, 47, 15, 46, 14, 45, 13, 44, 12, 43, 11, 42, 10, 41, 9, 40, 8, 39, 7, 38, 6, 133, 101, 132, 100, 131, 99, 130, 98, 129, 97, 128, 96, 127, 95, 126, 94, 125, 93, 124, 92, 123, 91, 122, 90, 121, 89, 120, 88, 119, 87, 118, 86, 117, 85, 116, 84, 115, 83, 114, 82, 113, 81, 112, 80, 111, 79, 110, 78, 109, 77, 108, 76, 107, 75, 106, 74, 105, 73, 104, 72, 103, 71, 102, 70, 197, 165, 196, 164, 195, 163, 194, 162, 193, 161, 192, 160, 191, 159, 190, 158, 189, 157, 188, 156, 187, 155, 186, 154, 185, 153, 184, 152, 183, 151, 182, 150, 181, 149, 180, 148, 179, 147, 178, 146, 177, 145, 176, 144, 175, 143, 174, 142, 173, 141, 172, 140, 171, 139, 170, 138, 169, 137, 168, 136, 167, 135, 166, 134 }
  uselistorder i32 -1, { 0, 5, 3, 4, 6, 7, 8, 9, 10, 1, 2 }
  uselistorder i32 -8, { 0, 1, 3, 2 }
  uselistorder <4 x i32> zeroinitializer, { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 65, 64, 66, 67, 68, 69, 72, 73, 74, 75, 70, 71, 76, 77, 78, 79, 80, 81, 84, 85, 82, 83, 86, 87, 88, 89, 90, 91, 92, 93 }
  uselistorder [256 x [256 x i32]]* @aa, { 0, 5, 6, 11, 7, 8, 9, 10, 12, 13, 2, 1, 3, 4 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 151, 28, 27, 152, 154, 153, 30, 29, 31, 155, 156, 157, 32, 158, 159, 160, 33, 161, 34, 162, 163, 164, 36, 166, 35, 165, 0, 167, 175, 174, 168, 169, 170, 171, 172, 173, 38, 37, 40, 39, 176, 177, 178, 181, 180, 179, 41, 42, 182, 183, 184, 193, 187, 186, 43, 44, 188, 185, 189, 190, 191, 192, 45, 194, 195, 201, 62, 61, 60, 51, 50, 49, 48, 47, 46, 3, 2, 1, 196, 65, 64, 63, 56, 57, 58, 59, 55, 54, 53, 52, 197, 198, 199, 200, 207, 204, 202, 203, 205, 206, 75, 74, 76, 66, 67, 68, 69, 70, 71, 72, 73, 208, 209, 210, 211, 79, 77, 78, 212, 213, 214, 220, 217, 218, 219, 215, 216, 81, 80, 82, 221, 222, 223, 83, 224, 84, 225, 226, 227, 85, 228, 4, 5, 6, 7, 8, 9, 10, 11, 232, 231, 229, 230, 87, 86, 233, 234, 235, 88, 236, 239, 238, 237, 90, 89, 91, 240, 242, 241, 243, 92, 244, 245, 249, 12, 13, 14, 15, 247, 246, 98, 97, 248, 96, 95, 99, 94, 93, 17, 16, 250, 251, 254, 18, 19, 252, 101, 253, 100, 255, 113, 103, 102, 20, 256, 114, 110, 111, 109, 108, 257, 112, 106, 107, 105, 104, 258, 259, 261, 260, 263, 262, 118, 117, 264, 122, 121, 115, 23, 22, 21, 119, 120, 116, 265, 266, 267, 124, 268, 125, 123, 269, 131, 127, 126, 24, 270, 132, 129, 130, 128, 271, 272, 136, 274, 273, 137, 134, 135, 133, 275, 276, 142, 25, 277, 141, 139, 140, 138, 278, 279, 148, 144, 143, 26, 280, 149, 146, 147, 145, 281, 282, 150, 283, 284 }
  uselistorder label %vector.ph, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @main() local_unnamed_addr #4 !dbg !1011 {
entry:
  ret i32 0, !dbg !1012

; uselistorder directives
  uselistorder i32 0, { 182, 183, 0, 1, 2, 3, 185, 149, 184, 72, 4, 5, 187, 188, 186, 73, 6, 8, 150, 189, 7, 190, 74, 75, 76, 191, 77, 151, 192, 78, 193, 194, 180, 9, 195, 79, 10, 196, 14, 15, 84, 82, 80, 11, 12, 13, 81, 83, 85, 86, 155, 154, 153, 152, 16, 18, 17, 19, 197, 20, 198, 21, 199, 200, 87, 88, 22, 23, 201, 156, 24, 203, 202, 89, 25, 26, 205, 204, 90, 105, 106, 91, 92, 93, 94, 95, 107, 108, 96, 97, 98, 99, 100, 157, 158, 101, 102, 103, 104, 109, 27, 207, 208, 159, 160, 209, 210, 161, 206, 28, 163, 162, 29, 164, 211, 110, 111, 112, 113, 175, 176, 114, 115, 116, 212, 213, 214, 166, 165, 117, 118, 119, 120, 121, 122, 177, 178, 179, 123, 216, 217, 218, 167, 215, 36, 37, 42, 43, 124, 31, 40, 41, 126, 127, 32, 33, 34, 35, 125, 46, 47, 44, 45, 38, 39, 128, 30, 129, 169, 168, 52, 53, 131, 49, 50, 51, 132, 133, 130, 219, 170, 134, 54, 48, 55, 56, 171, 57, 58, 220, 221, 59, 60, 62, 135, 136, 137, 61, 63, 64, 65, 138, 139, 172, 66, 67, 140, 69, 68, 141, 142, 173, 70, 146, 147, 143, 144, 145, 174, 148, 71, 181 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nofree noinline norecurse nounwind writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "val", scope: !2, file: !10, line: 50, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.0.0 (https://github.com/bsorav/llvm-project2.git 088c616cb2ff811e68fbc2b29be278f514a01573)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/var/lib/jenkins/workspace/_prove-memlabels_prove_memlabels/superopt-tests/oopsla_tests/oopsla_tests.c", directory: "/var/lib/jenkins/workspace/_prove-memlabels_prove_memlabels/superopt-tests/build/oopsla_tests")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!0, !8, !14, !16, !18, !20, !22, !27, !29, !31, !33, !35, !37, !39, !41, !46, !48, !50, !52, !54, !57, !59}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "X", scope: !2, file: !10, line: 52, type: !11, isLocal: false, isDefinition: true, align: 128)
!10 = !DIFile(filename: "oopsla_tests/oopsla_tests.c", directory: "/var/lib/jenkins/workspace/_prove-memlabels_prove_memlabels/superopt-tests")
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024000, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 32000)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "Y", scope: !2, file: !10, line: 52, type: !11, isLocal: false, isDefinition: true, align: 128)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "Z", scope: !2, file: !10, line: 52, type: !11, isLocal: false, isDefinition: true, align: 128)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "U", scope: !2, file: !10, line: 52, type: !11, isLocal: false, isDefinition: true, align: 128)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "V", scope: !2, file: !10, line: 52, type: !11, isLocal: false, isDefinition: true, align: 128)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "array", scope: !2, file: !10, line: 53, type: !24, isLocal: false, isDefinition: true, align: 128)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2097152, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 65536)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !10, line: 54, type: !11, isLocal: false, isDefinition: true, align: 128)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "temp", scope: !2, file: !10, line: 55, type: !6, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !10, line: 56, type: !11, isLocal: false, isDefinition: true, align: 128)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !10, line: 56, type: !11, isLocal: false, isDefinition: true, align: 128)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !10, line: 56, type: !11, isLocal: false, isDefinition: true, align: 128)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !10, line: 56, type: !11, isLocal: false, isDefinition: true, align: 128)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !10, line: 56, type: !11, isLocal: false, isDefinition: true, align: 128)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !10, line: 57, type: !43, isLocal: false, isDefinition: true, align: 128)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2097152, elements: !44)
!44 = !{!45, !45}
!45 = !DISubrange(count: 256)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !10, line: 57, type: !43, isLocal: false, isDefinition: true, align: 128)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !10, line: 57, type: !43, isLocal: false, isDefinition: true, align: 128)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "tt", scope: !2, file: !10, line: 57, type: !43, isLocal: false, isDefinition: true, align: 128)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "indx", scope: !2, file: !10, line: 58, type: !11, isLocal: false, isDefinition: true, align: 128)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "xx", scope: !2, file: !10, line: 61, type: !56, isLocal: false, isDefinition: true)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !10, line: 62, type: !56, isLocal: false, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "arr", scope: !2, file: !10, line: 63, type: !11, isLocal: false, isDefinition: true)
!61 = !{i32 1, !"NumRegisterParameters", i32 0}
!62 = !{i32 7, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 4}
!65 = !{!"clang version 11.0.0 (https://github.com/bsorav/llvm-project2.git 088c616cb2ff811e68fbc2b29be278f514a01573)"}
!66 = distinct !DISubprogram(name: "ex1", scope: !10, file: !10, line: 66, type: !67, scopeLine: 66, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!67 = !DISubroutineType(types: !5)
!68 = !{!69, !70}
!69 = !DILocalVariable(name: "ret", scope: !66, file: !10, line: 67, type: !6)
!70 = !DILocalVariable(name: "i", scope: !71, file: !10, line: 68, type: !6)
!71 = distinct !DILexicalBlock(scope: !66, file: !10, line: 68, column: 2)
!72 = !DILocation(line: 0, scope: !66)
!73 = !DILocation(line: 0, scope: !71)
!74 = !DILocation(line: 68, column: 2, scope: !71)
!75 = !DILocation(line: 68, column: 28, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !10, line: 68, column: 2)
!77 = !DILocation(line: 69, column: 10, scope: !76)
!78 = !DILocation(line: 69, column: 7, scope: !76)
!79 = distinct !{!79, !74, !80, !81}
!80 = !DILocation(line: 69, column: 13, scope: !71)
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !DILocation(line: 70, column: 2, scope: !66)
!83 = distinct !DISubprogram(name: "ex2", scope: !10, file: !10, line: 73, type: !67, scopeLine: 73, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!84 = !{!85, !86, !88}
!85 = !DILocalVariable(name: "ret", scope: !83, file: !10, line: 74, type: !6)
!86 = !DILocalVariable(name: "i", scope: !87, file: !10, line: 75, type: !6)
!87 = distinct !DILexicalBlock(scope: !83, file: !10, line: 75, column: 2)
!88 = !DILocalVariable(name: "j", scope: !89, file: !10, line: 76, type: !6)
!89 = distinct !DILexicalBlock(scope: !90, file: !10, line: 76, column: 4)
!90 = distinct !DILexicalBlock(scope: !87, file: !10, line: 75, column: 2)
!91 = !DILocation(line: 0, scope: !83)
!92 = !DILocation(line: 0, scope: !87)
!93 = !DILocation(line: 75, column: 2, scope: !87)
!94 = !DILocation(line: 0, scope: !89)
!95 = !DILocation(line: 76, column: 4, scope: !89)
!96 = !DILocation(line: 77, column: 12, scope: !97)
!97 = distinct !DILexicalBlock(scope: !89, file: !10, line: 76, column: 4)
!98 = !DILocation(line: 77, column: 9, scope: !97)
!99 = !DILocation(line: 75, column: 20, scope: !90)
!100 = distinct !{!100, !93, !101}
!101 = !DILocation(line: 77, column: 19, scope: !87)
!102 = !DILocation(line: 78, column: 2, scope: !83)
!103 = distinct !DISubprogram(name: "ex3", scope: !10, file: !10, line: 81, type: !67, scopeLine: 81, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !104)
!104 = !{!105, !106, !108, !111}
!105 = !DILocalVariable(name: "ret", scope: !103, file: !10, line: 82, type: !6)
!106 = !DILocalVariable(name: "i", scope: !107, file: !10, line: 83, type: !6)
!107 = distinct !DILexicalBlock(scope: !103, file: !10, line: 83, column: 2)
!108 = !DILocalVariable(name: "j", scope: !109, file: !10, line: 84, type: !6)
!109 = distinct !DILexicalBlock(scope: !110, file: !10, line: 84, column: 4)
!110 = distinct !DILexicalBlock(scope: !107, file: !10, line: 83, column: 2)
!111 = !DILocalVariable(name: "i", scope: !112, file: !10, line: 86, type: !6)
!112 = distinct !DILexicalBlock(scope: !103, file: !10, line: 86, column: 2)
!113 = !DILocation(line: 0, scope: !103)
!114 = !DILocation(line: 0, scope: !107)
!115 = !DILocation(line: 83, column: 2, scope: !107)
!116 = !DILocation(line: 0, scope: !109)
!117 = !DILocation(line: 84, column: 4, scope: !109)
!118 = !DILocation(line: 85, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !109, file: !10, line: 84, column: 4)
!120 = !DILocation(line: 85, column: 8, scope: !119)
!121 = !DILocation(line: 83, column: 20, scope: !110)
!122 = distinct !{!122, !115, !123}
!123 = !DILocation(line: 85, column: 18, scope: !107)
!124 = !DILocation(line: 86, column: 2, scope: !112)
!125 = !DILocation(line: 86, column: 28, scope: !126)
!126 = distinct !DILexicalBlock(scope: !112, file: !10, line: 86, column: 2)
!127 = !DILocation(line: 87, column: 10, scope: !126)
!128 = !DILocation(line: 87, column: 7, scope: !126)
!129 = distinct !{!129, !124, !130, !81}
!130 = !DILocation(line: 87, column: 13, scope: !112)
!131 = !DILocation(line: 88, column: 2, scope: !103)
!132 = distinct !DISubprogram(name: "ex4", scope: !10, file: !10, line: 91, type: !67, scopeLine: 91, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!133 = !{!134, !135, !137}
!134 = !DILocalVariable(name: "ret", scope: !132, file: !10, line: 92, type: !6)
!135 = !DILocalVariable(name: "i", scope: !136, file: !10, line: 93, type: !6)
!136 = distinct !DILexicalBlock(scope: !132, file: !10, line: 93, column: 2)
!137 = !DILocalVariable(name: "j", scope: !138, file: !10, line: 94, type: !6)
!138 = distinct !DILexicalBlock(scope: !139, file: !10, line: 94, column: 4)
!139 = distinct !DILexicalBlock(scope: !140, file: !10, line: 93, column: 33)
!140 = distinct !DILexicalBlock(scope: !136, file: !10, line: 93, column: 2)
!141 = !DILocation(line: 0, scope: !132)
!142 = !DILocation(line: 0, scope: !136)
!143 = !DILocation(line: 93, column: 2, scope: !136)
!144 = !DILocation(line: 0, scope: !138)
!145 = !DILocation(line: 94, column: 4, scope: !138)
!146 = !DILocation(line: 95, column: 12, scope: !147)
!147 = distinct !DILexicalBlock(scope: !138, file: !10, line: 94, column: 4)
!148 = !DILocation(line: 95, column: 9, scope: !147)
!149 = !DILocation(line: 96, column: 10, scope: !139)
!150 = !DILocation(line: 96, column: 7, scope: !139)
!151 = !DILocation(line: 93, column: 20, scope: !140)
!152 = distinct !{!152, !143, !153}
!153 = !DILocation(line: 97, column: 3, scope: !136)
!154 = !DILocation(line: 98, column: 2, scope: !132)
!155 = distinct !DISubprogram(name: "ex5", scope: !10, file: !10, line: 101, type: !67, scopeLine: 101, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !156)
!156 = !{!157, !158, !160, !162}
!157 = !DILocalVariable(name: "ret", scope: !155, file: !10, line: 102, type: !6)
!158 = !DILocalVariable(name: "i", scope: !159, file: !10, line: 103, type: !6)
!159 = distinct !DILexicalBlock(scope: !155, file: !10, line: 103, column: 2)
!160 = !DILocalVariable(name: "i", scope: !161, file: !10, line: 105, type: !6)
!161 = distinct !DILexicalBlock(scope: !155, file: !10, line: 105, column: 2)
!162 = !DILocalVariable(name: "j", scope: !163, file: !10, line: 106, type: !6)
!163 = distinct !DILexicalBlock(scope: !164, file: !10, line: 106, column: 4)
!164 = distinct !DILexicalBlock(scope: !161, file: !10, line: 105, column: 2)
!165 = !DILocation(line: 0, scope: !155)
!166 = !DILocation(line: 0, scope: !159)
!167 = !DILocation(line: 103, column: 2, scope: !159)
!168 = !DILocation(line: 103, column: 28, scope: !169)
!169 = distinct !DILexicalBlock(scope: !159, file: !10, line: 103, column: 2)
!170 = !DILocation(line: 104, column: 10, scope: !169)
!171 = !DILocation(line: 104, column: 7, scope: !169)
!172 = distinct !{!172, !167, !173, !81}
!173 = !DILocation(line: 104, column: 13, scope: !159)
!174 = !DILocation(line: 105, column: 2, scope: !161)
!175 = !DILocation(line: 0, scope: !161)
!176 = !DILocation(line: 0, scope: !163)
!177 = !DILocation(line: 106, column: 4, scope: !163)
!178 = !DILocation(line: 107, column: 12, scope: !179)
!179 = distinct !DILexicalBlock(scope: !163, file: !10, line: 106, column: 4)
!180 = !DILocation(line: 107, column: 9, scope: !179)
!181 = !DILocation(line: 105, column: 20, scope: !164)
!182 = distinct !{!182, !174, !183}
!183 = !DILocation(line: 107, column: 19, scope: !161)
!184 = !DILocation(line: 108, column: 2, scope: !155)
!185 = distinct !DISubprogram(name: "ex6", scope: !10, file: !10, line: 111, type: !67, scopeLine: 112, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!186 = !{!187, !189}
!187 = !DILocalVariable(name: "i", scope: !188, file: !10, line: 114, type: !6)
!188 = distinct !DILexicalBlock(scope: !185, file: !10, line: 114, column: 2)
!189 = !DILocalVariable(name: "j", scope: !190, file: !10, line: 115, type: !6)
!190 = distinct !DILexicalBlock(scope: !191, file: !10, line: 115, column: 3)
!191 = distinct !DILexicalBlock(scope: !192, file: !10, line: 114, column: 33)
!192 = distinct !DILexicalBlock(scope: !188, file: !10, line: 114, column: 2)
!193 = !DILocation(line: 0, scope: !188)
!194 = !DILocation(line: 114, column: 2, scope: !188)
!195 = !DILocation(line: 0, scope: !190)
!196 = !DILocation(line: 0, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !10, line: 115, column: 36)
!198 = distinct !DILexicalBlock(scope: !190, file: !10, line: 115, column: 3)
!199 = !DILocation(line: 115, column: 3, scope: !190)
!200 = !DILocation(line: 119, column: 2, scope: !185)
!201 = !DILocation(line: 114, column: 29, scope: !192)
!202 = !DILocation(line: 114, column: 20, scope: !192)
!203 = distinct !{!203, !194, !204}
!204 = !DILocation(line: 118, column: 2, scope: !188)
!205 = !DILocation(line: 116, column: 12, scope: !197)
!206 = !DILocation(line: 116, column: 21, scope: !197)
!207 = !DILocation(line: 116, column: 9, scope: !197)
!208 = !DILocation(line: 115, column: 32, scope: !198)
!209 = !DILocation(line: 115, column: 21, scope: !198)
!210 = distinct !{!210, !199, !211}
!211 = !DILocation(line: 117, column: 3, scope: !190)
!212 = distinct !DISubprogram(name: "ex7", scope: !10, file: !10, line: 122, type: !67, scopeLine: 123, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!213 = !{!214, !215, !217}
!214 = !DILocalVariable(name: "sum", scope: !212, file: !10, line: 124, type: !6)
!215 = !DILocalVariable(name: "i", scope: !216, file: !10, line: 125, type: !6)
!216 = distinct !DILexicalBlock(scope: !212, file: !10, line: 125, column: 2)
!217 = !DILocalVariable(name: "j", scope: !218, file: !10, line: 126, type: !6)
!218 = distinct !DILexicalBlock(scope: !219, file: !10, line: 126, column: 3)
!219 = distinct !DILexicalBlock(scope: !220, file: !10, line: 125, column: 33)
!220 = distinct !DILexicalBlock(scope: !216, file: !10, line: 125, column: 2)
!221 = !DILocation(line: 0, scope: !212)
!222 = !DILocation(line: 0, scope: !216)
!223 = !DILocation(line: 125, column: 2, scope: !216)
!224 = !DILocation(line: 0, scope: !218)
!225 = !DILocation(line: 0, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !10, line: 126, column: 36)
!227 = distinct !DILexicalBlock(scope: !218, file: !10, line: 126, column: 3)
!228 = !DILocation(line: 126, column: 3, scope: !218)
!229 = !DILocation(line: 126, column: 32, scope: !227)
!230 = !DILocation(line: 127, column: 11, scope: !226)
!231 = !DILocation(line: 127, column: 20, scope: !226)
!232 = !DILocation(line: 127, column: 8, scope: !226)
!233 = distinct !{!233, !228, !234, !81}
!234 = !DILocation(line: 128, column: 3, scope: !218)
!235 = !DILocation(line: 130, column: 2, scope: !212)
!236 = !DILocation(line: 125, column: 29, scope: !220)
!237 = !DILocation(line: 125, column: 20, scope: !220)
!238 = distinct !{!238, !223, !239}
!239 = !DILocation(line: 129, column: 2, scope: !216)
!240 = !DILocation(line: 126, column: 21, scope: !227)
!241 = distinct !{!241, !228, !234, !242, !81}
!242 = !{!"llvm.loop.unroll.runtime.disable"}
!243 = distinct !DISubprogram(name: "ex8", scope: !10, file: !10, line: 133, type: !244, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !56, !56}
!246 = !{!247, !248, !249, !250, !251, !252}
!247 = !DILocalVariable(name: "norm1", arg: 1, scope: !243, file: !10, line: 133, type: !56)
!248 = !DILocalVariable(name: "norm2", arg: 2, scope: !243, file: !10, line: 133, type: !56)
!249 = !DILocalVariable(name: "i", scope: !243, file: !10, line: 134, type: !6)
!250 = !DILocalVariable(name: "j", scope: !243, file: !10, line: 134, type: !6)
!251 = !DILocalVariable(name: "sum1", scope: !243, file: !10, line: 135, type: !6)
!252 = !DILocalVariable(name: "sum2", scope: !243, file: !10, line: 141, type: !6)
!253 = !DILocation(line: 0, scope: !243)
!254 = !DILocation(line: 136, column: 4, scope: !255)
!255 = distinct !DILexicalBlock(scope: !243, file: !10, line: 136, column: 4)
!256 = !DILocation(line: 137, column: 6, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !10, line: 137, column: 6)
!258 = distinct !DILexicalBlock(scope: !259, file: !10, line: 136, column: 31)
!259 = distinct !DILexicalBlock(scope: !255, file: !10, line: 136, column: 4)
!260 = !DILocation(line: 137, column: 29, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !10, line: 137, column: 6)
!262 = !DILocation(line: 138, column: 17, scope: !263)
!263 = distinct !DILexicalBlock(scope: !261, file: !10, line: 137, column: 33)
!264 = !DILocation(line: 138, column: 28, scope: !263)
!265 = !DILocation(line: 138, column: 26, scope: !263)
!266 = !DILocation(line: 138, column: 37, scope: !263)
!267 = !DILocation(line: 138, column: 13, scope: !263)
!268 = distinct !{!268, !256, !269, !81}
!269 = !DILocation(line: 139, column: 6, scope: !257)
!270 = !DILocation(line: 136, column: 27, scope: !259)
!271 = !DILocation(line: 136, column: 18, scope: !259)
!272 = distinct !{!272, !254, !273}
!273 = !DILocation(line: 140, column: 4, scope: !255)
!274 = !DILocation(line: 142, column: 4, scope: !275)
!275 = distinct !DILexicalBlock(scope: !243, file: !10, line: 142, column: 4)
!276 = !DILocation(line: 143, column: 6, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !10, line: 143, column: 6)
!278 = distinct !DILexicalBlock(scope: !279, file: !10, line: 142, column: 31)
!279 = distinct !DILexicalBlock(scope: !275, file: !10, line: 142, column: 4)
!280 = !DILocation(line: 143, column: 29, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !10, line: 143, column: 6)
!282 = !DILocation(line: 144, column: 17, scope: !283)
!283 = distinct !DILexicalBlock(scope: !281, file: !10, line: 143, column: 33)
!284 = !DILocation(line: 144, column: 28, scope: !283)
!285 = !DILocation(line: 144, column: 38, scope: !283)
!286 = !DILocation(line: 144, column: 13, scope: !283)
!287 = distinct !{!287, !276, !288, !81}
!288 = !DILocation(line: 145, column: 6, scope: !277)
!289 = !DILocation(line: 142, column: 27, scope: !279)
!290 = !DILocation(line: 142, column: 18, scope: !279)
!291 = distinct !{!291, !274, !292}
!292 = !DILocation(line: 146, column: 4, scope: !275)
!293 = !DILocation(line: 147, column: 10, scope: !243)
!294 = !DILocation(line: 148, column: 10, scope: !243)
!295 = !DILocation(line: 149, column: 1, scope: !243)
!296 = distinct !DISubprogram(name: "ex9", scope: !10, file: !10, line: 151, type: !67, scopeLine: 152, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !297)
!297 = !{!298, !300}
!298 = !DILocalVariable(name: "i", scope: !299, file: !10, line: 156, type: !6)
!299 = distinct !DILexicalBlock(scope: !296, file: !10, line: 156, column: 3)
!300 = !DILocalVariable(name: "j", scope: !301, file: !10, line: 158, type: !6)
!301 = distinct !DILexicalBlock(scope: !302, file: !10, line: 158, column: 4)
!302 = distinct !DILexicalBlock(scope: !303, file: !10, line: 156, column: 34)
!303 = distinct !DILexicalBlock(scope: !299, file: !10, line: 156, column: 3)
!304 = !DILocation(line: 0, scope: !299)
!305 = !DILocation(line: 156, column: 3, scope: !299)
!306 = !DILocation(line: 162, column: 2, scope: !296)
!307 = !DILocation(line: 157, column: 12, scope: !302)
!308 = !DILocation(line: 157, column: 19, scope: !302)
!309 = !DILocation(line: 157, column: 17, scope: !302)
!310 = !DILocation(line: 157, column: 4, scope: !302)
!311 = !DILocation(line: 157, column: 9, scope: !302)
!312 = !DILocation(line: 0, scope: !301)
!313 = !DILocation(line: 0, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !10, line: 158, column: 35)
!315 = distinct !DILexicalBlock(scope: !301, file: !10, line: 158, column: 4)
!316 = !DILocation(line: 158, column: 4, scope: !301)
!317 = !DILocation(line: 159, column: 16, scope: !314)
!318 = !DILocation(line: 159, column: 29, scope: !314)
!319 = !DILocation(line: 159, column: 38, scope: !314)
!320 = !DILocation(line: 159, column: 27, scope: !314)
!321 = !DILocation(line: 159, column: 14, scope: !314)
!322 = distinct !{!322, !316, !323, !81}
!323 = !DILocation(line: 160, column: 4, scope: !301)
!324 = !DILocation(line: 159, column: 5, scope: !314)
!325 = !DILocation(line: 156, column: 30, scope: !303)
!326 = !DILocation(line: 156, column: 21, scope: !303)
!327 = distinct !{!327, !305, !328}
!328 = !DILocation(line: 161, column: 3, scope: !299)
!329 = distinct !DISubprogram(name: "ex30", scope: !10, file: !10, line: 165, type: !67, scopeLine: 166, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !330)
!330 = !{!331, !332, !334}
!331 = !DILocalVariable(name: "sum", scope: !329, file: !10, line: 169, type: !6)
!332 = !DILocalVariable(name: "i", scope: !333, file: !10, line: 170, type: !6)
!333 = distinct !DILexicalBlock(scope: !329, file: !10, line: 170, column: 3)
!334 = !DILocalVariable(name: "j", scope: !335, file: !10, line: 172, type: !6)
!335 = distinct !DILexicalBlock(scope: !336, file: !10, line: 172, column: 4)
!336 = distinct !DILexicalBlock(scope: !337, file: !10, line: 170, column: 34)
!337 = distinct !DILexicalBlock(scope: !333, file: !10, line: 170, column: 3)
!338 = !DILocation(line: 0, scope: !329)
!339 = !DILocation(line: 0, scope: !333)
!340 = !DILocation(line: 170, column: 3, scope: !333)
!341 = !DILocation(line: 176, column: 2, scope: !329)
!342 = !DILocation(line: 171, column: 12, scope: !336)
!343 = !DILocation(line: 171, column: 19, scope: !336)
!344 = !DILocation(line: 171, column: 17, scope: !336)
!345 = !DILocation(line: 171, column: 4, scope: !336)
!346 = !DILocation(line: 171, column: 9, scope: !336)
!347 = !DILocation(line: 0, scope: !335)
!348 = !DILocation(line: 0, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !10, line: 172, column: 35)
!350 = distinct !DILexicalBlock(scope: !335, file: !10, line: 172, column: 4)
!351 = !DILocation(line: 172, column: 4, scope: !335)
!352 = !DILocation(line: 173, column: 12, scope: !349)
!353 = !DILocation(line: 173, column: 25, scope: !349)
!354 = !DILocation(line: 173, column: 34, scope: !349)
!355 = !DILocation(line: 173, column: 23, scope: !349)
!356 = !DILocation(line: 173, column: 9, scope: !349)
!357 = distinct !{!357, !351, !358, !81}
!358 = !DILocation(line: 174, column: 4, scope: !335)
!359 = !DILocation(line: 170, column: 30, scope: !337)
!360 = !DILocation(line: 170, column: 21, scope: !337)
!361 = distinct !{!361, !340, !362}
!362 = !DILocation(line: 175, column: 3, scope: !333)
!363 = distinct !DISubprogram(name: "ex10", scope: !10, file: !10, line: 179, type: !67, scopeLine: 180, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !364)
!364 = !{!365, !366}
!365 = !DILocalVariable(name: "mid", scope: !363, file: !10, line: 185, type: !6)
!366 = !DILocalVariable(name: "i", scope: !367, file: !10, line: 186, type: !6)
!367 = distinct !DILexicalBlock(scope: !363, file: !10, line: 186, column: 3)
!368 = !DILocation(line: 0, scope: !363)
!369 = !DILocation(line: 0, scope: !367)
!370 = !DILocation(line: 186, column: 3, scope: !367)
!371 = !DILocation(line: 193, column: 2, scope: !363)
!372 = !DILocation(line: 187, column: 9, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !10, line: 187, column: 8)
!374 = distinct !DILexicalBlock(scope: !375, file: !10, line: 186, column: 33)
!375 = distinct !DILexicalBlock(scope: !367, file: !10, line: 186, column: 3)
!376 = !DILocation(line: 187, column: 12, scope: !373)
!377 = !DILocation(line: 0, scope: !373)
!378 = !DILocation(line: 187, column: 8, scope: !374)
!379 = !DILocation(line: 186, column: 21, scope: !375)
!380 = distinct !{!380, !370, !381}
!381 = !DILocation(line: 192, column: 3, scope: !367)
!382 = distinct !DISubprogram(name: "ex31", scope: !10, file: !10, line: 196, type: !67, scopeLine: 197, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !383)
!383 = !{!384, !385, !386}
!384 = !DILocalVariable(name: "sum", scope: !382, file: !10, line: 201, type: !6)
!385 = !DILocalVariable(name: "mid", scope: !382, file: !10, line: 202, type: !6)
!386 = !DILocalVariable(name: "i", scope: !387, file: !10, line: 203, type: !6)
!387 = distinct !DILexicalBlock(scope: !382, file: !10, line: 203, column: 3)
!388 = !DILocation(line: 0, scope: !382)
!389 = !DILocation(line: 0, scope: !387)
!390 = !DILocation(line: 203, column: 3, scope: !387)
!391 = !DILocation(line: 210, column: 2, scope: !382)
!392 = !DILocation(line: 204, column: 9, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !10, line: 204, column: 8)
!394 = distinct !DILexicalBlock(scope: !395, file: !10, line: 203, column: 33)
!395 = distinct !DILexicalBlock(scope: !387, file: !10, line: 203, column: 3)
!396 = !DILocation(line: 204, column: 12, scope: !393)
!397 = !DILocation(line: 0, scope: !393)
!398 = !DILocation(line: 203, column: 21, scope: !395)
!399 = distinct !{!399, !390, !400}
!400 = !DILocation(line: 209, column: 3, scope: !387)
!401 = distinct !DISubprogram(name: "ex11", scope: !10, file: !10, line: 213, type: !67, scopeLine: 214, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !402)
!402 = !{!403, !405, !408}
!403 = !DILocalVariable(name: "i", scope: !404, file: !10, line: 219, type: !6)
!404 = distinct !DILexicalBlock(scope: !401, file: !10, line: 219, column: 3)
!405 = !DILabel(scope: !406, name: "L30", file: !10, line: 227)
!406 = distinct !DILexicalBlock(scope: !407, file: !10, line: 219, column: 35)
!407 = distinct !DILexicalBlock(scope: !404, file: !10, line: 219, column: 3)
!408 = !DILabel(scope: !406, name: "L20", file: !10, line: 229)
!409 = !DILocation(line: 0, scope: !404)
!410 = !DILocation(line: 219, column: 3, scope: !404)
!411 = !DILocation(line: 232, column: 2, scope: !401)
!412 = !DILocation(line: 220, column: 9, scope: !413)
!413 = distinct !DILexicalBlock(scope: !406, file: !10, line: 220, column: 9)
!414 = !DILocation(line: 220, column: 14, scope: !413)
!415 = !DILocation(line: 220, column: 9, scope: !406)
!416 = !DILocation(line: 219, column: 31, scope: !407)
!417 = !DILocation(line: 223, column: 9, scope: !418)
!418 = distinct !DILexicalBlock(scope: !406, file: !10, line: 223, column: 9)
!419 = !DILocation(line: 223, column: 14, scope: !418)
!420 = !DILocation(line: 0, scope: !406)
!421 = !DILocation(line: 223, column: 9, scope: !406)
!422 = !DILocation(line: 226, column: 18, scope: !406)
!423 = !DILocation(line: 226, column: 10, scope: !406)
!424 = !DILocation(line: 226, column: 5, scope: !406)
!425 = !DILocation(line: 227, column: 1, scope: !406)
!426 = !DILocation(line: 228, column: 28, scope: !406)
!427 = !DILocation(line: 228, column: 26, scope: !406)
!428 = !DILocation(line: 228, column: 19, scope: !406)
!429 = !DILocation(line: 228, column: 8, scope: !406)
!430 = !DILocation(line: 228, column: 5, scope: !406)
!431 = !DILocation(line: 228, column: 12, scope: !406)
!432 = !DILocation(line: 229, column: 1, scope: !406)
!433 = !DILocation(line: 219, column: 21, scope: !407)
!434 = distinct !{!434, !410, !435}
!435 = !DILocation(line: 231, column: 3, scope: !404)
!436 = distinct !DISubprogram(name: "ex32", scope: !10, file: !10, line: 235, type: !67, scopeLine: 236, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !437)
!437 = !{!438, !439, !441, !444}
!438 = !DILocalVariable(name: "sum", scope: !436, file: !10, line: 240, type: !6)
!439 = !DILocalVariable(name: "i", scope: !440, file: !10, line: 241, type: !6)
!440 = distinct !DILexicalBlock(scope: !436, file: !10, line: 241, column: 3)
!441 = !DILabel(scope: !442, name: "L30", file: !10, line: 249)
!442 = distinct !DILexicalBlock(scope: !443, file: !10, line: 241, column: 35)
!443 = distinct !DILexicalBlock(scope: !440, file: !10, line: 241, column: 3)
!444 = !DILabel(scope: !442, name: "L20", file: !10, line: 251)
!445 = !DILocation(line: 0, scope: !436)
!446 = !DILocation(line: 0, scope: !440)
!447 = !DILocation(line: 241, column: 3, scope: !440)
!448 = !DILocation(line: 241, column: 31, scope: !443)
!449 = !DILocation(line: 242, column: 9, scope: !450)
!450 = distinct !DILexicalBlock(scope: !442, file: !10, line: 242, column: 9)
!451 = !DILocation(line: 242, column: 14, scope: !450)
!452 = !DILocation(line: 245, column: 9, scope: !453)
!453 = distinct !DILexicalBlock(scope: !442, file: !10, line: 245, column: 9)
!454 = !DILocation(line: 0, scope: !442)
!455 = !DILocation(line: 245, column: 9, scope: !442)
!456 = !DILocation(line: 250, column: 26, scope: !442)
!457 = !DILocation(line: 250, column: 24, scope: !442)
!458 = !DILocation(line: 250, column: 17, scope: !442)
!459 = !DILocation(line: 250, column: 9, scope: !442)
!460 = distinct !{!460, !447, !461, !81}
!461 = !DILocation(line: 253, column: 3, scope: !440)
!462 = !DILocation(line: 242, column: 9, scope: !442)
!463 = !DILocation(line: 249, column: 1, scope: !442)
!464 = !DILocation(line: 250, column: 5, scope: !442)
!465 = !DILocation(line: 251, column: 1, scope: !442)
!466 = !DILocation(line: 254, column: 2, scope: !436)
!467 = distinct !DISubprogram(name: "ex12", scope: !10, file: !10, line: 260, type: !67, scopeLine: 261, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!468 = !{!469, !471, !474}
!469 = !DILocalVariable(name: "i", scope: !470, file: !10, line: 266, type: !6)
!470 = distinct !DILexicalBlock(scope: !467, file: !10, line: 266, column: 3)
!471 = !DILabel(scope: !472, name: "L20", file: !10, line: 272)
!472 = distinct !DILexicalBlock(scope: !473, file: !10, line: 266, column: 33)
!473 = distinct !DILexicalBlock(scope: !470, file: !10, line: 266, column: 3)
!474 = !DILabel(scope: !472, name: "L30", file: !10, line: 274)
!475 = !DILocation(line: 0, scope: !470)
!476 = !DILocation(line: 266, column: 3, scope: !470)
!477 = !DILocation(line: 277, column: 2, scope: !467)
!478 = !DILocation(line: 267, column: 8, scope: !479)
!479 = distinct !DILexicalBlock(scope: !472, file: !10, line: 267, column: 8)
!480 = !DILocation(line: 267, column: 13, scope: !479)
!481 = !DILocation(line: 267, column: 8, scope: !472)
!482 = !DILocation(line: 270, column: 12, scope: !472)
!483 = !DILocation(line: 270, column: 19, scope: !472)
!484 = !DILocation(line: 270, column: 26, scope: !472)
!485 = !DILocation(line: 270, column: 24, scope: !472)
!486 = !DILocation(line: 270, column: 17, scope: !472)
!487 = !DILocation(line: 270, column: 9, scope: !472)
!488 = !DILocation(line: 275, column: 18, scope: !472)
!489 = !DILocation(line: 271, column: 4, scope: !472)
!490 = !DILocation(line: 272, column: 1, scope: !472)
!491 = !DILocation(line: 273, column: 12, scope: !472)
!492 = !DILocation(line: 273, column: 19, scope: !472)
!493 = !DILocation(line: 273, column: 26, scope: !472)
!494 = !DILocation(line: 273, column: 24, scope: !472)
!495 = !DILocation(line: 273, column: 17, scope: !472)
!496 = !DILocation(line: 273, column: 9, scope: !472)
!497 = !DILocation(line: 275, column: 11, scope: !472)
!498 = !DILocation(line: 273, column: 4, scope: !472)
!499 = !DILocation(line: 275, column: 25, scope: !472)
!500 = !DILocation(line: 274, column: 1, scope: !472)
!501 = !DILocation(line: 275, column: 23, scope: !472)
!502 = !DILocation(line: 275, column: 16, scope: !472)
!503 = !DILocation(line: 275, column: 9, scope: !472)
!504 = !DILocation(line: 266, column: 21, scope: !473)
!505 = distinct !{!505, !476, !506}
!506 = !DILocation(line: 276, column: 3, scope: !470)
!507 = distinct !DISubprogram(name: "ex33", scope: !10, file: !10, line: 280, type: !67, scopeLine: 281, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !508)
!508 = !{!509, !510, !512, !515}
!509 = !DILocalVariable(name: "sum", scope: !507, file: !10, line: 285, type: !6)
!510 = !DILocalVariable(name: "i", scope: !511, file: !10, line: 286, type: !6)
!511 = distinct !DILexicalBlock(scope: !507, file: !10, line: 286, column: 3)
!512 = !DILabel(scope: !513, name: "L20", file: !10, line: 292)
!513 = distinct !DILexicalBlock(scope: !514, file: !10, line: 286, column: 33)
!514 = distinct !DILexicalBlock(scope: !511, file: !10, line: 286, column: 3)
!515 = !DILabel(scope: !513, name: "L30", file: !10, line: 294)
!516 = !DILocation(line: 0, scope: !507)
!517 = !DILocation(line: 0, scope: !511)
!518 = !DILocation(line: 286, column: 3, scope: !511)
!519 = !DILocation(line: 286, column: 29, scope: !514)
!520 = !DILocation(line: 287, column: 8, scope: !521)
!521 = distinct !DILexicalBlock(scope: !513, file: !10, line: 287, column: 8)
!522 = !DILocation(line: 287, column: 13, scope: !521)
!523 = !DILocation(line: 290, column: 12, scope: !513)
!524 = !DILocation(line: 290, column: 19, scope: !513)
!525 = !DILocation(line: 290, column: 26, scope: !513)
!526 = !DILocation(line: 290, column: 24, scope: !513)
!527 = !DILocation(line: 295, column: 18, scope: !513)
!528 = !DILocation(line: 295, column: 23, scope: !513)
!529 = !DILocation(line: 295, column: 16, scope: !513)
!530 = !DILocation(line: 0, scope: !513)
!531 = !DILocation(line: 295, column: 8, scope: !513)
!532 = distinct !{!532, !518, !533, !81}
!533 = !DILocation(line: 296, column: 3, scope: !511)
!534 = !DILocation(line: 297, column: 2, scope: !507)
!535 = distinct !DISubprogram(name: "ex13", scope: !10, file: !10, line: 301, type: !67, scopeLine: 302, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!536 = !{!537, !539, !542}
!537 = !DILocalVariable(name: "i", scope: !538, file: !10, line: 307, type: !6)
!538 = distinct !DILexicalBlock(scope: !535, file: !10, line: 307, column: 3)
!539 = !DILabel(scope: !540, name: "L20", file: !10, line: 317)
!540 = distinct !DILexicalBlock(scope: !541, file: !10, line: 307, column: 33)
!541 = distinct !DILexicalBlock(scope: !538, file: !10, line: 307, column: 3)
!542 = !DILabel(scope: !540, name: "L30", file: !10, line: 319)
!543 = !DILocation(line: 0, scope: !538)
!544 = !DILocation(line: 307, column: 3, scope: !538)
!545 = !DILocation(line: 322, column: 5, scope: !535)
!546 = !DILocation(line: 308, column: 8, scope: !547)
!547 = distinct !DILexicalBlock(scope: !540, file: !10, line: 308, column: 8)
!548 = !DILocation(line: 308, column: 13, scope: !547)
!549 = !DILocation(line: 308, column: 8, scope: !540)
!550 = !DILocation(line: 311, column: 12, scope: !540)
!551 = !DILocation(line: 311, column: 19, scope: !540)
!552 = !DILocation(line: 311, column: 24, scope: !540)
!553 = !DILocation(line: 311, column: 17, scope: !540)
!554 = !DILocation(line: 311, column: 9, scope: !540)
!555 = !DILocation(line: 312, column: 13, scope: !556)
!556 = distinct !DILexicalBlock(scope: !540, file: !10, line: 312, column: 8)
!557 = !DILocation(line: 312, column: 8, scope: !540)
!558 = !DILocation(line: 320, column: 18, scope: !540)
!559 = !DILocation(line: 315, column: 19, scope: !540)
!560 = !DILocation(line: 315, column: 17, scope: !540)
!561 = !DILocation(line: 315, column: 9, scope: !540)
!562 = !DILocation(line: 316, column: 4, scope: !540)
!563 = !DILocation(line: 317, column: 1, scope: !540)
!564 = !DILocation(line: 318, column: 12, scope: !540)
!565 = !DILocation(line: 318, column: 19, scope: !540)
!566 = !DILocation(line: 318, column: 24, scope: !540)
!567 = !DILocation(line: 318, column: 17, scope: !540)
!568 = !DILocation(line: 318, column: 9, scope: !540)
!569 = !DILocation(line: 320, column: 11, scope: !540)
!570 = !DILocation(line: 320, column: 25, scope: !540)
!571 = !DILocation(line: 318, column: 4, scope: !540)
!572 = !DILocation(line: 319, column: 1, scope: !540)
!573 = !DILocation(line: 320, column: 23, scope: !540)
!574 = !DILocation(line: 320, column: 16, scope: !540)
!575 = !DILocation(line: 320, column: 9, scope: !540)
!576 = !DILocation(line: 307, column: 21, scope: !541)
!577 = distinct !{!577, !544, !578}
!578 = !DILocation(line: 321, column: 3, scope: !538)
!579 = distinct !DISubprogram(name: "ex34", scope: !10, file: !10, line: 325, type: !67, scopeLine: 326, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !580)
!580 = !{!581, !582, !584, !587}
!581 = !DILocalVariable(name: "sum", scope: !579, file: !10, line: 330, type: !6)
!582 = !DILocalVariable(name: "i", scope: !583, file: !10, line: 331, type: !6)
!583 = distinct !DILexicalBlock(scope: !579, file: !10, line: 331, column: 3)
!584 = !DILabel(scope: !585, name: "L20", file: !10, line: 341)
!585 = distinct !DILexicalBlock(scope: !586, file: !10, line: 331, column: 33)
!586 = distinct !DILexicalBlock(scope: !583, file: !10, line: 331, column: 3)
!587 = !DILabel(scope: !585, name: "L30", file: !10, line: 343)
!588 = !DILocation(line: 0, scope: !579)
!589 = !DILocation(line: 0, scope: !583)
!590 = !DILocation(line: 331, column: 3, scope: !583)
!591 = !DILocation(line: 346, column: 5, scope: !579)
!592 = !DILocation(line: 332, column: 8, scope: !593)
!593 = distinct !DILexicalBlock(scope: !585, file: !10, line: 332, column: 8)
!594 = !DILocation(line: 332, column: 13, scope: !593)
!595 = !DILocation(line: 332, column: 8, scope: !585)
!596 = !DILocation(line: 335, column: 12, scope: !585)
!597 = !DILocation(line: 335, column: 19, scope: !585)
!598 = !DILocation(line: 335, column: 24, scope: !585)
!599 = !DILocation(line: 335, column: 17, scope: !585)
!600 = !DILocation(line: 335, column: 8, scope: !585)
!601 = !DILocation(line: 336, column: 13, scope: !602)
!602 = distinct !DILexicalBlock(scope: !585, file: !10, line: 336, column: 8)
!603 = !DILocation(line: 336, column: 8, scope: !585)
!604 = !DILocation(line: 339, column: 18, scope: !585)
!605 = !DILocation(line: 339, column: 16, scope: !585)
!606 = !DILocation(line: 339, column: 8, scope: !585)
!607 = !DILocation(line: 340, column: 4, scope: !585)
!608 = !DILocation(line: 341, column: 1, scope: !585)
!609 = !DILocation(line: 342, column: 12, scope: !585)
!610 = !DILocation(line: 342, column: 19, scope: !585)
!611 = !DILocation(line: 342, column: 24, scope: !585)
!612 = !DILocation(line: 342, column: 17, scope: !585)
!613 = !DILocation(line: 342, column: 8, scope: !585)
!614 = !DILocation(line: 344, column: 11, scope: !585)
!615 = !DILocation(line: 344, column: 25, scope: !585)
!616 = !DILocation(line: 342, column: 4, scope: !585)
!617 = !DILocation(line: 0, scope: !585)
!618 = !DILocation(line: 343, column: 1, scope: !585)
!619 = !DILocation(line: 344, column: 18, scope: !585)
!620 = !DILocation(line: 344, column: 23, scope: !585)
!621 = !DILocation(line: 344, column: 16, scope: !585)
!622 = !DILocation(line: 344, column: 8, scope: !585)
!623 = !DILocation(line: 331, column: 21, scope: !586)
!624 = distinct !{!624, !590, !625}
!625 = !DILocation(line: 345, column: 3, scope: !583)
!626 = distinct !DISubprogram(name: "ex14", scope: !10, file: !10, line: 349, type: !67, scopeLine: 350, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !627)
!627 = !{!628}
!628 = !DILocalVariable(name: "i", scope: !629, file: !10, line: 355, type: !6)
!629 = distinct !DILexicalBlock(scope: !626, file: !10, line: 355, column: 3)
!630 = !DILocation(line: 0, scope: !629)
!631 = !DILocation(line: 355, column: 3, scope: !629)
!632 = !DILocation(line: 355, column: 29, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !10, line: 355, column: 3)
!634 = !DILocation(line: 356, column: 8, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !10, line: 356, column: 8)
!636 = distinct !DILexicalBlock(scope: !633, file: !10, line: 355, column: 33)
!637 = !DILocation(line: 356, column: 13, scope: !635)
!638 = !DILocation(line: 357, column: 9, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !10, line: 357, column: 9)
!640 = distinct !DILexicalBlock(scope: !635, file: !10, line: 356, column: 25)
!641 = !DILocation(line: 357, column: 14, scope: !639)
!642 = !DILocation(line: 358, column: 14, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !10, line: 357, column: 22)
!644 = !DILocation(line: 358, column: 21, scope: !643)
!645 = !DILocation(line: 358, column: 19, scope: !643)
!646 = !DILocation(line: 358, column: 11, scope: !643)
!647 = distinct !{!647, !631, !648, !81}
!648 = !DILocation(line: 361, column: 3, scope: !629)
!649 = !DILocation(line: 362, column: 2, scope: !626)
!650 = distinct !DISubprogram(name: "ex15", scope: !10, file: !10, line: 368, type: !651, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !653)
!651 = !DISubroutineType(types: !652)
!652 = !{!6, !6}
!653 = !{!654, !655}
!654 = !DILocalVariable(name: "x", arg: 1, scope: !650, file: !10, line: 368, type: !6)
!655 = !DILocalVariable(name: "i", scope: !656, file: !10, line: 374, type: !6)
!656 = distinct !DILexicalBlock(scope: !650, file: !10, line: 374, column: 3)
!657 = !DILocation(line: 0, scope: !650)
!658 = !DILocation(line: 0, scope: !656)
!659 = !DILocation(line: 0, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !10, line: 384, column: 9)
!661 = distinct !DILexicalBlock(scope: !662, file: !10, line: 382, column: 11)
!662 = distinct !DILexicalBlock(scope: !663, file: !10, line: 375, column: 8)
!663 = distinct !DILexicalBlock(scope: !664, file: !10, line: 374, column: 33)
!664 = distinct !DILexicalBlock(scope: !656, file: !10, line: 374, column: 3)
!665 = !DILocation(line: 374, column: 3, scope: !656)
!666 = !DILocation(line: 375, column: 8, scope: !662)
!667 = !DILocation(line: 375, column: 15, scope: !662)
!668 = !DILocation(line: 375, column: 13, scope: !662)
!669 = !DILocation(line: 375, column: 8, scope: !663)
!670 = !DILocation(line: 383, column: 19, scope: !661)
!671 = !DILocation(line: 383, column: 24, scope: !661)
!672 = !DILocation(line: 383, column: 17, scope: !661)
!673 = !DILocation(line: 383, column: 10, scope: !661)
!674 = !DILocation(line: 385, column: 20, scope: !675)
!675 = distinct !DILexicalBlock(scope: !660, file: !10, line: 384, column: 23)
!676 = !DILocation(line: 385, column: 25, scope: !675)
!677 = !DILocation(line: 385, column: 18, scope: !675)
!678 = !DILocation(line: 385, column: 11, scope: !675)
!679 = !DILocation(line: 386, column: 5, scope: !675)
!680 = !DILocation(line: 376, column: 20, scope: !681)
!681 = distinct !DILexicalBlock(scope: !662, file: !10, line: 375, column: 21)
!682 = !DILocation(line: 376, column: 18, scope: !681)
!683 = !DILocation(line: 376, column: 10, scope: !681)
!684 = !DILocation(line: 378, column: 19, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !10, line: 377, column: 19)
!686 = distinct !DILexicalBlock(scope: !681, file: !10, line: 377, column: 9)
!687 = !DILocation(line: 378, column: 11, scope: !685)
!688 = !DILocation(line: 382, column: 4, scope: !681)
!689 = !DILocation(line: 374, column: 21, scope: !664)
!690 = distinct !{!690, !665, !691}
!691 = !DILocation(line: 390, column: 3, scope: !656)
!692 = !DILocation(line: 391, column: 2, scope: !650)
!693 = !DILocation(line: 0, scope: !662)
!694 = distinct !DISubprogram(name: "ex36", scope: !10, file: !10, line: 395, type: !651, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !695)
!695 = !{!696, !697, !698}
!696 = !DILocalVariable(name: "x", arg: 1, scope: !694, file: !10, line: 395, type: !6)
!697 = !DILocalVariable(name: "sum", scope: !694, file: !10, line: 400, type: !6)
!698 = !DILocalVariable(name: "i", scope: !699, file: !10, line: 401, type: !6)
!699 = distinct !DILexicalBlock(scope: !694, file: !10, line: 401, column: 3)
!700 = !DILocation(line: 0, scope: !694)
!701 = !DILocation(line: 0, scope: !699)
!702 = !DILocation(line: 0, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !10, line: 411, column: 9)
!704 = distinct !DILexicalBlock(scope: !705, file: !10, line: 409, column: 11)
!705 = distinct !DILexicalBlock(scope: !706, file: !10, line: 402, column: 8)
!706 = distinct !DILexicalBlock(scope: !707, file: !10, line: 401, column: 33)
!707 = distinct !DILexicalBlock(scope: !699, file: !10, line: 401, column: 3)
!708 = !DILocation(line: 401, column: 3, scope: !699)
!709 = !DILocation(line: 402, column: 8, scope: !705)
!710 = !DILocation(line: 402, column: 15, scope: !705)
!711 = !DILocation(line: 402, column: 13, scope: !705)
!712 = !DILocation(line: 402, column: 8, scope: !706)
!713 = !DILocation(line: 410, column: 18, scope: !704)
!714 = !DILocation(line: 410, column: 23, scope: !704)
!715 = !DILocation(line: 410, column: 16, scope: !704)
!716 = !DILocation(line: 412, column: 20, scope: !717)
!717 = distinct !DILexicalBlock(scope: !703, file: !10, line: 411, column: 23)
!718 = !DILocation(line: 412, column: 25, scope: !717)
!719 = !DILocation(line: 412, column: 18, scope: !717)
!720 = !DILocation(line: 412, column: 10, scope: !717)
!721 = !DILocation(line: 413, column: 5, scope: !717)
!722 = !DILocation(line: 403, column: 19, scope: !723)
!723 = distinct !DILexicalBlock(scope: !705, file: !10, line: 402, column: 21)
!724 = !DILocation(line: 405, column: 10, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !10, line: 404, column: 19)
!726 = distinct !DILexicalBlock(scope: !723, file: !10, line: 404, column: 9)
!727 = !DILocation(line: 409, column: 4, scope: !723)
!728 = !DILocation(line: 0, scope: !705)
!729 = !DILocation(line: 401, column: 21, scope: !707)
!730 = distinct !{!730, !708, !731}
!731 = !DILocation(line: 417, column: 3, scope: !699)
!732 = !DILocation(line: 418, column: 2, scope: !694)
!733 = !DILocation(line: 414, column: 10, scope: !734)
!734 = distinct !DILexicalBlock(scope: !703, file: !10, line: 413, column: 12)
!735 = distinct !DISubprogram(name: "ex17", scope: !10, file: !10, line: 424, type: !67, scopeLine: 425, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !736)
!736 = !{!737, !738, !739, !740, !741, !743}
!737 = !DILocalVariable(name: "xindex", scope: !735, file: !10, line: 429, type: !6)
!738 = !DILocalVariable(name: "yindex", scope: !735, file: !10, line: 429, type: !6)
!739 = !DILocalVariable(name: "sum", scope: !735, file: !10, line: 430, type: !6)
!740 = !DILocalVariable(name: "chksum", scope: !735, file: !10, line: 430, type: !6)
!741 = !DILocalVariable(name: "i", scope: !742, file: !10, line: 434, type: !6)
!742 = distinct !DILexicalBlock(scope: !735, file: !10, line: 434, column: 3)
!743 = !DILocalVariable(name: "j", scope: !744, file: !10, line: 435, type: !6)
!744 = distinct !DILexicalBlock(scope: !745, file: !10, line: 435, column: 4)
!745 = distinct !DILexicalBlock(scope: !746, file: !10, line: 434, column: 34)
!746 = distinct !DILexicalBlock(scope: !742, file: !10, line: 434, column: 3)
!747 = !DILocation(line: 0, scope: !735)
!748 = !DILocation(line: 0, scope: !742)
!749 = !DILocation(line: 434, column: 3, scope: !742)
!750 = !DILocation(line: 0, scope: !744)
!751 = !DILocation(line: 435, column: 4, scope: !744)
!752 = !DILocation(line: 435, column: 31, scope: !753)
!753 = distinct !DILexicalBlock(scope: !744, file: !10, line: 435, column: 4)
!754 = !DILocation(line: 436, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !10, line: 436, column: 9)
!756 = distinct !DILexicalBlock(scope: !753, file: !10, line: 435, column: 35)
!757 = !DILocation(line: 436, column: 18, scope: !755)
!758 = !DILocation(line: 436, column: 9, scope: !756)
!759 = distinct !{!759, !751, !760, !81}
!760 = !DILocation(line: 441, column: 4, scope: !744)
!761 = !DILocation(line: 434, column: 30, scope: !746)
!762 = !DILocation(line: 434, column: 21, scope: !746)
!763 = distinct !{!763, !749, !764}
!764 = !DILocation(line: 442, column: 3, scope: !742)
!765 = !DILocation(line: 444, column: 21, scope: !735)
!766 = !DILocation(line: 444, column: 24, scope: !735)
!767 = !DILocation(line: 444, column: 32, scope: !735)
!768 = !DILocation(line: 444, column: 7, scope: !735)
!769 = !DILocation(line: 445, column: 2, scope: !735)
!770 = distinct !DISubprogram(name: "ex18", scope: !10, file: !10, line: 448, type: !67, scopeLine: 449, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !771)
!771 = !{!772, !773}
!772 = !DILocalVariable(name: "sum", scope: !770, file: !10, line: 454, type: !6)
!773 = !DILocalVariable(name: "i", scope: !774, file: !10, line: 456, type: !6)
!774 = distinct !DILexicalBlock(scope: !770, file: !10, line: 456, column: 3)
!775 = !DILocation(line: 0, scope: !770)
!776 = !DILocation(line: 0, scope: !774)
!777 = !DILocation(line: 456, column: 3, scope: !774)
!778 = !DILocation(line: 456, column: 29, scope: !779)
!779 = distinct !DILexicalBlock(scope: !774, file: !10, line: 456, column: 3)
!780 = !DILocation(line: 457, column: 8, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !10, line: 457, column: 8)
!782 = distinct !DILexicalBlock(scope: !779, file: !10, line: 456, column: 33)
!783 = !DILocation(line: 457, column: 13, scope: !781)
!784 = !DILocation(line: 457, column: 8, scope: !782)
!785 = distinct !{!785, !777, !786, !81}
!786 = !DILocation(line: 460, column: 3, scope: !774)
!787 = !DILocation(line: 461, column: 7, scope: !770)
!788 = !DILocation(line: 462, column: 2, scope: !770)
!789 = distinct !DISubprogram(name: "ex20", scope: !10, file: !10, line: 487, type: !651, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !790)
!790 = !{!791, !792, !793, !794, !795, !797}
!791 = !DILocalVariable(name: "t", arg: 1, scope: !789, file: !10, line: 487, type: !6)
!792 = !DILocalVariable(name: "index", scope: !789, file: !10, line: 493, type: !6)
!793 = !DILocalVariable(name: "value", scope: !789, file: !10, line: 494, type: !6)
!794 = !DILocalVariable(name: "chksum", scope: !789, file: !10, line: 495, type: !6)
!795 = !DILocalVariable(name: "i", scope: !796, file: !10, line: 498, type: !6)
!796 = distinct !DILexicalBlock(scope: !789, file: !10, line: 498, column: 3)
!797 = !DILabel(scope: !789, name: "L20", file: !10, line: 505)
!798 = !DILocation(line: 0, scope: !789)
!799 = !DILocation(line: 0, scope: !796)
!800 = !DILocation(line: 498, column: 3, scope: !796)
!801 = !DILocation(line: 498, column: 21, scope: !802)
!802 = distinct !DILexicalBlock(scope: !796, file: !10, line: 498, column: 3)
!803 = distinct !{!803, !800, !804}
!804 = !DILocation(line: 504, column: 3, scope: !796)
!805 = !DILocation(line: 499, column: 8, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !10, line: 499, column: 8)
!807 = distinct !DILexicalBlock(scope: !802, file: !10, line: 498, column: 33)
!808 = !DILocation(line: 499, column: 13, scope: !806)
!809 = !DILocation(line: 499, column: 8, scope: !807)
!810 = !DILocation(line: 505, column: 1, scope: !789)
!811 = !DILocation(line: 507, column: 7, scope: !789)
!812 = !DILocation(line: 509, column: 1, scope: !789)
!813 = distinct !DISubprogram(name: "ex21", scope: !10, file: !10, line: 512, type: !67, scopeLine: 513, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !814)
!814 = !{!815, !816, !817}
!815 = !DILocalVariable(name: "alpha", scope: !813, file: !10, line: 518, type: !6)
!816 = !DILocalVariable(name: "i1", scope: !813, file: !10, line: 519, type: !6)
!817 = !DILocalVariable(name: "i", scope: !818, file: !10, line: 520, type: !6)
!818 = distinct !DILexicalBlock(scope: !813, file: !10, line: 520, column: 2)
!819 = !DILocation(line: 518, column: 15, scope: !813)
!820 = !DILocation(line: 0, scope: !813)
!821 = !DILocation(line: 0, scope: !818)
!822 = !DILocation(line: 522, column: 17, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !10, line: 520, column: 36)
!824 = distinct !DILexicalBlock(scope: !818, file: !10, line: 520, column: 2)
!825 = !DILocation(line: 520, column: 2, scope: !818)
!826 = !DILocation(line: 528, column: 2, scope: !813)
!827 = !DILocation(line: 522, column: 19, scope: !823)
!828 = !DILocation(line: 522, column: 8, scope: !823)
!829 = !DILocation(line: 526, column: 23, scope: !823)
!830 = !DILocation(line: 526, column: 21, scope: !823)
!831 = !DILocation(line: 526, column: 12, scope: !823)
!832 = !DILocation(line: 520, column: 20, scope: !824)
!833 = distinct !{!833, !825, !834}
!834 = !DILocation(line: 527, column: 2, scope: !818)
!835 = distinct !DISubprogram(name: "ex37", scope: !10, file: !10, line: 531, type: !67, scopeLine: 532, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !836)
!836 = !{!837, !838, !839}
!837 = !DILocalVariable(name: "sum", scope: !835, file: !10, line: 537, type: !6)
!838 = !DILocalVariable(name: "i1", scope: !835, file: !10, line: 538, type: !6)
!839 = !DILocalVariable(name: "i", scope: !840, file: !10, line: 539, type: !6)
!840 = distinct !DILexicalBlock(scope: !835, file: !10, line: 539, column: 2)
!841 = !DILocation(line: 0, scope: !835)
!842 = !DILocation(line: 0, scope: !840)
!843 = !DILocation(line: 539, column: 2, scope: !840)
!844 = !DILocation(line: 547, column: 2, scope: !835)
!845 = !DILocation(line: 541, column: 11, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !10, line: 539, column: 36)
!847 = distinct !DILexicalBlock(scope: !840, file: !10, line: 539, column: 2)
!848 = !DILocation(line: 545, column: 11, scope: !846)
!849 = !DILocation(line: 545, column: 7, scope: !846)
!850 = !DILocation(line: 541, column: 7, scope: !846)
!851 = !DILocation(line: 539, column: 20, scope: !847)
!852 = distinct !{!852, !843, !853}
!853 = !DILocation(line: 546, column: 2, scope: !840)
!854 = distinct !DISubprogram(name: "ex22", scope: !10, file: !10, line: 551, type: !67, scopeLine: 552, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !855)
!855 = !{!856, !858}
!856 = !DILocalVariable(name: "i", scope: !857, file: !10, line: 559, type: !6)
!857 = distinct !DILexicalBlock(scope: !854, file: !10, line: 559, column: 3)
!858 = !DILocalVariable(name: "i", scope: !859, file: !10, line: 563, type: !6)
!859 = distinct !DILexicalBlock(scope: !854, file: !10, line: 563, column: 2)
!860 = !DILocation(line: 558, column: 5, scope: !854)
!861 = !DILocation(line: 0, scope: !857)
!862 = !DILocation(line: 560, column: 12, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !10, line: 559, column: 33)
!864 = distinct !DILexicalBlock(scope: !857, file: !10, line: 559, column: 3)
!865 = !DILocation(line: 560, column: 27, scope: !863)
!866 = !DILocation(line: 560, column: 25, scope: !863)
!867 = !DILocation(line: 560, column: 10, scope: !863)
!868 = !DILocation(line: 559, column: 3, scope: !857)
!869 = !DILocation(line: 562, column: 7, scope: !854)
!870 = !DILocation(line: 0, scope: !859)
!871 = !DILocation(line: 0, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !10, line: 563, column: 31)
!873 = distinct !DILexicalBlock(scope: !859, file: !10, line: 563, column: 2)
!874 = !DILocation(line: 563, column: 2, scope: !859)
!875 = !DILocation(line: 560, column: 4, scope: !863)
!876 = !DILocation(line: 559, column: 21, scope: !864)
!877 = distinct !{!877, !868, !878}
!878 = !DILocation(line: 561, column: 3, scope: !857)
!879 = !DILocation(line: 566, column: 2, scope: !854)
!880 = !DILocation(line: 564, column: 8, scope: !872)
!881 = !DILocation(line: 564, column: 11, scope: !872)
!882 = !DILocation(line: 563, column: 20, scope: !873)
!883 = distinct !{!883, !874, !884}
!884 = !DILocation(line: 565, column: 2, scope: !859)
!885 = distinct !DISubprogram(name: "ex23", scope: !10, file: !10, line: 569, type: !67, scopeLine: 570, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !886)
!886 = !{!887, !888}
!887 = !DILocalVariable(name: "sum", scope: !885, file: !10, line: 574, type: !6)
!888 = !DILocalVariable(name: "i", scope: !889, file: !10, line: 575, type: !6)
!889 = distinct !DILexicalBlock(scope: !885, file: !10, line: 575, column: 3)
!890 = !DILocation(line: 0, scope: !885)
!891 = !DILocation(line: 0, scope: !889)
!892 = !DILocation(line: 575, column: 3, scope: !889)
!893 = !DILocation(line: 575, column: 29, scope: !894)
!894 = distinct !DILexicalBlock(scope: !889, file: !10, line: 575, column: 3)
!895 = !DILocation(line: 576, column: 8, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !10, line: 576, column: 8)
!897 = distinct !DILexicalBlock(scope: !894, file: !10, line: 575, column: 33)
!898 = !DILocation(line: 576, column: 13, scope: !896)
!899 = !DILocation(line: 577, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !10, line: 577, column: 9)
!901 = distinct !DILexicalBlock(scope: !896, file: !10, line: 576, column: 25)
!902 = !DILocation(line: 577, column: 14, scope: !900)
!903 = !DILocation(line: 578, column: 13, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !10, line: 577, column: 22)
!905 = !DILocation(line: 578, column: 20, scope: !904)
!906 = !DILocation(line: 578, column: 18, scope: !904)
!907 = distinct !{!907, !892, !908, !81}
!908 = !DILocation(line: 581, column: 3, scope: !889)
!909 = !DILocation(line: 582, column: 2, scope: !885)
!910 = distinct !DISubprogram(name: "ex25", scope: !10, file: !10, line: 585, type: !67, scopeLine: 586, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !911)
!911 = !{!912}
!912 = !DILocalVariable(name: "i", scope: !913, file: !10, line: 591, type: !6)
!913 = distinct !DILexicalBlock(scope: !910, file: !10, line: 591, column: 4)
!914 = !DILocation(line: 0, scope: !913)
!915 = !DILocation(line: 591, column: 4, scope: !913)
!916 = !DILocation(line: 600, column: 3, scope: !910)
!917 = !DILocation(line: 592, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !10, line: 592, column: 9)
!919 = distinct !DILexicalBlock(scope: !920, file: !10, line: 591, column: 34)
!920 = distinct !DILexicalBlock(scope: !913, file: !10, line: 591, column: 4)
!921 = !DILocation(line: 592, column: 14, scope: !918)
!922 = !DILocation(line: 592, column: 9, scope: !919)
!923 = !DILocation(line: 593, column: 14, scope: !924)
!924 = distinct !DILexicalBlock(scope: !918, file: !10, line: 592, column: 26)
!925 = !DILocation(line: 593, column: 21, scope: !924)
!926 = !DILocation(line: 593, column: 19, scope: !924)
!927 = !DILocation(line: 594, column: 5, scope: !924)
!928 = !DILocation(line: 594, column: 21, scope: !929)
!929 = distinct !DILexicalBlock(scope: !918, file: !10, line: 594, column: 16)
!930 = !DILocation(line: 594, column: 16, scope: !918)
!931 = !DILocation(line: 595, column: 14, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !10, line: 594, column: 34)
!933 = !DILocation(line: 595, column: 19, scope: !932)
!934 = !DILocation(line: 596, column: 5, scope: !932)
!935 = !DILocation(line: 597, column: 14, scope: !936)
!936 = distinct !DILexicalBlock(scope: !929, file: !10, line: 596, column: 12)
!937 = !DILocation(line: 597, column: 19, scope: !936)
!938 = !DILocation(line: 0, scope: !918)
!939 = !DILocation(line: 591, column: 22, scope: !920)
!940 = distinct !{!940, !915, !941}
!941 = !DILocation(line: 599, column: 4, scope: !913)
!942 = distinct !DISubprogram(name: "ex38", scope: !10, file: !10, line: 603, type: !67, scopeLine: 604, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !943)
!943 = !{!944, !945}
!944 = !DILocalVariable(name: "sum", scope: !942, file: !10, line: 608, type: !6)
!945 = !DILocalVariable(name: "i", scope: !946, file: !10, line: 609, type: !6)
!946 = distinct !DILexicalBlock(scope: !942, file: !10, line: 609, column: 4)
!947 = !DILocation(line: 0, scope: !942)
!948 = !DILocation(line: 0, scope: !946)
!949 = !DILocation(line: 609, column: 4, scope: !946)
!950 = !DILocation(line: 609, column: 30, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !10, line: 609, column: 4)
!952 = !DILocation(line: 610, column: 9, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !10, line: 610, column: 9)
!954 = distinct !DILexicalBlock(scope: !951, file: !10, line: 609, column: 34)
!955 = !DILocation(line: 610, column: 14, scope: !953)
!956 = !DILocation(line: 612, column: 21, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !10, line: 612, column: 16)
!958 = !DILocation(line: 615, column: 13, scope: !959)
!959 = distinct !DILexicalBlock(scope: !957, file: !10, line: 614, column: 12)
!960 = !DILocation(line: 615, column: 18, scope: !959)
!961 = !DILocation(line: 613, column: 13, scope: !962)
!962 = distinct !DILexicalBlock(scope: !957, file: !10, line: 612, column: 34)
!963 = !DILocation(line: 611, column: 18, scope: !964)
!964 = distinct !DILexicalBlock(scope: !953, file: !10, line: 610, column: 26)
!965 = !DILocation(line: 0, scope: !953)
!966 = distinct !{!966, !949, !967, !81}
!967 = !DILocation(line: 617, column: 4, scope: !946)
!968 = !DILocation(line: 618, column: 3, scope: !942)
!969 = distinct !DISubprogram(name: "ex28", scope: !10, file: !10, line: 622, type: !970, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{!6, !56}
!972 = !{!973, !974, !975}
!973 = !DILocalVariable(name: "ip", arg: 1, scope: !969, file: !10, line: 622, type: !56)
!974 = !DILocalVariable(name: "sum", scope: !969, file: !10, line: 629, type: !6)
!975 = !DILocalVariable(name: "i", scope: !976, file: !10, line: 631, type: !6)
!976 = distinct !DILexicalBlock(scope: !969, file: !10, line: 631, column: 3)
!977 = !DILocation(line: 0, scope: !969)
!978 = !DILocation(line: 0, scope: !976)
!979 = !DILocation(line: 631, column: 3, scope: !976)
!980 = !DILocation(line: 634, column: 7, scope: !969)
!981 = !DILocation(line: 635, column: 2, scope: !969)
!982 = !DILocation(line: 632, column: 11, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !10, line: 631, column: 33)
!984 = distinct !DILexicalBlock(scope: !976, file: !10, line: 631, column: 3)
!985 = !DILocation(line: 632, column: 20, scope: !983)
!986 = !DILocation(line: 632, column: 18, scope: !983)
!987 = !DILocation(line: 632, column: 16, scope: !983)
!988 = !DILocation(line: 632, column: 8, scope: !983)
!989 = !DILocation(line: 631, column: 21, scope: !984)
!990 = distinct !{!990, !979, !991}
!991 = !DILocation(line: 633, column: 3, scope: !976)
!992 = distinct !DISubprogram(name: "ex29", scope: !10, file: !10, line: 638, type: !67, scopeLine: 639, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!993 = !{!994, !996}
!994 = !DILocalVariable(name: "i", scope: !995, file: !10, line: 644, type: !6)
!995 = distinct !DILexicalBlock(scope: !992, file: !10, line: 644, column: 3)
!996 = !DILocalVariable(name: "j", scope: !997, file: !10, line: 645, type: !6)
!997 = distinct !DILexicalBlock(scope: !998, file: !10, line: 645, column: 4)
!998 = distinct !DILexicalBlock(scope: !999, file: !10, line: 644, column: 34)
!999 = distinct !DILexicalBlock(scope: !995, file: !10, line: 644, column: 3)
!1000 = !DILocation(line: 0, scope: !995)
!1001 = !DILocation(line: 644, column: 3, scope: !995)
!1002 = !DILocation(line: 0, scope: !997)
!1003 = !DILocation(line: 646, column: 14, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !10, line: 645, column: 35)
!1005 = distinct !DILexicalBlock(scope: !997, file: !10, line: 645, column: 4)
!1006 = !DILocation(line: 648, column: 13, scope: !998)
!1007 = !DILocation(line: 644, column: 21, scope: !999)
!1008 = distinct !{!1008, !1001, !1009}
!1009 = !DILocation(line: 649, column: 3, scope: !995)
!1010 = !DILocation(line: 650, column: 2, scope: !992)
!1011 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 654, type: !67, scopeLine: 654, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!1012 = !DILocation(line: 656, column: 2, scope: !1011)
