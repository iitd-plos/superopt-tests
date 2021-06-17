; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s421.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s421.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@arr = dso_local global [32000 x i32] zeroinitializer, align 16, !dbg !58
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !56
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !28
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !26
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !32
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !34
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !36
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !38
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !40
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !45
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !47
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !49
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !51
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !53

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s421() local_unnamed_addr #0 !dbg !64 {
entry:
  store i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 0), i32** @yy, align 8, !dbg !74
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !75
  br label %vector.body, !dbg !76

vector.body:                                      ; preds = %vector.body.1, %entry
  %lsr.iv76 = phi i64 [ %lsr.iv.next77, %vector.body.1 ], [ -127936, %entry ], !dbg !77
  %uglygep97 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !80
  %uglygep9798 = bitcast i8* %uglygep97 to <4 x i32>*
  %scevgep99 = getelementptr <4 x i32>, <4 x i32>* %uglygep9798, i64 7996, !dbg !80
  %scevgep99100 = bitcast <4 x i32>* %scevgep99 to i8*
  %uglygep101 = getelementptr i8, i8* %scevgep99100, i64 4, !dbg !80
  %uglygep101102 = bitcast i8* %uglygep101 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep101102, align 4, !dbg !80
  %uglygep103 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !80
  %uglygep103104 = bitcast i8* %uglygep103 to <4 x i32>*
  %scevgep105 = getelementptr <4 x i32>, <4 x i32>* %uglygep103104, i64 7997, !dbg !80
  %scevgep105106 = bitcast <4 x i32>* %scevgep105 to i8*
  %uglygep107 = getelementptr i8, i8* %scevgep105106, i64 4, !dbg !80
  %uglygep107108 = bitcast i8* %uglygep107 to <4 x i32>*
  %wide.load33 = load <4 x i32>, <4 x i32>* %uglygep107108, align 4, !dbg !80
  %uglygep119 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv76, !dbg !81
  %uglygep119120 = bitcast i8* %uglygep119 to <4 x i32>*
  %scevgep121 = getelementptr <4 x i32>, <4 x i32>* %uglygep119120, i64 7996, !dbg !81
  %wide.load34 = load <4 x i32>, <4 x i32>* %scevgep121, align 16, !dbg !81
  %scevgep122 = getelementptr <4 x i32>, <4 x i32>* %uglygep119120, i64 7997, !dbg !81
  %wide.load35 = load <4 x i32>, <4 x i32>* %scevgep122, align 16, !dbg !81
  %0 = add <4 x i32> %wide.load34, %wide.load, !dbg !82
  %1 = add <4 x i32> %wide.load35, %wide.load33, !dbg !82
  %uglygep109 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !83
  %uglygep109110 = bitcast i8* %uglygep109 to <4 x i32>*
  %scevgep111 = getelementptr <4 x i32>, <4 x i32>* %uglygep109110, i64 7996, !dbg !83
  store <4 x i32> %0, <4 x i32>* %scevgep111, align 16, !dbg !83
  %scevgep112 = getelementptr <4 x i32>, <4 x i32>* %uglygep109110, i64 7997, !dbg !83
  store <4 x i32> %1, <4 x i32>* %scevgep112, align 16, !dbg !83
  %2 = icmp eq i64 %lsr.iv76, 0, !dbg !77
  br i1 %2, label %for.body, label %vector.body.1, !dbg !77, !llvm.loop !84

