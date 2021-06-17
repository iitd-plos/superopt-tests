; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s423.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s423.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@array = dso_local global [65536 x i32] zeroinitializer, align 16, !dbg !21
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !53
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !28
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
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
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !56
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !58

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s423() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 64, metadata !69, metadata !DIExpression()), !dbg !75
  store i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 64), i32** @xx, align 8, !dbg !76
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !77
  br label %vector.body, !dbg !78

vector.body:                                      ; preds = %vector.body.1, %entry
  %lsr.iv77 = phi i64 [ %lsr.iv.next78, %vector.body.1 ], [ -127936, %entry ], !dbg !79
  %uglygep110 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv77, !dbg !82
  %uglygep110111 = bitcast i8* %uglygep110 to <4 x i32>*
  %scevgep112 = getelementptr <4 x i32>, <4 x i32>* %uglygep110111, i64 8012, !dbg !82
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep112, align 16, !dbg !82
  %scevgep113 = getelementptr <4 x i32>, <4 x i32>* %uglygep110111, i64 8013, !dbg !82
  %wide.load34 = load <4 x i32>, <4 x i32>* %scevgep113, align 16, !dbg !82
  %uglygep120 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv77, !dbg !83
  %uglygep120121 = bitcast i8* %uglygep120 to <4 x i32>*
  %scevgep122 = getelementptr <4 x i32>, <4 x i32>* %uglygep120121, i64 7996, !dbg !83
  %wide.load35 = load <4 x i32>, <4 x i32>* %scevgep122, align 16, !dbg !83
  %scevgep123 = getelementptr <4 x i32>, <4 x i32>* %uglygep120121, i64 7997, !dbg !83
  %wide.load36 = load <4 x i32>, <4 x i32>* %scevgep123, align 16, !dbg !83
  %0 = add <4 x i32> %wide.load35, %wide.load, !dbg !84
  %1 = add <4 x i32> %wide.load36, %wide.load34, !dbg !84
  %uglygep98 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv77, !dbg !85
  %uglygep9899 = bitcast i8* %uglygep98 to <4 x i32>*
  %scevgep100 = getelementptr <4 x i32>, <4 x i32>* %uglygep9899, i64 7996, !dbg !85
  %scevgep100101 = bitcast <4 x i32>* %scevgep100 to i8*
  %uglygep102 = getelementptr i8, i8* %scevgep100101, i64 4, !dbg !85
  %uglygep102103 = bitcast i8* %uglygep102 to <4 x i32>*
  store <4 x i32> %0, <4 x i32>* %uglygep102103, align 4, !dbg !85
  %uglygep104 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv77, !dbg !85
  %uglygep104105 = bitcast i8* %uglygep104 to <4 x i32>*
  %scevgep106 = getelementptr <4 x i32>, <4 x i32>* %uglygep104105, i64 7997, !dbg !85
  %scevgep106107 = bitcast <4 x i32>* %scevgep106 to i8*
  %uglygep108 = getelementptr i8, i8* %scevgep106107, i64 4, !dbg !85
  %uglygep108109 = bitcast i8* %uglygep108 to <4 x i32>*
  store <4 x i32> %1, <4 x i32>* %uglygep108109, align 4, !dbg !85
  %2 = icmp eq i64 %lsr.iv77, 0, !dbg !79
  br i1 %2, label %for.body, label %vector.body.1, !dbg !79, !llvm.loop !86

