; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/paper_ex/paper_ex_src.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/paper_ex/paper_ex_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i8* @strcpy(i8* %dest, i8* nocapture readonly %src) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i8* %dest, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i8* %src, metadata !17, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i8* %dest, metadata !18, metadata !DIExpression()), !dbg !19
  br label %while.cond, !dbg !20

while.cond:                                       ; preds = %while.cond, %entry
  %src.addr.0 = phi i8* [ %src, %entry ], [ %incdec.ptr, %while.cond ]
  %dest.addr.0 = phi i8* [ %dest, %entry ], [ %incdec.ptr1, %while.cond ]
  call void @llvm.dbg.value(metadata i8* %dest.addr.0, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i8* %src.addr.0, metadata !17, metadata !DIExpression()), !dbg !19
  %incdec.ptr = getelementptr i8, i8* %src.addr.0, i64 1, !dbg !21
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !17, metadata !DIExpression()), !dbg !19
  %0 = load i8, i8* %src.addr.0, align 1, !dbg !22
  %incdec.ptr1 = getelementptr i8, i8* %dest.addr.0, i64 1, !dbg !23
  call void @llvm.dbg.value(metadata i8* %incdec.ptr1, metadata !16, metadata !DIExpression()), !dbg !19
  store i8 %0, i8* %dest.addr.0, align 1, !dbg !24
  %tobool.not = icmp eq i8 %0, 0, !dbg !20
  br i1 %tobool.not, label %while.end, label %while.cond, !dbg !20, !llvm.loop !25

while.end:                                        ; preds = %while.cond
  ret i8* %incdec.ptr1, !dbg !28

; uselistorder directives
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 3, 2, 6, 4, 5 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/paper_ex/paper_ex_src.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/paper_ex")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "strcpy", scope: !8, file: !8, line: 6, type: !9, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!8 = !DIFile(filename: "paper_ex/paper_ex_src.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !13}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!15 = !{!16, !17, !18}
!16 = !DILocalVariable(name: "dest", arg: 1, scope: !7, file: !8, line: 6, type: !11)
!17 = !DILocalVariable(name: "src", arg: 2, scope: !7, file: !8, line: 6, type: !13)
!18 = !DILocalVariable(name: "d", scope: !7, file: !8, line: 22, type: !11)
!19 = !DILocation(line: 0, scope: !7)
!20 = !DILocation(line: 23, column: 3, scope: !7)
!21 = !DILocation(line: 23, column: 25, scope: !7)
!22 = !DILocation(line: 23, column: 21, scope: !7)
!23 = !DILocation(line: 23, column: 16, scope: !7)
!24 = !DILocation(line: 23, column: 19, scope: !7)
!25 = distinct !{!25, !20, !26, !27}
!26 = !DILocation(line: 23, column: 29, scope: !7)
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !DILocation(line: 24, column: 3, scope: !7)