for.body:                                         ; preds = %vector.body
  call void @llvm.dbg.value(metadata i64 31992, metadata !69, metadata !DIExpression()), !dbg !75
  %3 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31993), align 4, !dbg !80
  %4 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31992), align 16, !dbg !81
  %add3 = add i32 %4, %3, !dbg !82
  store i32 %add3, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31992), align 16, !dbg !83
  call void @llvm.dbg.value(metadata i64 31993, metadata !69, metadata !DIExpression()), !dbg !75
  %5 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31994), align 8, !dbg !80
  %6 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31993), align 4, !dbg !81
  %add3.1 = add i32 %6, %5, !dbg !82
  store i32 %add3.1, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31993), align 4, !dbg !83
  call void @llvm.dbg.value(metadata i64 31994, metadata !69, metadata !DIExpression()), !dbg !75
  %7 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31995), align 4, !dbg !80
  %8 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31994), align 8, !dbg !81
  %add3.2 = add i32 %8, %7, !dbg !82
  store i32 %add3.2, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31994), align 8, !dbg !83
  call void @llvm.dbg.value(metadata i64 31995, metadata !69, metadata !DIExpression()), !dbg !75
  %9 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31996), align 16, !dbg !80
  %10 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31995), align 4, !dbg !81
  %add3.3 = add i32 %10, %9, !dbg !82
  store i32 %add3.3, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31995), align 4, !dbg !83
  call void @llvm.dbg.value(metadata i64 31996, metadata !69, metadata !DIExpression()), !dbg !75
  %11 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31997), align 4, !dbg !80
  %12 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31996), align 16, !dbg !81
  %add3.4 = add i32 %12, %11, !dbg !82
  store i32 %add3.4, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31996), align 16, !dbg !83
  call void @llvm.dbg.value(metadata i64 31997, metadata !69, metadata !DIExpression()), !dbg !75
  %13 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31998), align 8, !dbg !80
  %14 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31997), align 4, !dbg !81
  %add3.5 = add i32 %14, %13, !dbg !82
  store i32 %add3.5, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31997), align 4, !dbg !83
  call void @llvm.dbg.value(metadata i64 31998, metadata !69, metadata !DIExpression()), !dbg !75
  %15 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31999), align 4, !dbg !80
  %16 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31998), align 8, !dbg !81
  %add3.6 = add i32 %16, %15, !dbg !82
  store i32 %add3.6, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31998), align 8, !dbg !83
  call void @llvm.dbg.value(metadata i64 31999, metadata !69, metadata !DIExpression()), !dbg !75
  br label %vector.body38, !dbg !87

vector.body38:                                    ; preds = %vector.body38, %for.body
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body38 ], [ -128000, %for.body ], !dbg !88
  %vec.phi = phi <4 x i32> [ zeroinitializer, %for.body ], [ %25, %vector.body38 ]
  %vec.phi44 = phi <4 x i32> [ zeroinitializer, %for.body ], [ %26, %vector.body38 ]
  %uglygep66 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !90
  %uglygep6667 = bitcast i8* %uglygep66 to <4 x i32>*
  %scevgep68 = getelementptr <4 x i32>, <4 x i32>* %uglygep6667, i64 8000, !dbg !90
  %wide.load45 = load <4 x i32>, <4 x i32>* %scevgep68, align 16, !dbg !90
  %scevgep69 = getelementptr <4 x i32>, <4 x i32>* %uglygep6667, i64 8001, !dbg !90
  %wide.load46 = load <4 x i32>, <4 x i32>* %scevgep69, align 16, !dbg !90
  %17 = add <4 x i32> %wide.load45, %vec.phi, !dbg !92
  %18 = add <4 x i32> %wide.load46, %vec.phi44, !dbg !92
  %uglygep73 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !90
  %uglygep7374 = bitcast i8* %uglygep73 to <4 x i32>*
  %scevgep75 = getelementptr <4 x i32>, <4 x i32>* %uglygep7374, i64 8002, !dbg !90
  %wide.load45.1 = load <4 x i32>, <4 x i32>* %scevgep75, align 16, !dbg !90
  %uglygep70 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !90
  %uglygep7071 = bitcast i8* %uglygep70 to <4 x i32>*
  %scevgep72 = getelementptr <4 x i32>, <4 x i32>* %uglygep7071, i64 8003, !dbg !90
  %wide.load46.1 = load <4 x i32>, <4 x i32>* %scevgep72, align 16, !dbg !90
  %19 = add <4 x i32> %wide.load45.1, %17, !dbg !92
  %20 = add <4 x i32> %wide.load46.1, %18, !dbg !92
  %uglygep63 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !90
  %uglygep6364 = bitcast i8* %uglygep63 to <4 x i32>*
  %scevgep65 = getelementptr <4 x i32>, <4 x i32>* %uglygep6364, i64 8004, !dbg !90
  %wide.load45.2 = load <4 x i32>, <4 x i32>* %scevgep65, align 16, !dbg !90
  %uglygep60 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !90
  %uglygep6061 = bitcast i8* %uglygep60 to <4 x i32>*
  %scevgep62 = getelementptr <4 x i32>, <4 x i32>* %uglygep6061, i64 8005, !dbg !90
  %wide.load46.2 = load <4 x i32>, <4 x i32>* %scevgep62, align 16, !dbg !90
  %21 = add <4 x i32> %wide.load45.2, %19, !dbg !92
  %22 = add <4 x i32> %wide.load46.2, %20, !dbg !92
  %uglygep57 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !90
  %uglygep5758 = bitcast i8* %uglygep57 to <4 x i32>*
  %scevgep59 = getelementptr <4 x i32>, <4 x i32>* %uglygep5758, i64 8006, !dbg !90
  %wide.load45.3 = load <4 x i32>, <4 x i32>* %scevgep59, align 16, !dbg !90
  %uglygep54 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !90
  %uglygep5455 = bitcast i8* %uglygep54 to <4 x i32>*
  %scevgep56 = getelementptr <4 x i32>, <4 x i32>* %uglygep5455, i64 8007, !dbg !90
  %wide.load46.3 = load <4 x i32>, <4 x i32>* %scevgep56, align 16, !dbg !90
  %23 = add <4 x i32> %wide.load45.3, %21, !dbg !92
  %24 = add <4 x i32> %wide.load46.3, %22, !dbg !92
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !90
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %uglygep5152, i64 8008, !dbg !90
  %wide.load45.4 = load <4 x i32>, <4 x i32>* %scevgep53, align 16, !dbg !90
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !90
  %uglygep50 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep50, i64 8009, !dbg !90
  %wide.load46.4 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !90
  %25 = add <4 x i32> %wide.load45.4, %23, !dbg !92
  %26 = add <4 x i32> %wide.load46.4, %24, !dbg !92
  %lsr.iv.next = add nsw i64 %lsr.iv, 160, !dbg !88
  %27 = icmp eq i64 %lsr.iv.next, 0, !dbg !88
  br i1 %27, label %middle.block36, label %vector.body38, !dbg !88, !llvm.loop !93