for.body:                                         ; preds = %vector.body
  call void @llvm.dbg.value(metadata i64 31992, metadata !70, metadata !DIExpression()), !dbg !77
  %3 = load i32, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 32056), align 16, !dbg !82
  %4 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31992), align 16, !dbg !83
  %add = add i32 %4, %3, !dbg !84
  store i32 %add, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 31993), align 4, !dbg !85
  call void @llvm.dbg.value(metadata i64 31993, metadata !70, metadata !DIExpression()), !dbg !77
  %5 = load i32, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 32057), align 4, !dbg !82
  %6 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31993), align 4, !dbg !83
  %add.1 = add i32 %6, %5, !dbg !84
  store i32 %add.1, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 31994), align 8, !dbg !85
  call void @llvm.dbg.value(metadata i64 31994, metadata !70, metadata !DIExpression()), !dbg !77
  %7 = load i32, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 32058), align 8, !dbg !82
  %8 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31994), align 8, !dbg !83
  %add.2 = add i32 %8, %7, !dbg !84
  store i32 %add.2, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 31995), align 4, !dbg !85
  call void @llvm.dbg.value(metadata i64 31995, metadata !70, metadata !DIExpression()), !dbg !77
  %9 = load i32, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 32059), align 4, !dbg !82
  %10 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31995), align 4, !dbg !83
  %add.3 = add i32 %10, %9, !dbg !84
  store i32 %add.3, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 31996), align 16, !dbg !85
  call void @llvm.dbg.value(metadata i64 31996, metadata !70, metadata !DIExpression()), !dbg !77
  %11 = load i32, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 32060), align 16, !dbg !82
  %12 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31996), align 16, !dbg !83
  %add.4 = add i32 %12, %11, !dbg !84
  store i32 %add.4, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 31997), align 4, !dbg !85
  call void @llvm.dbg.value(metadata i64 31997, metadata !70, metadata !DIExpression()), !dbg !77
  %13 = load i32, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 32061), align 4, !dbg !82
  %14 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31997), align 4, !dbg !83
  %add.5 = add i32 %14, %13, !dbg !84
  store i32 %add.5, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 31998), align 8, !dbg !85
  call void @llvm.dbg.value(metadata i64 31998, metadata !70, metadata !DIExpression()), !dbg !77
  %15 = load i32, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 32062), align 8, !dbg !82
  %16 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31998), align 8, !dbg !83
  %add.6 = add i32 %16, %15, !dbg !84
  store i32 %add.6, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @array, i64 0, i64 31999), align 4, !dbg !85
  call void @llvm.dbg.value(metadata i64 31999, metadata !70, metadata !DIExpression()), !dbg !77
  br label %vector.body39, !dbg !89

vector.body39:                                    ; preds = %vector.body39, %for.body
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body39 ], [ -128000, %for.body ], !dbg !90
  %vec.phi = phi <4 x i32> [ zeroinitializer, %for.body ], [ %25, %vector.body39 ]
  %vec.phi45 = phi <4 x i32> [ zeroinitializer, %for.body ], [ %26, %vector.body39 ]
  %uglygep67 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv, !dbg !92
  %uglygep6768 = bitcast i8* %uglygep67 to <4 x i32>*
  %scevgep69 = getelementptr <4 x i32>, <4 x i32>* %uglygep6768, i64 8000, !dbg !92
  %wide.load46 = load <4 x i32>, <4 x i32>* %scevgep69, align 16, !dbg !92
  %scevgep70 = getelementptr <4 x i32>, <4 x i32>* %uglygep6768, i64 8001, !dbg !92
  %wide.load47 = load <4 x i32>, <4 x i32>* %scevgep70, align 16, !dbg !92
  %17 = add <4 x i32> %wide.load46, %vec.phi, !dbg !94
  %18 = add <4 x i32> %wide.load47, %vec.phi45, !dbg !94
  %uglygep74 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv, !dbg !92
  %uglygep7475 = bitcast i8* %uglygep74 to <4 x i32>*
  %scevgep76 = getelementptr <4 x i32>, <4 x i32>* %uglygep7475, i64 8002, !dbg !92
  %wide.load46.1 = load <4 x i32>, <4 x i32>* %scevgep76, align 16, !dbg !92
  %uglygep71 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv, !dbg !92
  %uglygep7172 = bitcast i8* %uglygep71 to <4 x i32>*
  %scevgep73 = getelementptr <4 x i32>, <4 x i32>* %uglygep7172, i64 8003, !dbg !92
  %wide.load47.1 = load <4 x i32>, <4 x i32>* %scevgep73, align 16, !dbg !92
  %19 = add <4 x i32> %wide.load46.1, %17, !dbg !94
  %20 = add <4 x i32> %wide.load47.1, %18, !dbg !94
  %uglygep64 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv, !dbg !92
  %uglygep6465 = bitcast i8* %uglygep64 to <4 x i32>*
  %scevgep66 = getelementptr <4 x i32>, <4 x i32>* %uglygep6465, i64 8004, !dbg !92
  %wide.load46.2 = load <4 x i32>, <4 x i32>* %scevgep66, align 16, !dbg !92
  %uglygep61 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv, !dbg !92
  %uglygep6162 = bitcast i8* %uglygep61 to <4 x i32>*
  %scevgep63 = getelementptr <4 x i32>, <4 x i32>* %uglygep6162, i64 8005, !dbg !92
  %wide.load47.2 = load <4 x i32>, <4 x i32>* %scevgep63, align 16, !dbg !92
  %21 = add <4 x i32> %wide.load46.2, %19, !dbg !94
  %22 = add <4 x i32> %wide.load47.2, %20, !dbg !94
  %uglygep58 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv, !dbg !92
  %uglygep5859 = bitcast i8* %uglygep58 to <4 x i32>*
  %scevgep60 = getelementptr <4 x i32>, <4 x i32>* %uglygep5859, i64 8006, !dbg !92
  %wide.load46.3 = load <4 x i32>, <4 x i32>* %scevgep60, align 16, !dbg !92
  %uglygep55 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv, !dbg !92
  %uglygep5556 = bitcast i8* %uglygep55 to <4 x i32>*
  %scevgep57 = getelementptr <4 x i32>, <4 x i32>* %uglygep5556, i64 8007, !dbg !92
  %wide.load47.3 = load <4 x i32>, <4 x i32>* %scevgep57, align 16, !dbg !92
  %23 = add <4 x i32> %wide.load46.3, %21, !dbg !94
  %24 = add <4 x i32> %wide.load47.3, %22, !dbg !94
  %uglygep52 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv, !dbg !92
  %uglygep5253 = bitcast i8* %uglygep52 to <4 x i32>*
  %scevgep54 = getelementptr <4 x i32>, <4 x i32>* %uglygep5253, i64 8008, !dbg !92
  %wide.load46.4 = load <4 x i32>, <4 x i32>* %scevgep54, align 16, !dbg !92
  %uglygep = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv, !dbg !92
  %uglygep51 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep51, i64 8009, !dbg !92
  %wide.load47.4 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !92
  %25 = add <4 x i32> %wide.load46.4, %23, !dbg !94
  %26 = add <4 x i32> %wide.load47.4, %24, !dbg !94
  %lsr.iv.next = add nsw i64 %lsr.iv, 160, !dbg !90
  %27 = icmp eq i64 %lsr.iv.next, 0, !dbg !90
  br i1 %27, label %middle.block37, label %vector.body39, !dbg !90, !llvm.loop !95

