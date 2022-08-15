; ModuleID = '/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/BLR_demo/s421.c'
source_filename = "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/BLR_demo/s421.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arr = dso_local global [32000 x i32] zeroinitializer, align 16, !dbg !0
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !15
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !10
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !6

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s421() local_unnamed_addr #0 !dbg !22 {
entry:
  store i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 0), i32** @yy, align 8, !dbg !32
  call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !33
  br label %vector.body, !dbg !34

vector.body:                                      ; preds = %vector.body.1, %entry
  %lsr.iv76 = phi i64 [ %lsr.iv.next77, %vector.body.1 ], [ -127936, %entry ], !dbg !35
  %uglygep97 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !38
  %uglygep9798 = bitcast i8* %uglygep97 to <4 x i32>*
  %scevgep99 = getelementptr <4 x i32>, <4 x i32>* %uglygep9798, i64 7996, !dbg !38
  %scevgep99100 = bitcast <4 x i32>* %scevgep99 to i8*
  %uglygep101 = getelementptr i8, i8* %scevgep99100, i64 4, !dbg !38
  %uglygep101102 = bitcast i8* %uglygep101 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep101102, align 4, !dbg !38
  %uglygep103 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !38
  %uglygep103104 = bitcast i8* %uglygep103 to <4 x i32>*
  %scevgep105 = getelementptr <4 x i32>, <4 x i32>* %uglygep103104, i64 7997, !dbg !38
  %scevgep105106 = bitcast <4 x i32>* %scevgep105 to i8*
  %uglygep107 = getelementptr i8, i8* %scevgep105106, i64 4, !dbg !38
  %uglygep107108 = bitcast i8* %uglygep107 to <4 x i32>*
  %wide.load33 = load <4 x i32>, <4 x i32>* %uglygep107108, align 4, !dbg !38
  %uglygep119 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv76, !dbg !39
  %uglygep119120 = bitcast i8* %uglygep119 to <4 x i32>*
  %scevgep121 = getelementptr <4 x i32>, <4 x i32>* %uglygep119120, i64 7996, !dbg !39
  %wide.load34 = load <4 x i32>, <4 x i32>* %scevgep121, align 16, !dbg !39
  %scevgep122 = getelementptr <4 x i32>, <4 x i32>* %uglygep119120, i64 7997, !dbg !39
  %wide.load35 = load <4 x i32>, <4 x i32>* %scevgep122, align 16, !dbg !39
  %0 = add <4 x i32> %wide.load34, %wide.load, !dbg !40
  %1 = add <4 x i32> %wide.load35, %wide.load33, !dbg !40
  %uglygep109 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !41
  %uglygep109110 = bitcast i8* %uglygep109 to <4 x i32>*
  %scevgep111 = getelementptr <4 x i32>, <4 x i32>* %uglygep109110, i64 7996, !dbg !41
  store <4 x i32> %0, <4 x i32>* %scevgep111, align 16, !dbg !41
  %scevgep112 = getelementptr <4 x i32>, <4 x i32>* %uglygep109110, i64 7997, !dbg !41
  store <4 x i32> %1, <4 x i32>* %scevgep112, align 16, !dbg !41
  %2 = icmp eq i64 %lsr.iv76, 0, !dbg !35
  br i1 %2, label %for.body, label %vector.body.1, !dbg !35, !llvm.loop !42

