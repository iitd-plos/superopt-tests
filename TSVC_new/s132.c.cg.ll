; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s132.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s132.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !40
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !32
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !34
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !26
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !28
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !36
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !38
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !45
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !47
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !49
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !51
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !53
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !56
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !58

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s132() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32 1, metadata !71, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32 1, metadata !72, metadata !DIExpression()), !dbg !75
  %0 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 1), align 4, !dbg !76
  %broadcast.splatinsert = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !79
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !79
  %broadcast.splatinsert24 = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !79
  %broadcast.splat25 = shufflevector <4 x i32> %broadcast.splatinsert24, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !79
  br label %vector.body, !dbg !79

vector.body:                                      ; preds = %vector.body.1, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body.1 ], [ -960, %entry ]
  %uglygep43 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %lsr.iv, !dbg !80
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %uglygep4344, i64 124, !dbg !80
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep45, align 16, !dbg !80
  %scevgep46 = getelementptr <4 x i32>, <4 x i32>* %uglygep4344, i64 125, !dbg !80
  %wide.load21 = load <4 x i32>, <4 x i32>* %scevgep46, align 16, !dbg !80
  %uglygep71 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !81
  %uglygep7172 = bitcast i8* %uglygep71 to <4 x i32>*
  %scevgep73 = getelementptr <4 x i32>, <4 x i32>* %uglygep7172, i64 60, !dbg !81
  %scevgep7374 = bitcast <4 x i32>* %scevgep73 to i8*
  %uglygep75 = getelementptr i8, i8* %scevgep7374, i64 4, !dbg !81
  %uglygep7576 = bitcast i8* %uglygep75 to <4 x i32>*
  %wide.load22 = load <4 x i32>, <4 x i32>* %uglygep7576, align 4, !dbg !81
  %uglygep77 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !81
  %uglygep7778 = bitcast i8* %uglygep77 to <4 x i32>*
  %scevgep79 = getelementptr <4 x i32>, <4 x i32>* %uglygep7778, i64 61, !dbg !81
  %scevgep7980 = bitcast <4 x i32>* %scevgep79 to i8*
  %uglygep81 = getelementptr i8, i8* %scevgep7980, i64 4, !dbg !81
  %uglygep8182 = bitcast i8* %uglygep81 to <4 x i32>*
  %wide.load23 = load <4 x i32>, <4 x i32>* %uglygep8182, align 4, !dbg !81
  %1 = mul <4 x i32> %broadcast.splat, %wide.load22, !dbg !82
  %2 = mul <4 x i32> %broadcast.splat25, %wide.load23, !dbg !82
  %3 = add <4 x i32> %1, %wide.load, !dbg !83
  %4 = add <4 x i32> %2, %wide.load21, !dbg !83
  %uglygep47 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %lsr.iv, !dbg !84
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %scevgep49 = getelementptr <4 x i32>, <4 x i32>* %uglygep4748, i64 60, !dbg !84
  %scevgep4950 = bitcast <4 x i32>* %scevgep49 to i8*
  %uglygep51 = getelementptr i8, i8* %scevgep4950, i64 4, !dbg !84
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  store <4 x i32> %3, <4 x i32>* %uglygep5152, align 4, !dbg !84
  %uglygep53 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %lsr.iv, !dbg !84
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %scevgep55 = getelementptr <4 x i32>, <4 x i32>* %uglygep5354, i64 61, !dbg !84
  %scevgep5556 = bitcast <4 x i32>* %scevgep55 to i8*
  %uglygep57 = getelementptr i8, i8* %scevgep5556, i64 4, !dbg !84
  %uglygep5758 = bitcast i8* %uglygep57 to <4 x i32>*
  store <4 x i32> %4, <4 x i32>* %uglygep5758, align 4, !dbg !84
  %5 = icmp eq i64 %lsr.iv, 0
  br i1 %5, label %for.body, label %vector.body.1, !llvm.loop !85