middle.block37:                                   ; preds = %vector.body39
  %bin.rdx = add <4 x i32> %26, %25, !dbg !89
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !89
  %bin.rdx124 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !89
  %rdx.shuf125 = shufflevector <4 x i32> %bin.rdx124, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !89
  %bin.rdx126 = add <4 x i32> %bin.rdx124, %rdx.shuf125, !dbg !89
  %28 = extractelement <4 x i32> %bin.rdx126, i32 0, !dbg !89
  call void @llvm.dbg.value(metadata i32 %28, metadata !72, metadata !DIExpression()), !dbg !75
  store i32 %28, i32* @temp, align 4, !dbg !97
  ret i32 0, !dbg !98

vector.body.1:                                    ; preds = %vector.body
  %uglygep95 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv77, !dbg !82
  %uglygep9596 = bitcast i8* %uglygep95 to <4 x i32>*
  %scevgep97 = getelementptr <4 x i32>, <4 x i32>* %uglygep9596, i64 8014, !dbg !82
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep97, align 16, !dbg !82
  %uglygep92 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv77, !dbg !82
  %uglygep9293 = bitcast i8* %uglygep92 to <4 x i32>*
  %scevgep94 = getelementptr <4 x i32>, <4 x i32>* %uglygep9293, i64 8015, !dbg !82
  %wide.load34.1 = load <4 x i32>, <4 x i32>* %scevgep94, align 16, !dbg !82
  %uglygep117 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv77, !dbg !83
  %uglygep117118 = bitcast i8* %uglygep117 to <4 x i32>*
  %scevgep119 = getelementptr <4 x i32>, <4 x i32>* %uglygep117118, i64 7998, !dbg !83
  %wide.load35.1 = load <4 x i32>, <4 x i32>* %scevgep119, align 16, !dbg !83
  %uglygep114 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv77, !dbg !83
  %uglygep114115 = bitcast i8* %uglygep114 to <4 x i32>*
  %scevgep116 = getelementptr <4 x i32>, <4 x i32>* %uglygep114115, i64 7999, !dbg !83
  %wide.load36.1 = load <4 x i32>, <4 x i32>* %scevgep116, align 16, !dbg !83
  %29 = add <4 x i32> %wide.load35.1, %wide.load.1, !dbg !84
  %30 = add <4 x i32> %wide.load36.1, %wide.load34.1, !dbg !84
  %uglygep86 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv77, !dbg !85
  %uglygep8687 = bitcast i8* %uglygep86 to <4 x i32>*
  %scevgep88 = getelementptr <4 x i32>, <4 x i32>* %uglygep8687, i64 7998, !dbg !85
  %scevgep8889 = bitcast <4 x i32>* %scevgep88 to i8*
  %uglygep90 = getelementptr i8, i8* %scevgep8889, i64 4, !dbg !85
  %uglygep9091 = bitcast i8* %uglygep90 to <4 x i32>*
  store <4 x i32> %29, <4 x i32>* %uglygep9091, align 4, !dbg !85
  %uglygep80 = getelementptr i8, i8* bitcast ([65536 x i32]* @array to i8*), i64 %lsr.iv77, !dbg !85
  %uglygep8081 = bitcast i8* %uglygep80 to <4 x i32>*
  %scevgep82 = getelementptr <4 x i32>, <4 x i32>* %uglygep8081, i64 7999, !dbg !85
  %scevgep8283 = bitcast <4 x i32>* %scevgep82 to i8*
  %uglygep84 = getelementptr i8, i8* %scevgep8283, i64 4, !dbg !85
  %uglygep8485 = bitcast i8* %uglygep84 to <4 x i32>*
  store <4 x i32> %30, <4 x i32>* %uglygep8485, align 4, !dbg !85
  %lsr.iv.next78 = add nsw i64 %lsr.iv77, 64
  br label %vector.body