for.body:                                         ; preds = %vector.body
  call void @llvm.dbg.value(metadata i64 31992, metadata !27, metadata !DIExpression()), !dbg !33
  %3 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31993), align 4, !dbg !38
  %4 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31992), align 16, !dbg !39
  %add3 = add i32 %4, %3, !dbg !40
  store i32 %add3, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31992), align 16, !dbg !41
  call void @llvm.dbg.value(metadata i64 31993, metadata !27, metadata !DIExpression()), !dbg !33
  %5 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31994), align 8, !dbg !38
  %6 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31993), align 4, !dbg !39
  %add3.1 = add i32 %6, %5, !dbg !40
  store i32 %add3.1, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31993), align 4, !dbg !41
  call void @llvm.dbg.value(metadata i64 31994, metadata !27, metadata !DIExpression()), !dbg !33
  %7 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31995), align 4, !dbg !38
  %8 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31994), align 8, !dbg !39
  %add3.2 = add i32 %8, %7, !dbg !40
  store i32 %add3.2, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31994), align 8, !dbg !41
  call void @llvm.dbg.value(metadata i64 31995, metadata !27, metadata !DIExpression()), !dbg !33
  %9 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31996), align 16, !dbg !38
  %10 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31995), align 4, !dbg !39
  %add3.3 = add i32 %10, %9, !dbg !40
  store i32 %add3.3, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31995), align 4, !dbg !41
  call void @llvm.dbg.value(metadata i64 31996, metadata !27, metadata !DIExpression()), !dbg !33
  %11 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31997), align 4, !dbg !38
  %12 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31996), align 16, !dbg !39
  %add3.4 = add i32 %12, %11, !dbg !40
  store i32 %add3.4, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31996), align 16, !dbg !41
  call void @llvm.dbg.value(metadata i64 31997, metadata !27, metadata !DIExpression()), !dbg !33
  %13 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31998), align 8, !dbg !38
  %14 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31997), align 4, !dbg !39
  %add3.5 = add i32 %14, %13, !dbg !40
  store i32 %add3.5, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31997), align 4, !dbg !41
  call void @llvm.dbg.value(metadata i64 31998, metadata !27, metadata !DIExpression()), !dbg !33
  %15 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31999), align 4, !dbg !38
  %16 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31998), align 8, !dbg !39
  %add3.6 = add i32 %16, %15, !dbg !40
  store i32 %add3.6, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @arr, i64 0, i64 31998), align 8, !dbg !41
  call void @llvm.dbg.value(metadata i64 31999, metadata !27, metadata !DIExpression()), !dbg !33
  br label %vector.body38, !dbg !45

vector.body38:                                    ; preds = %vector.body38, %for.body
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body38 ], [ -128000, %for.body ], !dbg !46
  %vec.phi = phi <4 x i32> [ zeroinitializer, %for.body ], [ %25, %vector.body38 ]
  %vec.phi44 = phi <4 x i32> [ zeroinitializer, %for.body ], [ %26, %vector.body38 ]
  %uglygep66 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !48
  %uglygep6667 = bitcast i8* %uglygep66 to <4 x i32>*
  %scevgep68 = getelementptr <4 x i32>, <4 x i32>* %uglygep6667, i64 8000, !dbg !48
  %wide.load45 = load <4 x i32>, <4 x i32>* %scevgep68, align 16, !dbg !48
  %scevgep69 = getelementptr <4 x i32>, <4 x i32>* %uglygep6667, i64 8001, !dbg !48
  %wide.load46 = load <4 x i32>, <4 x i32>* %scevgep69, align 16, !dbg !48
  %17 = add <4 x i32> %wide.load45, %vec.phi, !dbg !50
  %18 = add <4 x i32> %wide.load46, %vec.phi44, !dbg !50
  %uglygep73 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !48
  %uglygep7374 = bitcast i8* %uglygep73 to <4 x i32>*
  %scevgep75 = getelementptr <4 x i32>, <4 x i32>* %uglygep7374, i64 8002, !dbg !48
  %wide.load45.1 = load <4 x i32>, <4 x i32>* %scevgep75, align 16, !dbg !48
  %uglygep70 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !48
  %uglygep7071 = bitcast i8* %uglygep70 to <4 x i32>*
  %scevgep72 = getelementptr <4 x i32>, <4 x i32>* %uglygep7071, i64 8003, !dbg !48
  %wide.load46.1 = load <4 x i32>, <4 x i32>* %scevgep72, align 16, !dbg !48
  %19 = add <4 x i32> %wide.load45.1, %17, !dbg !50
  %20 = add <4 x i32> %wide.load46.1, %18, !dbg !50
  %uglygep63 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !48
  %uglygep6364 = bitcast i8* %uglygep63 to <4 x i32>*
  %scevgep65 = getelementptr <4 x i32>, <4 x i32>* %uglygep6364, i64 8004, !dbg !48
  %wide.load45.2 = load <4 x i32>, <4 x i32>* %scevgep65, align 16, !dbg !48
  %uglygep60 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !48
  %uglygep6061 = bitcast i8* %uglygep60 to <4 x i32>*
  %scevgep62 = getelementptr <4 x i32>, <4 x i32>* %uglygep6061, i64 8005, !dbg !48
  %wide.load46.2 = load <4 x i32>, <4 x i32>* %scevgep62, align 16, !dbg !48
  %21 = add <4 x i32> %wide.load45.2, %19, !dbg !50
  %22 = add <4 x i32> %wide.load46.2, %20, !dbg !50
  %uglygep57 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !48
  %uglygep5758 = bitcast i8* %uglygep57 to <4 x i32>*
  %scevgep59 = getelementptr <4 x i32>, <4 x i32>* %uglygep5758, i64 8006, !dbg !48
  %wide.load45.3 = load <4 x i32>, <4 x i32>* %scevgep59, align 16, !dbg !48
  %uglygep54 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !48
  %uglygep5455 = bitcast i8* %uglygep54 to <4 x i32>*
  %scevgep56 = getelementptr <4 x i32>, <4 x i32>* %uglygep5455, i64 8007, !dbg !48
  %wide.load46.3 = load <4 x i32>, <4 x i32>* %scevgep56, align 16, !dbg !48
  %23 = add <4 x i32> %wide.load45.3, %21, !dbg !50
  %24 = add <4 x i32> %wide.load46.3, %22, !dbg !50
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !48
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %uglygep5152, i64 8008, !dbg !48
  %wide.load45.4 = load <4 x i32>, <4 x i32>* %scevgep53, align 16, !dbg !48
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !48
  %uglygep50 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep50, i64 8009, !dbg !48
  %wide.load46.4 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !48
  %25 = add <4 x i32> %wide.load45.4, %23, !dbg !50
  %26 = add <4 x i32> %wide.load46.4, %24, !dbg !50
  %lsr.iv.next = add nsw i64 %lsr.iv, 160, !dbg !46
  %27 = icmp eq i64 %lsr.iv.next, 0, !dbg !46
  br i1 %27, label %middle.block36, label %vector.body38, !dbg !46, !llvm.loop !51