middle.block36:                                   ; preds = %vector.body38
  %bin.rdx = add <4 x i32> %26, %25, !dbg !87
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !87
  %bin.rdx123 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !87
  %rdx.shuf124 = shufflevector <4 x i32> %bin.rdx123, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !87
  %bin.rdx125 = add <4 x i32> %bin.rdx123, %rdx.shuf124, !dbg !87
  %28 = extractelement <4 x i32> %bin.rdx125, i32 0, !dbg !87
  call void @llvm.dbg.value(metadata i32 %28, metadata !71, metadata !DIExpression()), !dbg !95
  store i32 %28, i32* @temp, align 4, !dbg !96
  ret i32 0, !dbg !97

vector.body.1:                                    ; preds = %vector.body
  %uglygep85 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !80
  %uglygep8586 = bitcast i8* %uglygep85 to <4 x i32>*
  %scevgep87 = getelementptr <4 x i32>, <4 x i32>* %uglygep8586, i64 7998, !dbg !80
  %scevgep8788 = bitcast <4 x i32>* %scevgep87 to i8*
  %uglygep89 = getelementptr i8, i8* %scevgep8788, i64 4, !dbg !80
  %uglygep8990 = bitcast i8* %uglygep89 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %uglygep8990, align 4, !dbg !80
  %uglygep79 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !80
  %uglygep7980 = bitcast i8* %uglygep79 to <4 x i32>*
  %scevgep81 = getelementptr <4 x i32>, <4 x i32>* %uglygep7980, i64 7999, !dbg !80
  %scevgep8182 = bitcast <4 x i32>* %scevgep81 to i8*
  %uglygep83 = getelementptr i8, i8* %scevgep8182, i64 4, !dbg !80
  %uglygep8384 = bitcast i8* %uglygep83 to <4 x i32>*
  %wide.load33.1 = load <4 x i32>, <4 x i32>* %uglygep8384, align 4, !dbg !80
  %uglygep116 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv76, !dbg !81
  %uglygep116117 = bitcast i8* %uglygep116 to <4 x i32>*
  %scevgep118 = getelementptr <4 x i32>, <4 x i32>* %uglygep116117, i64 7998, !dbg !81
  %wide.load34.1 = load <4 x i32>, <4 x i32>* %scevgep118, align 16, !dbg !81
  %uglygep113 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv76, !dbg !81
  %uglygep113114 = bitcast i8* %uglygep113 to <4 x i32>*
  %scevgep115 = getelementptr <4 x i32>, <4 x i32>* %uglygep113114, i64 7999, !dbg !81
  %wide.load35.1 = load <4 x i32>, <4 x i32>* %scevgep115, align 16, !dbg !81
  %29 = add <4 x i32> %wide.load34.1, %wide.load.1, !dbg !82
  %30 = add <4 x i32> %wide.load35.1, %wide.load33.1, !dbg !82
  %uglygep94 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !83
  %uglygep9495 = bitcast i8* %uglygep94 to <4 x i32>*
  %scevgep96 = getelementptr <4 x i32>, <4 x i32>* %uglygep9495, i64 7998, !dbg !83
  store <4 x i32> %29, <4 x i32>* %scevgep96, align 16, !dbg !83
  %uglygep91 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !83
  %uglygep9192 = bitcast i8* %uglygep91 to <4 x i32>*
  %scevgep93 = getelementptr <4 x i32>, <4 x i32>* %uglygep9192, i64 7999, !dbg !83
  store <4 x i32> %30, <4 x i32>* %scevgep93, align 16, !dbg !83
  %lsr.iv.next77 = add nsw i64 %lsr.iv76, 64
  br label %vector.body