for.body:                                         ; preds = %vector.body
  call void @llvm.dbg.value(metadata i64 249, metadata !72, metadata !DIExpression()), !dbg !75
  %6 = load i32, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 1, i64 248), align 16, !dbg !80
  %7 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 249), align 4, !dbg !81
  %mul = mul i32 %0, %7, !dbg !82
  %add5 = add i32 %mul, %6, !dbg !83
  store i32 %add5, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 0, i64 249), align 4, !dbg !84
  call void @llvm.dbg.value(metadata i64 250, metadata !72, metadata !DIExpression()), !dbg !75
  %8 = load i32, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 1, i64 249), align 4, !dbg !80
  %9 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 250), align 8, !dbg !81
  %mul.1 = mul i32 %0, %9, !dbg !82
  %add5.1 = add i32 %mul.1, %8, !dbg !83
  store i32 %add5.1, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 0, i64 250), align 8, !dbg !84
  call void @llvm.dbg.value(metadata i64 251, metadata !72, metadata !DIExpression()), !dbg !75
  %10 = load i32, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 1, i64 250), align 8, !dbg !80
  %11 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 251), align 4, !dbg !81
  %mul.2 = mul i32 %0, %11, !dbg !82
  %add5.2 = add i32 %mul.2, %10, !dbg !83
  store i32 %add5.2, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 0, i64 251), align 4, !dbg !84
  call void @llvm.dbg.value(metadata i64 252, metadata !72, metadata !DIExpression()), !dbg !75
  %12 = load i32, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 1, i64 251), align 4, !dbg !80
  %13 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 252), align 16, !dbg !81
  %mul.3 = mul i32 %0, %13, !dbg !82
  %add5.3 = add i32 %mul.3, %12, !dbg !83
  store i32 %add5.3, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 0, i64 252), align 16, !dbg !84
  call void @llvm.dbg.value(metadata i64 253, metadata !72, metadata !DIExpression()), !dbg !75
  %14 = load i32, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 1, i64 252), align 16, !dbg !80
  %15 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 253), align 4, !dbg !81
  %mul.4 = mul i32 %0, %15, !dbg !82
  %add5.4 = add i32 %mul.4, %14, !dbg !83
  store i32 %add5.4, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 0, i64 253), align 4, !dbg !84
  call void @llvm.dbg.value(metadata i64 254, metadata !72, metadata !DIExpression()), !dbg !75
  %16 = load i32, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 1, i64 253), align 4, !dbg !80
  %17 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 254), align 8, !dbg !81
  %mul.5 = mul i32 %0, %17, !dbg !82
  %add5.5 = add i32 %mul.5, %16, !dbg !83
  store i32 %add5.5, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 0, i64 254), align 8, !dbg !84
  call void @llvm.dbg.value(metadata i64 255, metadata !72, metadata !DIExpression()), !dbg !75
  %18 = load i32, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 1, i64 254), align 8, !dbg !80
  %19 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 255), align 4, !dbg !81
  %mul.6 = mul i32 %0, %19, !dbg !82
  %add5.6 = add i32 %mul.6, %18, !dbg !83
  store i32 %add5.6, i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 0, i64 255), align 4, !dbg !84
  call void @llvm.dbg.value(metadata i64 256, metadata !72, metadata !DIExpression()), !dbg !75
  ret i32 0, !dbg !88

