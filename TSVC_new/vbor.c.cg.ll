; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/vbor.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/vbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !32
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !34
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !36
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !38
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !40
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !26
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !28
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !45
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !47
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !49
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !51
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !53
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !56
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !58

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @vbor() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !80
  br label %vector.body, !dbg !81

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv227 = phi i64 [ %lsr.iv.next228, %vector.body ], [ 0, %entry ], !dbg !82
  %uglygep230 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv227, !dbg !84
  %uglygep230231 = bitcast i8* %uglygep230 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep230231, align 16, !dbg !84
  %uglygep232 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv227, !dbg !86
  %uglygep232233 = bitcast i8* %uglygep232 to <4 x i32>*
  %wide.load182 = load <4 x i32>, <4 x i32>* %uglygep232233, align 16, !dbg !86
  %uglygep234 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv227, !dbg !87
  %uglygep234235 = bitcast i8* %uglygep234 to <4 x i32>*
  %wide.load183 = load <4 x i32>, <4 x i32>* %uglygep234235, align 16, !dbg !87
  %uglygep236 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv227, !dbg !88
  %uglygep236237 = bitcast i8* %uglygep236 to <4 x i32>*
  %wide.load184 = load <4 x i32>, <4 x i32>* %uglygep236237, align 16, !dbg !88
  %uglygep238 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv227, !dbg !89
  %uglygep238239 = bitcast i8* %uglygep238 to <4 x i32>*
  %wide.load185 = load <4 x i32>, <4 x i32>* %uglygep238239, align 16, !dbg !89
  %uglygep240 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %lsr.iv227, !dbg !90
  %uglygep240241 = bitcast i8* %uglygep240 to <4 x i32>*
  %wide.load186 = load <4 x i32>, <4 x i32>* %uglygep240241, align 16, !dbg !90
  %0 = mul <4 x i32> %wide.load182, %wide.load, !dbg !91
  %1 = add <4 x i32> %wide.load186, %wide.load185, !dbg !92
  %2 = add <4 x i32> %1, %wide.load183, !dbg !93
  %3 = add <4 x i32> %2, %wide.load184, !dbg !94
  %4 = mul <4 x i32> %0, %3, !dbg !94
  %5 = mul <4 x i32> %wide.load183, %wide.load, !dbg !95
  %6 = mul <4 x i32> %5, %wide.load184, !dbg !96
  %7 = mul <4 x i32> %wide.load184, %wide.load, !dbg !97
  %8 = mul <4 x i32> %wide.load185, %wide.load, !dbg !98
  %9 = add <4 x i32> %7, %5
  %10 = add <4 x i32> %9, %8
  %11 = mul <4 x i32> %10, %wide.load186
  %12 = mul <4 x i32> %9, %wide.load185
  %13 = add <4 x i32> %12, %6, !dbg !99
  %14 = add <4 x i32> %13, %4, !dbg !100
  %15 = add <4 x i32> %14, %11, !dbg !101
  %16 = add <4 x i32> %1, %wide.load184, !dbg !102
  %17 = mul <4 x i32> %16, %wide.load183, !dbg !102
  %18 = mul <4 x i32> %wide.load186, %wide.load185, !dbg !103
  %19 = add <4 x i32> %17, %18
  %20 = mul <4 x i32> %1, %wide.load184
  %21 = add <4 x i32> %19, %20
  %22 = add <4 x i32> %20, %18
  %23 = mul <4 x i32> %18, %wide.load182, !dbg !104
  %24 = mul <4 x i32> %23, %wide.load183, !dbg !105
  %25 = mul <4 x i32> %24, %wide.load184, !dbg !106
  %26 = mul <4 x i32> %25, %22, !dbg !107
  %27 = mul <4 x i32> %26, %21, !dbg !108
  %28 = mul <4 x i32> %27, %15, !dbg !109
  %uglygep242 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv227, !dbg !110
  %uglygep242243 = bitcast i8* %uglygep242 to <4 x i32>*
  store <4 x i32> %28, <4 x i32>* %uglygep242243, align 16, !dbg !110
  %lsr.iv.next228 = add nuw nsw i64 %lsr.iv227, 16, !dbg !82
  %29 = icmp eq i64 %lsr.iv.next228, 1024, !dbg !82
  br i1 %29, label %vector.body189.preheader, label %vector.body, !dbg !82, !llvm.loop !111

vector.body189.preheader:                         ; preds = %vector.body
  br label %vector.body189, !dbg !114

