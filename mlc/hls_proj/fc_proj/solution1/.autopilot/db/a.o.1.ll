; ModuleID = 'C:/Users/Wilson/Desktop/digital_soc_final/digital_soc_final/hls_proj/fc_proj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@fc_layer.str = internal unnamed_addr constant [9 x i8] c"fc_layer\00" ; [#uses=1 type=[9 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=32]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @fc_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %batch_size, i32 %num_inputs, i32 %num_outputs, i32 %enable_relu) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @fc_layer.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !54), !dbg !55 ; [debug line = 4:23] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !56), !dbg !57 ; [debug line = 5:19] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !58), !dbg !59 ; [debug line = 6:19] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %batch_size}, i64 0, metadata !60), !dbg !61 ; [debug line = 7:25] [debug variable = batch_size]
  call void @llvm.dbg.value(metadata !{i32 %num_inputs}, i64 0, metadata !62), !dbg !63 ; [debug line = 8:25] [debug variable = num_inputs]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs}, i64 0, metadata !64), !dbg !65 ; [debug line = 9:25] [debug variable = num_outputs]
  call void @llvm.dbg.value(metadata !{i32 %enable_relu}, i64 0, metadata !66), !dbg !67 ; [debug line = 10:25] [debug variable = enable_relu]
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i64 2147483648, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !68 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !70 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !71 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %batch_size, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !72 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_inputs, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !73 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_outputs, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !74 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %enable_relu, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !75 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 19:1]
  %num_weights = mul nsw i32 %num_outputs, %num_inputs, !dbg !77 ; [#uses=2 type=i32] [debug line = 21:48]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !78), !dbg !77 ; [debug line = 21:48] [debug variable = num_weights]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs}, i64 0, metadata !79), !dbg !80 ; [debug line = 22:37] [debug variable = num_biases]
  %tmp = lshr i32 %input_offset, 2, !dbg !81      ; [#uses=3 type=i32] [debug line = 31:79]
  %tmp.1 = icmp eq i32 %enable_relu, 0, !dbg !86  ; [#uses=1 type=i1] [debug line = 51:7]
  %tmp.2 = lshr i32 %output_offset, 2, !dbg !87   ; [#uses=1 type=i32] [debug line = 54:10]
  br label %1, !dbg !88                           ; [debug line = 25:17]

; <label>:1                                       ; preds = %9, %0
  %b = phi i32 [ 0, %0 ], [ %b.1, %9 ]            ; [#uses=4 type=i32]
  %tmp.3 = icmp slt i32 %b, %batch_size, !dbg !88 ; [#uses=1 type=i1] [debug line = 25:17]
  br i1 %tmp.3, label %.preheader.preheader, label %10, !dbg !88 ; [debug line = 25:17]

.preheader.preheader:                             ; preds = %1
  %tmp.4 = mul nsw i32 %b, %num_inputs, !dbg !89  ; [#uses=1 type=i32] [debug line = 36:106]
  %tmp.5 = mul nsw i32 %b, %num_outputs, !dbg !87 ; [#uses=1 type=i32] [debug line = 54:10]
  %tmp.6 = add i32 %tmp.5, %tmp.2, !dbg !87       ; [#uses=2 type=i32] [debug line = 54:10]
  br label %.preheader, !dbg !92                  ; [debug line = 28:19]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %o = phi i32 [ %o.1, %8 ], [ 0, %.preheader.preheader ] ; [#uses=6 type=i32]
  %tmp.7 = icmp slt i32 %o, %num_outputs, !dbg !92 ; [#uses=1 type=i1] [debug line = 28:19]
  br i1 %tmp.7, label %2, label %9, !dbg !92      ; [debug line = 28:19]

; <label>:2                                       ; preds = %.preheader
  %tmp.8 = add i32 %num_weights, %tmp, !dbg !81   ; [#uses=1 type=i32] [debug line = 31:79]
  %tmp.9 = add i32 %tmp.8, %o, !dbg !81           ; [#uses=1 type=i32] [debug line = 31:79]
  %mem.addr = getelementptr inbounds float* %mem, i32 %tmp.9, !dbg !81 ; [#uses=1 type=float*] [debug line = 31:79]
  %output_element = load float* %mem.addr, align 4, !dbg !81 ; [#uses=2 type=float] [debug line = 31:79]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %output_element) nounwind
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !93), !dbg !81 ; [debug line = 31:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !93), !dbg !81 ; [debug line = 31:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !93), !dbg !81 ; [debug line = 31:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !93), !dbg !81 ; [debug line = 31:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !93), !dbg !81 ; [debug line = 31:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !93), !dbg !81 ; [debug line = 31:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !93), !dbg !81 ; [debug line = 31:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !93), !dbg !81 ; [debug line = 31:79] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !93), !dbg !81 ; [debug line = 31:79] [debug variable = output_element]
  %tmp.10 = mul nsw i32 %o, %num_inputs, !dbg !94 ; [#uses=1 type=i32] [debug line = 38:84]
  br label %3, !dbg !95                           ; [debug line = 34:21]

; <label>:3                                       ; preds = %4, %2
  %tmp.12 = phi float [ %output_element, %2 ], [ %output_element.1, %4 ] ; [#uses=2 type=float]
  %i = phi i32 [ 0, %2 ], [ %i.1, %4 ]            ; [#uses=4 type=i32]
  %tmp.13 = icmp slt i32 %i, %num_inputs, !dbg !95 ; [#uses=1 type=i1] [debug line = 34:21]
  br i1 %tmp.13, label %4, label %5, !dbg !95     ; [debug line = 34:21]

; <label>:4                                       ; preds = %3
  %tmp.14 = add i32 %num_outputs, %tmp, !dbg !89  ; [#uses=1 type=i32] [debug line = 36:106]
  %tmp.15 = add i32 %tmp.14, %num_weights, !dbg !89 ; [#uses=1 type=i32] [debug line = 36:106]
  %tmp.16 = add i32 %tmp.15, %tmp.4, !dbg !89     ; [#uses=1 type=i32] [debug line = 36:106]
  %tmp.17 = add i32 %tmp.16, %i, !dbg !89         ; [#uses=1 type=i32] [debug line = 36:106]
  %mem.addr.1 = getelementptr inbounds float* %mem, i32 %tmp.17, !dbg !89 ; [#uses=1 type=float*] [debug line = 36:106]
  %input_element = load float* %mem.addr.1, align 4, !dbg !89 ; [#uses=2 type=float] [debug line = 36:106]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %input_element) nounwind
  call void @llvm.dbg.value(metadata !{float %input_element}, i64 0, metadata !96), !dbg !89 ; [debug line = 36:106] [debug variable = input_element]
  %tmp.18 = add i32 %tmp.10, %tmp, !dbg !94       ; [#uses=1 type=i32] [debug line = 38:84]
  %tmp.19 = add i32 %tmp.18, %i, !dbg !94         ; [#uses=1 type=i32] [debug line = 38:84]
  %mem.addr.2 = getelementptr inbounds float* %mem, i32 %tmp.19, !dbg !94 ; [#uses=1 type=float*] [debug line = 38:84]
  %weight_element = load float* %mem.addr.2, align 4, !dbg !94 ; [#uses=2 type=float] [debug line = 38:84]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %weight_element) nounwind
  call void @llvm.dbg.value(metadata !{float %weight_element}, i64 0, metadata !97), !dbg !94 ; [debug line = 38:84] [debug variable = weight_element]
  %tmp.20 = fmul float %input_element, %weight_element, !dbg !98 ; [#uses=1 type=float] [debug line = 40:18]
  %output_element.1 = fadd float %tmp.12, %tmp.20, !dbg !98 ; [#uses=1 type=float] [debug line = 40:18]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !93), !dbg !98 ; [debug line = 40:18] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !93), !dbg !98 ; [debug line = 40:18] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !93), !dbg !98 ; [debug line = 40:18] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !93), !dbg !98 ; [debug line = 40:18] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !93), !dbg !98 ; [debug line = 40:18] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !93), !dbg !98 ; [debug line = 40:18] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !93), !dbg !98 ; [debug line = 40:18] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !93), !dbg !98 ; [debug line = 40:18] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !93), !dbg !98 ; [debug line = 40:18] [debug variable = output_element]
  %i.1 = add nsw i32 %i, 1, !dbg !99              ; [#uses=1 type=i32] [debug line = 34:39]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !100), !dbg !99 ; [debug line = 34:39] [debug variable = i]
  br label %3, !dbg !99                           ; [debug line = 34:39]

; <label>:5                                       ; preds = %3
  %.lcssa = phi float [ %tmp.12, %3 ]             ; [#uses=3 type=float]
  br i1 %tmp.1, label %7, label %6, !dbg !86      ; [debug line = 51:7]

; <label>:6                                       ; preds = %5
  %tmp.24 = fcmp ogt float %.lcssa, 0.000000e+00, !dbg !101 ; [#uses=1 type=i1] [debug line = 214:7@52:63]
  %tmp.25 = select i1 %tmp.24, float %.lcssa, float 0.000000e+00, !dbg !104 ; [#uses=1 type=float] [debug line = 52:63]
  %tmp.26 = add i32 %o, %tmp.6, !dbg !104         ; [#uses=1 type=i32] [debug line = 52:63]
  %mem.addr.4 = getelementptr inbounds float* %mem, i32 %tmp.26, !dbg !104 ; [#uses=1 type=float*] [debug line = 52:63]
  store float %tmp.25, float* %mem.addr.4, align 4, !dbg !104 ; [debug line = 52:63]
  br label %8, !dbg !104                          ; [debug line = 52:63]

; <label>:7                                       ; preds = %5
  %tmp.23 = add i32 %o, %tmp.6, !dbg !87          ; [#uses=1 type=i32] [debug line = 54:10]
  %mem.addr.3 = getelementptr inbounds float* %mem, i32 %tmp.23, !dbg !87 ; [#uses=1 type=float*] [debug line = 54:10]
  store float %.lcssa, float* %mem.addr.3, align 4, !dbg !87 ; [debug line = 54:10]
  br label %8

; <label>:8                                       ; preds = %7, %6
  %o.1 = add nsw i32 %o, 1, !dbg !105             ; [#uses=1 type=i32] [debug line = 28:38]
  call void @llvm.dbg.value(metadata !{i32 %o.1}, i64 0, metadata !106), !dbg !105 ; [debug line = 28:38] [debug variable = o]
  br label %.preheader, !dbg !105                 ; [debug line = 28:38]

; <label>:9                                       ; preds = %.preheader
  %b.1 = add nsw i32 %b, 1, !dbg !107             ; [#uses=1 type=i32] [debug line = 25:35]
  call void @llvm.dbg.value(metadata !{i32 %b.1}, i64 0, metadata !108), !dbg !107 ; [debug line = 25:35] [debug variable = b]
  br label %1, !dbg !107                          ; [debug line = 25:35]

; <label>:10                                      ; preds = %1
  ret void, !dbg !109                             ; [debug line = 57:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=8]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!41, !48}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Wilson/Desktop/digital_soc_final/digital_soc_final/hls_proj/fc_proj/solution1/.autopilot/db/fc_layer.pragma.2.cpp", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fc_layer", metadata !"fc_layer", metadata !"_Z8fc_layerPfiiiiii", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32)* @fc_layer, null, null, metadata !13, i32 11} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../fc_test/fc_layer.cpp", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !12, metadata !12, metadata !12, metadata !12}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !17, i32 342, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !22, null, metadata !13, i32 210} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786489, null, metadata !"std", metadata !17, i32 39} ; [ DW_TAG_namespace ]
!17 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cbits/algorithmfwd.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !20, metadata !20, metadata !20}
!20 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_reference_type ]
!21 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786479, null, metadata !"_Tp", metadata !10, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !28, metadata !29, metadata !30, metadata !31, metadata !33, metadata !36}
!26 = metadata !{i32 786484, i32 0, null, metadata !"__digits", metadata !"__digits", metadata !"_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE", metadata !27, i32 74, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cext/numeric_traits.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"__max_digits10", metadata !"__max_digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E", metadata !27, i32 109, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"__digits10", metadata !"__digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E", metadata !27, i32 115, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"__max_exponent10", metadata !"__max_exponent10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E", metadata !27, i32 118, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !32, i32 157, metadata !11, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cstdlib.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786484, i32 0, null, metadata !"_amblksiz", metadata !"_amblksiz", metadata !"", metadata !34, i32 53, metadata !35, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cmalloc.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!35 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786484, i32 0, metadata !37, metadata !"nothrow", metadata !"nothrow", metadata !"_ZSt7nothrow", metadata !38, i32 70, metadata !39, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!37 = metadata !{i32 786489, null, metadata !"std", metadata !38, i32 47} ; [ DW_TAG_namespace ]
!38 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cnew", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!39 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ]
!40 = metadata !{i32 786434, metadata !37, metadata !"nothrow_t", metadata !38, i32 68, i64 8, i64 8, i32 0, i32 0, null, metadata !2, i32 0, null, null} ; [ DW_TAG_class_type ]
!41 = metadata !{void (float*, i32, i32, i32, i32, i32, i32)* @fc_layer, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47}
!42 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!43 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!45 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"batch_size", metadata !"num_inputs", metadata !"num_outputs", metadata !"enable_relu"}
!47 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!48 = metadata !{null, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !47}
!49 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!50 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const float &", metadata !"const float &"}
!52 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!54 = metadata !{i32 786689, metadata !5, metadata !"mem", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 4, i32 23, metadata !5, null}
!56 = metadata !{i32 786689, metadata !5, metadata !"input_offset", metadata !6, i32 33554437, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 5, i32 19, metadata !5, null}
!58 = metadata !{i32 786689, metadata !5, metadata !"output_offset", metadata !6, i32 50331654, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 6, i32 19, metadata !5, null}
!60 = metadata !{i32 786689, metadata !5, metadata !"batch_size", metadata !6, i32 67108871, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 7, i32 25, metadata !5, null}
!62 = metadata !{i32 786689, metadata !5, metadata !"num_inputs", metadata !6, i32 83886088, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 8, i32 25, metadata !5, null}
!64 = metadata !{i32 786689, metadata !5, metadata !"num_outputs", metadata !6, i32 100663305, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 9, i32 25, metadata !5, null}
!66 = metadata !{i32 786689, metadata !5, metadata !"enable_relu", metadata !6, i32 117440522, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 10, i32 25, metadata !5, null}
!68 = metadata !{i32 12, i32 1, metadata !69, null}
!69 = metadata !{i32 786443, metadata !5, i32 11, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 13, i32 1, metadata !69, null}
!71 = metadata !{i32 14, i32 1, metadata !69, null}
!72 = metadata !{i32 15, i32 1, metadata !69, null}
!73 = metadata !{i32 16, i32 1, metadata !69, null}
!74 = metadata !{i32 17, i32 1, metadata !69, null}
!75 = metadata !{i32 18, i32 1, metadata !69, null}
!76 = metadata !{i32 19, i32 1, metadata !69, null}
!77 = metadata !{i32 21, i32 48, metadata !69, null}
!78 = metadata !{i32 786688, metadata !69, metadata !"num_weights", metadata !6, i32 21, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 786688, metadata !69, metadata !"num_biases", metadata !6, i32 22, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 22, i32 37, metadata !69, null}
!81 = metadata !{i32 31, i32 79, metadata !82, null}
!82 = metadata !{i32 786443, metadata !83, i32 28, i32 43, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786443, metadata !84, i32 28, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !85, i32 25, i32 40, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !69, i32 25, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 51, i32 7, metadata !82, null}
!87 = metadata !{i32 54, i32 10, metadata !82, null}
!88 = metadata !{i32 25, i32 17, metadata !85, null}
!89 = metadata !{i32 36, i32 106, metadata !90, null}
!90 = metadata !{i32 786443, metadata !91, i32 34, i32 48, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !82, i32 34, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 28, i32 19, metadata !83, null}
!93 = metadata !{i32 786688, metadata !82, metadata !"output_element", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 38, i32 84, metadata !90, null}
!95 = metadata !{i32 34, i32 21, metadata !91, null}
!96 = metadata !{i32 786688, metadata !90, metadata !"input_element", metadata !6, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 786688, metadata !90, metadata !"weight_element", metadata !6, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 40, i32 18, metadata !90, null}
!99 = metadata !{i32 34, i32 39, metadata !91, null}
!100 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !6, i32 34, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 214, i32 7, metadata !102, metadata !104}
!102 = metadata !{i32 786443, metadata !15, i32 210, i32 5, metadata !103, i32 7} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cbits/stl_algobase.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!104 = metadata !{i32 52, i32 63, metadata !82, null}
!105 = metadata !{i32 28, i32 38, metadata !83, null}
!106 = metadata !{i32 786688, metadata !83, metadata !"o", metadata !6, i32 28, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 25, i32 35, metadata !85, null}
!108 = metadata !{i32 786688, metadata !85, metadata !"b", metadata !6, i32 25, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 57, i32 1, metadata !69, null}