vector.body.1:                                    ; preds = %vector.body
  %uglygep40 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %lsr.iv, !dbg !80
  %uglygep4041 = bitcast i8* %uglygep40 to <4 x i32>*
  %scevgep42 = getelementptr <4 x i32>, <4 x i32>* %uglygep4041, i64 126, !dbg !80
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep42, align 16, !dbg !80
  %uglygep37 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %lsr.iv, !dbg !80
  %uglygep3738 = bitcast i8* %uglygep37 to <4 x i32>*
  %scevgep39 = getelementptr <4 x i32>, <4 x i32>* %uglygep3738, i64 127, !dbg !80
  %wide.load21.1 = load <4 x i32>, <4 x i32>* %scevgep39, align 16, !dbg !80
  %uglygep65 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !81
  %uglygep6566 = bitcast i8* %uglygep65 to <4 x i32>*
  %scevgep67 = getelementptr <4 x i32>, <4 x i32>* %uglygep6566, i64 62, !dbg !81
  %scevgep6768 = bitcast <4 x i32>* %scevgep67 to i8*
  %uglygep69 = getelementptr i8, i8* %scevgep6768, i64 4, !dbg !81
  %uglygep6970 = bitcast i8* %uglygep69 to <4 x i32>*
  %wide.load22.1 = load <4 x i32>, <4 x i32>* %uglygep6970, align 4, !dbg !81
  %uglygep59 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !81
  %uglygep5960 = bitcast i8* %uglygep59 to <4 x i32>*
  %scevgep61 = getelementptr <4 x i32>, <4 x i32>* %uglygep5960, i64 63, !dbg !81
  %scevgep6162 = bitcast <4 x i32>* %scevgep61 to i8*
  %uglygep63 = getelementptr i8, i8* %scevgep6162, i64 4, !dbg !81
  %uglygep6364 = bitcast i8* %uglygep63 to <4 x i32>*
  %wide.load23.1 = load <4 x i32>, <4 x i32>* %uglygep6364, align 4, !dbg !81
  %20 = mul <4 x i32> %broadcast.splat, %wide.load22.1, !dbg !82
  %21 = mul <4 x i32> %broadcast.splat25, %wide.load23.1, !dbg !82
  %22 = add <4 x i32> %20, %wide.load.1, !dbg !83
  %23 = add <4 x i32> %21, %wide.load21.1, !dbg !83
  %uglygep31 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %lsr.iv, !dbg !84
  %uglygep3132 = bitcast i8* %uglygep31 to <4 x i32>*
  %scevgep33 = getelementptr <4 x i32>, <4 x i32>* %uglygep3132, i64 62, !dbg !84
  %scevgep3334 = bitcast <4 x i32>* %scevgep33 to i8*
  %uglygep35 = getelementptr i8, i8* %scevgep3334, i64 4, !dbg !84
  %uglygep3536 = bitcast i8* %uglygep35 to <4 x i32>*
  store <4 x i32> %22, <4 x i32>* %uglygep3536, align 4, !dbg !84
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %lsr.iv, !dbg !84
  %uglygep27 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep27, i64 63, !dbg !84
  %scevgep28 = bitcast <4 x i32>* %scevgep to i8*
  %uglygep29 = getelementptr i8, i8* %scevgep28, i64 4, !dbg !84
  %uglygep2930 = bitcast i8* %uglygep29 to <4 x i32>*
  store <4 x i32> %23, <4 x i32>* %uglygep2930, align 4, !dbg !84
  %lsr.iv.next = add nsw i64 %lsr.iv, 64
  br label %vector.body

; uselistorder directives
  uselistorder i64 %lsr.iv, { 12, 11, 10, 4, 3, 9, 8, 0, 5, 6, 1, 2, 7 }
  uselistorder i32 %0, { 0, 1, 2, 3, 4, 5, 8, 6, 7 }
  uselistorder i64 63, { 1, 0 }
  uselistorder i64 62, { 1, 0 }
  uselistorder i64 61, { 1, 0 }
  uselistorder i64 4, { 7, 6, 3, 2, 4, 5, 0, 1 }
  uselistorder i64 60, { 1, 0 }
  uselistorder [32000 x i32]* @b, { 1, 2, 3, 4, 5, 6, 7, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 3, 2, 0, 1 }
  uselistorder [256 x [256 x i32]]* @aa, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 0 }
  uselistorder i8* bitcast ([256 x [256 x i32]]* @aa to i8*), { 6, 5, 4, 3, 0, 1, 2 }
  uselistorder i32 0, { 3, 0, 1, 2 }
  uselistorder i64 0, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 0, 29 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 3, 6, 7, 8, 9, 10, 11, 12, 4, 5 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 2, 3, 4, 5, 7, 6, 8, 11, 9, 10 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s132.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s132", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s132.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !70, !71, !72}
!69 = !DILocalVariable(name: "m", scope: !64, file: !65, line: 9, type: !10)
!70 = !DILocalVariable(name: "j", scope: !64, file: !65, line: 10, type: !10)
!71 = !DILocalVariable(name: "k", scope: !64, file: !65, line: 11, type: !10)
!72 = !DILocalVariable(name: "i", scope: !73, file: !65, line: 12, type: !10)
!73 = distinct !DILexicalBlock(scope: !64, file: !65, line: 12, column: 3)
!74 = !DILocation(line: 0, scope: !64)
!75 = !DILocation(line: 0, scope: !73)
!76 = !DILocation(line: 0, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !65, line: 12, column: 33)
!78 = distinct !DILexicalBlock(scope: !73, file: !65, line: 12, column: 3)
!79 = !DILocation(line: 12, column: 3, scope: !73)
!80 = !DILocation(line: 13, column: 15, scope: !77)
!81 = !DILocation(line: 13, column: 28, scope: !77)
!82 = !DILocation(line: 13, column: 33, scope: !77)
!83 = !DILocation(line: 13, column: 26, scope: !77)
!84 = !DILocation(line: 13, column: 13, scope: !77)
!85 = distinct !{!85, !79, !86, !87}
!86 = !DILocation(line: 14, column: 3, scope: !73)
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !DILocation(line: 15, column: 2, scope: !64)