; uselistorder directives
  uselistorder i64 %lsr.iv, { 9, 8, 7, 6, 5, 4, 3, 1, 0, 2 }
  uselistorder i64 %lsr.iv77, { 11, 10, 9, 2, 1, 8, 7, 3, 5, 6, 0, 4 }
  uselistorder i64 7999, { 1, 0 }
  uselistorder i64 7998, { 1, 0 }
  uselistorder i32 0, { 2, 0, 1 }
  uselistorder i64 4, { 3, 2, 0, 1 }
  uselistorder i64 7997, { 1, 0 }
  uselistorder i64 7996, { 1, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 6 }
  uselistorder [32000 x i32]* @a, { 1, 2, 3, 4, 5, 6, 7, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 1, 0 }
  uselistorder i8* bitcast ([65536 x i32]* @array to i8*), { 6, 5, 4, 3, 15, 14, 13, 12, 11, 10, 8, 7, 9, 1, 2, 0 }
  uselistorder i64 0, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 0, 23 }
  uselistorder [65536 x i32]* @array, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 0, 15 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 7, 0, 1, 2, 3, 4, 5, 8, 6, 9, 10 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s423.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s423", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s423.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !70, !72, !73}
!69 = !DILocalVariable(name: "vl", scope: !64, file: !65, line: 9, type: !10)
!70 = !DILocalVariable(name: "i", scope: !71, file: !65, line: 11, type: !10)
!71 = distinct !DILexicalBlock(scope: !64, file: !65, line: 11, column: 3)
!72 = !DILocalVariable(name: "sum", scope: !64, file: !65, line: 14, type: !10)
!73 = !DILocalVariable(name: "i", scope: !74, file: !65, line: 15, type: !10)
!74 = distinct !DILexicalBlock(scope: !64, file: !65, line: 15, column: 2)
!75 = !DILocation(line: 0, scope: !64)
!76 = !DILocation(line: 10, column: 5, scope: !64)
!77 = !DILocation(line: 0, scope: !71)
!78 = !DILocation(line: 11, column: 3, scope: !71)
!79 = !DILocation(line: 12, column: 11, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !65, line: 11, column: 37)
!81 = distinct !DILexicalBlock(scope: !71, file: !65, line: 11, column: 3)
!82 = !DILocation(line: 12, column: 17, scope: !80)
!83 = !DILocation(line: 12, column: 25, scope: !80)
!84 = !DILocation(line: 12, column: 23, scope: !80)
!85 = !DILocation(line: 12, column: 15, scope: !80)
!86 = distinct !{!86, !78, !87, !88}
!87 = !DILocation(line: 13, column: 3, scope: !71)
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !DILocation(line: 15, column: 2, scope: !74)
!90 = !DILocation(line: 15, column: 28, scope: !91)
!91 = distinct !DILexicalBlock(scope: !74, file: !65, line: 15, column: 2)
!92 = !DILocation(line: 16, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !91, file: !65, line: 15, column: 31)
!94 = !DILocation(line: 16, column: 7, scope: !93)
!95 = distinct !{!95, !89, !96, !88}
!96 = !DILocation(line: 17, column: 2, scope: !74)
!97 = !DILocation(line: 18, column: 8, scope: !64)
!98 = !DILocation(line: 19, column: 2, scope: !64)