vector.body189:                                   ; preds = %vector.body189.preheader, %vector.body189
  %lsr.iv = phi i64 [ -128000, %vector.body189.preheader ], [ %lsr.iv.next, %vector.body189 ], !dbg !115
  %vec.phi = phi <4 x i32> [ %38, %vector.body189 ], [ zeroinitializer, %vector.body189.preheader ]
  %vec.phi195 = phi <4 x i32> [ %39, %vector.body189 ], [ zeroinitializer, %vector.body189.preheader ]
  %uglygep217 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !117
  %uglygep217218 = bitcast i8* %uglygep217 to <4 x i32>*
  %scevgep219 = getelementptr <4 x i32>, <4 x i32>* %uglygep217218, i64 8000, !dbg !117
  %wide.load196 = load <4 x i32>, <4 x i32>* %scevgep219, align 16, !dbg !117
  %scevgep220 = getelementptr <4 x i32>, <4 x i32>* %uglygep217218, i64 8001, !dbg !117
  %wide.load197 = load <4 x i32>, <4 x i32>* %scevgep220, align 16, !dbg !117
  %30 = add <4 x i32> %wide.load196, %vec.phi, !dbg !119
  %31 = add <4 x i32> %wide.load197, %vec.phi195, !dbg !119
  %uglygep224 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !117
  %uglygep224225 = bitcast i8* %uglygep224 to <4 x i32>*
  %scevgep226 = getelementptr <4 x i32>, <4 x i32>* %uglygep224225, i64 8002, !dbg !117
  %wide.load196.1 = load <4 x i32>, <4 x i32>* %scevgep226, align 16, !dbg !117
  %uglygep221 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !117
  %uglygep221222 = bitcast i8* %uglygep221 to <4 x i32>*
  %scevgep223 = getelementptr <4 x i32>, <4 x i32>* %uglygep221222, i64 8003, !dbg !117
  %wide.load197.1 = load <4 x i32>, <4 x i32>* %scevgep223, align 16, !dbg !117
  %32 = add <4 x i32> %wide.load196.1, %30, !dbg !119
  %33 = add <4 x i32> %wide.load197.1, %31, !dbg !119
  %uglygep214 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !117
  %uglygep214215 = bitcast i8* %uglygep214 to <4 x i32>*
  %scevgep216 = getelementptr <4 x i32>, <4 x i32>* %uglygep214215, i64 8004, !dbg !117
  %wide.load196.2 = load <4 x i32>, <4 x i32>* %scevgep216, align 16, !dbg !117
  %uglygep211 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !117
  %uglygep211212 = bitcast i8* %uglygep211 to <4 x i32>*
  %scevgep213 = getelementptr <4 x i32>, <4 x i32>* %uglygep211212, i64 8005, !dbg !117
  %wide.load197.2 = load <4 x i32>, <4 x i32>* %scevgep213, align 16, !dbg !117
  %34 = add <4 x i32> %wide.load196.2, %32, !dbg !119
  %35 = add <4 x i32> %wide.load197.2, %33, !dbg !119
  %uglygep208 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !117
  %uglygep208209 = bitcast i8* %uglygep208 to <4 x i32>*
  %scevgep210 = getelementptr <4 x i32>, <4 x i32>* %uglygep208209, i64 8006, !dbg !117
  %wide.load196.3 = load <4 x i32>, <4 x i32>* %scevgep210, align 16, !dbg !117
  %uglygep205 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !117
  %uglygep205206 = bitcast i8* %uglygep205 to <4 x i32>*
  %scevgep207 = getelementptr <4 x i32>, <4 x i32>* %uglygep205206, i64 8007, !dbg !117
  %wide.load197.3 = load <4 x i32>, <4 x i32>* %scevgep207, align 16, !dbg !117
  %36 = add <4 x i32> %wide.load196.3, %34, !dbg !119
  %37 = add <4 x i32> %wide.load197.3, %35, !dbg !119
  %uglygep202 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !117
  %uglygep202203 = bitcast i8* %uglygep202 to <4 x i32>*
  %scevgep204 = getelementptr <4 x i32>, <4 x i32>* %uglygep202203, i64 8008, !dbg !117
  %wide.load196.4 = load <4 x i32>, <4 x i32>* %scevgep204, align 16, !dbg !117
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !117
  %uglygep201 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep201, i64 8009, !dbg !117
  %wide.load197.4 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !117
  %38 = add <4 x i32> %wide.load196.4, %36, !dbg !119
  %39 = add <4 x i32> %wide.load197.4, %37, !dbg !119
  %lsr.iv.next = add nsw i64 %lsr.iv, 160, !dbg !115
  %40 = icmp eq i64 %lsr.iv.next, 0, !dbg !115
  br i1 %40, label %middle.block187, label %vector.body189, !dbg !115, !llvm.loop !120

middle.block187:                                  ; preds = %vector.body189
  %bin.rdx = add <4 x i32> %39, %38, !dbg !114
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !114
  %bin.rdx244 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !114
  %rdx.shuf245 = shufflevector <4 x i32> %bin.rdx244, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !114
  %bin.rdx246 = add <4 x i32> %bin.rdx244, %rdx.shuf245, !dbg !114
  %41 = extractelement <4 x i32> %bin.rdx246, i32 0, !dbg !114
  call void @llvm.dbg.value(metadata i32 %41, metadata !77, metadata !DIExpression()), !dbg !122
  store i32 %41, i32* @temp, align 4, !dbg !123
  ret i32 0, !dbg !124