; uselistorder directives
  uselistorder i64 %lsr.iv, { 9, 8, 7, 6, 5, 4, 3, 1, 0, 2 }
  uselistorder i64 %lsr.iv76, { 11, 8, 7, 2, 1, 10, 9, 3, 4, 0, 5, 6 }
  uselistorder i64 7999, { 1, 0, 2 }
  uselistorder i64 7998, { 1, 0, 2 }
  uselistorder i32 0, { 2, 0, 1 }
  uselistorder [32000 x i32]* @a, { 1, 2, 3, 4, 5, 6, 7, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 1, 0 }
  uselistorder i64 7997, { 1, 0, 2 }
  uselistorder i64 4, { 3, 2, 0, 1 }
  uselistorder i64 7996, { 1, 0, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @arr to i8*), { 4, 3, 6, 5, 15, 14, 13, 12, 11, 10, 8, 7, 9, 0, 1, 2 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 7, 0, 1, 2, 3, 4, 5, 8, 6, 9 }
  uselistorder i32* null, { 1, 0 }
  uselistorder i64 0, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 0, 17, 18 }
  uselistorder [32000 x i32] zeroinitializer, { 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 6, 0 }
  uselistorder [32000 x i32]* @arr, { 1, 2, 3, 4, 5, 6, 7, 8, 0, 9 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "val", scope: !2, file: !8, line: 21, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s421.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s421", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s421.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !71, !72}
!69 = !DILocalVariable(name: "i", scope: !70, file: !65, line: 10, type: !10)
!70 = distinct !DILexicalBlock(scope: !64, file: !65, line: 10, column: 3)
!71 = !DILocalVariable(name: "sum", scope: !64, file: !65, line: 13, type: !10)
!72 = !DILocalVariable(name: "i", scope: !73, file: !65, line: 14, type: !10)
!73 = distinct !DILexicalBlock(scope: !64, file: !65, line: 14, column: 2)
!74 = !DILocation(line: 9, column: 6, scope: !64)
!75 = !DILocation(line: 0, scope: !70)
!76 = !DILocation(line: 10, column: 3, scope: !70)
!77 = !DILocation(line: 11, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !65, line: 10, column: 37)
!79 = distinct !DILexicalBlock(scope: !70, file: !65, line: 10, column: 3)
!80 = !DILocation(line: 11, column: 13, scope: !78)
!81 = !DILocation(line: 11, column: 23, scope: !78)
!82 = !DILocation(line: 11, column: 21, scope: !78)
!83 = !DILocation(line: 11, column: 11, scope: !78)
!84 = distinct !{!84, !76, !85, !86}
!85 = !DILocation(line: 12, column: 3, scope: !70)
!86 = !{!"llvm.loop.isvectorized", i32 1}
!87 = !DILocation(line: 14, column: 2, scope: !73)
!88 = !DILocation(line: 14, column: 28, scope: !89)
!89 = distinct !DILexicalBlock(scope: !73, file: !65, line: 14, column: 2)
!90 = !DILocation(line: 15, column: 10, scope: !91)
!91 = distinct !DILexicalBlock(scope: !89, file: !65, line: 14, column: 31)
!92 = !DILocation(line: 15, column: 7, scope: !91)
!93 = distinct !{!93, !87, !94, !86}
!94 = !DILocation(line: 16, column: 2, scope: !73)
!95 = !DILocation(line: 0, scope: !64)
!96 = !DILocation(line: 17, column: 8, scope: !64)
!97 = !DILocation(line: 18, column: 2, scope: !64)