middle.block36:                                   ; preds = %vector.body38
  %bin.rdx = add <4 x i32> %26, %25, !dbg !45
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !45
  %bin.rdx123 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !45
  %rdx.shuf124 = shufflevector <4 x i32> %bin.rdx123, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !45
  %bin.rdx125 = add <4 x i32> %bin.rdx123, %rdx.shuf124, !dbg !45
  %28 = extractelement <4 x i32> %bin.rdx125, i32 0, !dbg !45
  call void @llvm.dbg.value(metadata i32 %28, metadata !29, metadata !DIExpression()), !dbg !53
  store i32 %28, i32* @temp, align 4, !dbg !54
  ret i32 0, !dbg !55

vector.body.1:                                    ; preds = %vector.body
  %uglygep85 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !38
  %uglygep8586 = bitcast i8* %uglygep85 to <4 x i32>*
  %scevgep87 = getelementptr <4 x i32>, <4 x i32>* %uglygep8586, i64 7998, !dbg !38
  %scevgep8788 = bitcast <4 x i32>* %scevgep87 to i8*
  %uglygep89 = getelementptr i8, i8* %scevgep8788, i64 4, !dbg !38
  %uglygep8990 = bitcast i8* %uglygep89 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %uglygep8990, align 4, !dbg !38
  %uglygep79 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !38
  %uglygep7980 = bitcast i8* %uglygep79 to <4 x i32>*
  %scevgep81 = getelementptr <4 x i32>, <4 x i32>* %uglygep7980, i64 7999, !dbg !38
  %scevgep8182 = bitcast <4 x i32>* %scevgep81 to i8*
  %uglygep83 = getelementptr i8, i8* %scevgep8182, i64 4, !dbg !38
  %uglygep8384 = bitcast i8* %uglygep83 to <4 x i32>*
  %wide.load33.1 = load <4 x i32>, <4 x i32>* %uglygep8384, align 4, !dbg !38
  %uglygep116 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv76, !dbg !39
  %uglygep116117 = bitcast i8* %uglygep116 to <4 x i32>*
  %scevgep118 = getelementptr <4 x i32>, <4 x i32>* %uglygep116117, i64 7998, !dbg !39
  %wide.load34.1 = load <4 x i32>, <4 x i32>* %scevgep118, align 16, !dbg !39
  %uglygep113 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv76, !dbg !39
  %uglygep113114 = bitcast i8* %uglygep113 to <4 x i32>*
  %scevgep115 = getelementptr <4 x i32>, <4 x i32>* %uglygep113114, i64 7999, !dbg !39
  %wide.load35.1 = load <4 x i32>, <4 x i32>* %scevgep115, align 16, !dbg !39
  %29 = add <4 x i32> %wide.load34.1, %wide.load.1, !dbg !40
  %30 = add <4 x i32> %wide.load35.1, %wide.load33.1, !dbg !40
  %uglygep94 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !41
  %uglygep9495 = bitcast i8* %uglygep94 to <4 x i32>*
  %scevgep96 = getelementptr <4 x i32>, <4 x i32>* %uglygep9495, i64 7998, !dbg !41
  store <4 x i32> %29, <4 x i32>* %scevgep96, align 16, !dbg !41
  %uglygep91 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv76, !dbg !41
  %uglygep9192 = bitcast i8* %uglygep91 to <4 x i32>*
  %scevgep93 = getelementptr <4 x i32>, <4 x i32>* %uglygep9192, i64 7999, !dbg !41
  store <4 x i32> %30, <4 x i32>* %scevgep93, align 16, !dbg !41
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
  uselistorder i64 0, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 0, 17, 18 }
  uselistorder [32000 x i32] zeroinitializer, { 1, 0 }
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
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arr", scope: !2, file: !8, line: 38, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://github.com/bsorav/llvm-project2 fbc599d0147c436382fe975c54bbb42a920092a2)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/BLR_demo/s421.c", directory: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/build/BLR_demo")
!4 = !{}
!5 = !{!6, !10, !15, !0}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "temp", scope: !2, file: !8, line: 27, type: !9, isLocal: false, isDefinition: true)
!8 = !DIFile(filename: "BLR_demo/globals.h", directory: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests")
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 29, type: !12, isLocal: false, isDefinition: true, align: 128)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024000, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 32000)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !8, line: 37, type: !17, isLocal: false, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 12.0.0 (https://github.com/bsorav/llvm-project2 fbc599d0147c436382fe975c54bbb42a920092a2)"}
!22 = distinct !DISubprogram(name: "s421", scope: !23, file: !23, line: 3, type: !24, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !26)
!23 = !DIFile(filename: "BLR_demo/s421.c", directory: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests")
!24 = !DISubroutineType(types: !25)
!25 = !{!9}
!26 = !{!27, !29, !30}
!27 = !DILocalVariable(name: "i", scope: !28, file: !23, line: 10, type: !9)
!28 = distinct !DILexicalBlock(scope: !22, file: !23, line: 10, column: 3)
!29 = !DILocalVariable(name: "sum", scope: !22, file: !23, line: 13, type: !9)
!30 = !DILocalVariable(name: "i", scope: !31, file: !23, line: 14, type: !9)
!31 = distinct !DILexicalBlock(scope: !22, file: !23, line: 14, column: 2)
!32 = !DILocation(line: 9, column: 6, scope: !22)
!33 = !DILocation(line: 0, scope: !28)
!34 = !DILocation(line: 10, column: 3, scope: !28)
!35 = !DILocation(line: 11, column: 17, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !23, line: 10, column: 37)
!37 = distinct !DILexicalBlock(scope: !28, file: !23, line: 10, column: 3)
!38 = !DILocation(line: 11, column: 13, scope: !36)
!39 = !DILocation(line: 11, column: 23, scope: !36)
!40 = !DILocation(line: 11, column: 21, scope: !36)
!41 = !DILocation(line: 11, column: 11, scope: !36)
!42 = distinct !{!42, !34, !43, !44}
!43 = !DILocation(line: 12, column: 3, scope: !28)
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !DILocation(line: 14, column: 2, scope: !31)
!46 = !DILocation(line: 14, column: 28, scope: !47)
!47 = distinct !DILexicalBlock(scope: !31, file: !23, line: 14, column: 2)
!48 = !DILocation(line: 15, column: 10, scope: !49)
!49 = distinct !DILexicalBlock(scope: !47, file: !23, line: 14, column: 31)
!50 = !DILocation(line: 15, column: 7, scope: !49)
!51 = distinct !{!51, !45, !52, !44}
!52 = !DILocation(line: 16, column: 2, scope: !31)
!53 = !DILocation(line: 0, scope: !22)
!54 = !DILocation(line: 17, column: 8, scope: !22)
!55 = !DILocation(line: 18, column: 2, scope: !22)