; uselistorder directives
  uselistorder <4 x i32> %39, { 1, 0 }
  uselistorder <4 x i32> %38, { 1, 0 }
  uselistorder i64 %lsr.iv, { 9, 8, 7, 6, 5, 4, 3, 1, 0, 2 }
  uselistorder i64 %lsr.iv227, { 7, 0, 1, 2, 3, 4, 5, 6 }
  uselistorder i32 0, { 2, 0, 1 }
  uselistorder i8* bitcast ([32000 x i32]* @x to i8*), { 9, 8, 7, 6, 5, 4, 2, 1, 3, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 8, 9, 10, 11, 12, 7, 2, 3, 4, 5, 6 }
  uselistorder i64 0, { 1, 0 }
  uselistorder label %vector.body189, { 1, 0 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/vbor.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "vbor", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/vbor.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !70, !71, !72, !73, !74, !75, !77, !78}
!69 = !DILocalVariable(name: "a1", scope: !64, file: !65, line: 10, type: !10)
!70 = !DILocalVariable(name: "b1", scope: !64, file: !65, line: 10, type: !10)
!71 = !DILocalVariable(name: "c1", scope: !64, file: !65, line: 10, type: !10)
!72 = !DILocalVariable(name: "d1", scope: !64, file: !65, line: 10, type: !10)
!73 = !DILocalVariable(name: "e1", scope: !64, file: !65, line: 10, type: !10)
!74 = !DILocalVariable(name: "f1", scope: !64, file: !65, line: 10, type: !10)
!75 = !DILocalVariable(name: "i", scope: !76, file: !65, line: 11, type: !10)
!76 = distinct !DILexicalBlock(scope: !64, file: !65, line: 11, column: 3)
!77 = !DILocalVariable(name: "sum", scope: !64, file: !65, line: 27, type: !10)
!78 = !DILocalVariable(name: "i", scope: !79, file: !65, line: 28, type: !10)
!79 = distinct !DILexicalBlock(scope: !64, file: !65, line: 28, column: 2)
!80 = !DILocation(line: 0, scope: !76)
!81 = !DILocation(line: 11, column: 3, scope: !76)
!82 = !DILocation(line: 11, column: 30, scope: !83)
!83 = distinct !DILexicalBlock(scope: !76, file: !65, line: 11, column: 3)
!84 = !DILocation(line: 12, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !83, file: !65, line: 11, column: 34)
!86 = !DILocation(line: 13, column: 9, scope: !85)
!87 = !DILocation(line: 14, column: 9, scope: !85)
!88 = !DILocation(line: 15, column: 9, scope: !85)
!89 = !DILocation(line: 16, column: 9, scope: !85)
!90 = !DILocation(line: 17, column: 9, scope: !85)
!91 = !DILocation(line: 18, column: 12, scope: !85)
!92 = !DILocation(line: 18, column: 22, scope: !85)
!93 = !DILocation(line: 18, column: 37, scope: !85)
!94 = !DILocation(line: 18, column: 52, scope: !85)
!95 = !DILocation(line: 19, column: 8, scope: !85)
!96 = !DILocation(line: 19, column: 13, scope: !85)
!97 = !DILocation(line: 19, column: 53, scope: !85)
!98 = !DILocation(line: 20, column: 30, scope: !85)
!99 = !DILocation(line: 19, column: 48, scope: !85)
!100 = !DILocation(line: 20, column: 5, scope: !85)
!101 = !DILocation(line: 20, column: 20, scope: !85)
!102 = !DILocation(line: 21, column: 37, scope: !85)
!103 = !DILocation(line: 22, column: 28, scope: !85)
!104 = !DILocation(line: 25, column: 14, scope: !85)
!105 = !DILocation(line: 23, column: 37, scope: !85)
!106 = !DILocation(line: 25, column: 19, scope: !85)
!107 = !DILocation(line: 24, column: 12, scope: !85)
!108 = !DILocation(line: 24, column: 17, scope: !85)
!109 = !DILocation(line: 25, column: 24, scope: !85)
!110 = !DILocation(line: 25, column: 9, scope: !85)
!111 = distinct !{!111, !81, !112, !113}
!112 = !DILocation(line: 26, column: 3, scope: !76)
!113 = !{!"llvm.loop.isvectorized", i32 1}
!114 = !DILocation(line: 28, column: 2, scope: !79)
!115 = !DILocation(line: 28, column: 28, scope: !116)
!116 = distinct !DILexicalBlock(scope: !79, file: !65, line: 28, column: 2)
!117 = !DILocation(line: 29, column: 10, scope: !118)
!118 = distinct !DILexicalBlock(scope: !116, file: !65, line: 28, column: 31)
!119 = !DILocation(line: 29, column: 7, scope: !118)
!120 = distinct !{!120, !114, !121, !113}
!121 = !DILocation(line: 30, column: 2, scope: !79)
!122 = !DILocation(line: 0, scope: !64)
!123 = !DILocation(line: 31, column: 7, scope: !64)
!124 = !DILocation(line: 32, column: 2, scope: !64)
