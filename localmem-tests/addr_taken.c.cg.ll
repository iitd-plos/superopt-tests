; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/localmem-tests/addr_taken.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/localmem-tests/addr_taken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind
define dso_local i32 @read_int() local_unnamed_addr #0 !dbg !9 {
entry:
  %ret = alloca i32, align 4
  %0 = bitcast i32* %ret to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4, !dbg !16
  call void @llvm.dbg.value(metadata i32* %ret, metadata !15, metadata !DIExpression(DW_OP_deref)), !dbg !17
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* nonnull %ret) #5, !dbg !18
  %1 = load i32, i32* %ret, align 4, !dbg !19
  call void @llvm.dbg.value(metadata i32 %1, metadata !15, metadata !DIExpression()), !dbg !17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4, !dbg !20
  ret i32 %1, !dbg !21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !22 dso_local i32 @__isoc99_scanf(i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind
define dso_local i32 @read_str() local_unnamed_addr #0 !dbg !29 {
entry:
  %ret = alloca [8 x i8], align 1
  %0 = bitcast [8 x i8]* %ret to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4, !dbg !35
  call void @llvm.dbg.declare(metadata [8 x i8]* %ret, metadata !31, metadata !DIExpression()), !dbg !36
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %0) #5, !dbg !37
  %call2 = call i64 @MYmystrtol(i8* nonnull %0, i8** null, i32 16) #5, !dbg !38
  %conv = trunc i64 %call2 to i32, !dbg !38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4, !dbg !39
  ret i32 %conv, !dbg !40

; uselistorder directives
  uselistorder i8* %0, { 0, 2, 3, 1 }
}

declare !dbg !41 dso_local i64 @MYmystrtol(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noinline nounwind
define dso_local i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 !dbg !48 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !52, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i8** %argv, metadata !53, metadata !DIExpression()), !dbg !56
  %call = call i32 @read_int() #6, !dbg !57
  call void @llvm.dbg.value(metadata i32 %call, metadata !54, metadata !DIExpression()), !dbg !56
  %call1 = call i32 @read_str() #6, !dbg !58
  call void @llvm.dbg.value(metadata i32 %call1, metadata !55, metadata !DIExpression()), !dbg !56
  %add = add i32 %call1, %call, !dbg !59
  %conv2 = and i32 %add, 255, !dbg !60
  ret i32 %conv2, !dbg !61

; uselistorder directives
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 5, 2, 3, 4, 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 e9e62cf08636a61a96ae6bd6404a0900be4363e0)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/localmem-tests/addr_taken.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/localmem-tests")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 e9e62cf08636a61a96ae6bd6404a0900be4363e0)"}
!9 = distinct !DISubprogram(name: "read_int", scope: !10, file: !10, line: 3, type: !11, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!10 = !DIFile(filename: "localmem-tests/addr_taken.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15}
!15 = !DILocalVariable(name: "ret", scope: !9, file: !10, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 3, scope: !9)
!17 = !DILocation(line: 0, scope: !9)
!18 = !DILocation(line: 6, column: 3, scope: !9)
!19 = !DILocation(line: 7, column: 10, scope: !9)
!20 = !DILocation(line: 8, column: 1, scope: !9)
!21 = !DILocation(line: 7, column: 3, scope: !9)
!22 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !23, file: !23, line: 410, type: !24, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!23 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!24 = !DISubroutineType(types: !25)
!25 = !{!13, !26, null}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = distinct !DISubprogram(name: "read_str", scope: !10, file: !10, line: 10, type: !11, scopeLine: 11, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!30 = !{!31}
!31 = !DILocalVariable(name: "ret", scope: !29, file: !10, line: 12, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 8)
!35 = !DILocation(line: 12, column: 3, scope: !29)
!36 = !DILocation(line: 12, column: 8, scope: !29)
!37 = !DILocation(line: 13, column: 3, scope: !29)
!38 = !DILocation(line: 14, column: 10, scope: !29)
!39 = !DILocation(line: 15, column: 1, scope: !29)
!40 = !DILocation(line: 14, column: 3, scope: !29)
!41 = !DISubprogram(name: "MYmystrtol", scope: !42, file: !42, line: 32, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!42 = !DIFile(filename: "localmem-tests/eqchecker_helper.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !26, !46, !13}
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!48 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 17, type: !49, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !51)
!49 = !DISubroutineType(types: !50)
!50 = !{!13, !13, !46}
!51 = !{!52, !53, !54, !55}
!52 = !DILocalVariable(name: "argc", arg: 1, scope: !48, file: !10, line: 17, type: !13)
!53 = !DILocalVariable(name: "argv", arg: 2, scope: !48, file: !10, line: 17, type: !46)
!54 = !DILocalVariable(name: "i", scope: !48, file: !10, line: 19, type: !13)
!55 = !DILocalVariable(name: "j", scope: !48, file: !10, line: 20, type: !13)
!56 = !DILocation(line: 0, scope: !48)
!57 = !DILocation(line: 19, column: 11, scope: !48)
!58 = !DILocation(line: 20, column: 11, scope: !48)
!59 = !DILocation(line: 21, column: 27, scope: !48)
!60 = !DILocation(line: 21, column: 10, scope: !48)
!61 = !DILocation(line: 21, column: 3, scope: !48)
