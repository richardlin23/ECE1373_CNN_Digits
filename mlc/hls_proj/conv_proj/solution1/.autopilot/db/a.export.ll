; ModuleID = 'C:/Users/Wilson/Desktop/digital_soc_final/digital_soc_final/hls_proj/conv_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@conv_layer_str = internal unnamed_addr constant [11 x i8] c"conv_layer\00"
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @conv_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %od) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ox) nounwind, !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %oy) nounwind, !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %id) nounwind, !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ix) nounwind, !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iy) nounwind, !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %s) nounwind, !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %k) nounwind, !map !60
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv_layer_str) nounwind
  %k_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %k) nounwind
  %s_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %s) nounwind
  %iy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %iy) nounwind
  %ix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ix) nounwind
  %id_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %id) nounwind
  %oy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %oy) nounwind
  %ox_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ox) nounwind
  %od_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %od) nounwind
  %b_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b) nounwind
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 2147483648, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp = mul i32 %od_read, %k_read
  %tmp13 = mul i32 %id_read, %k_read
  %num_weights = mul i32 %tmp13, %tmp
  %tmp_2 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31)
  %tmp_s = zext i30 %tmp_2 to i32
  %tmp_3 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31)
  %tmp_5 = zext i30 %tmp_3 to i32
  %tmp16 = add i32 %tmp_s, %od_read
  br label %.loopexit20

.loopexit20.loopexit:                             ; preds = %.preheader2
  br label %.loopexit20

.loopexit20:                                      ; preds = %.loopexit20.loopexit, %0
  %b_s = phi i31 [ 0, %0 ], [ %b_1, %.loopexit20.loopexit ]
  %phi_mul5 = phi i32 [ 0, %0 ], [ %next_mul6, %.loopexit20.loopexit ]
  %phi_mul7 = phi i32 [ 0, %0 ], [ %next_mul8, %.loopexit20.loopexit ]
  %next_mul8 = add i32 %phi_mul7, %od_read
  %next_mul6 = add i32 %phi_mul5, %id_read
  %b_cast = zext i31 %b_s to i32
  %tmp_4 = icmp slt i32 %b_cast, %b_read
  %b_1 = add i31 %b_s, 1
  br i1 %tmp_4, label %.preheader2.preheader, label %9

.preheader2.preheader:                            ; preds = %.loopexit20
  br label %.preheader2

.preheader2.loopexit:                             ; preds = %.preheader1
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2.loopexit
  %o_d = phi i31 [ %o_d_1, %.preheader2.loopexit ], [ 0, %.preheader2.preheader ]
  %phi_mul3 = phi i32 [ %next_mul4, %.preheader2.loopexit ], [ 0, %.preheader2.preheader ]
  %next_mul4 = add i32 %phi_mul3, %id_read
  %o_d_cast = zext i31 %o_d to i32
  %tmp_7 = icmp slt i32 %o_d_cast, %od_read
  %o_d_1 = add i31 %o_d, 1
  br i1 %tmp_7, label %.preheader1.preheader, label %.loopexit20.loopexit

.preheader1.preheader:                            ; preds = %.preheader2
  %tmp14 = add i32 %tmp_s, %o_d_cast
  %tmp_9 = add i32 %tmp14, %num_weights
  %mem_addr = getelementptr inbounds float* %mem, i32 %tmp_9
  %tmp1 = add i32 %o_d_cast, %phi_mul7
  %tmp2 = mul i32 %tmp1, %oy_read
  br label %.preheader1

.preheader1.loopexit:                             ; preds = %.preheader
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.loopexit, %.preheader1.preheader
  %o_y = phi i31 [ 0, %.preheader1.preheader ], [ %o_y_1, %.preheader1.loopexit ]
  %i_y = phi i32 [ 0, %.preheader1.preheader ], [ %next_mul2, %.preheader1.loopexit ]
  %next_mul2 = add i32 %i_y, %s_read
  %o_y_cast = zext i31 %o_y to i32
  %tmp_1 = icmp slt i32 %o_y_cast, %oy_read
  %o_y_1 = add i31 %o_y, 1
  br i1 %tmp_1, label %.preheader.preheader, label %.preheader2.loopexit

.preheader.preheader:                             ; preds = %.preheader1
  %tmp_8 = add nsw i32 %i_y, %k_read
  %tmp7 = add i32 %o_y_cast, %tmp2
  %tmp12 = mul i32 %tmp7, %ox_read
  br label %.preheader

.preheader:                                       ; preds = %8, %.preheader.preheader
  %o_x = phi i31 [ %o_x_1, %8 ], [ 0, %.preheader.preheader ]
  %i_x = phi i32 [ %next_mul, %8 ], [ 0, %.preheader.preheader ]
  %next_mul = add i32 %i_x, %s_read
  %o_x_cast = zext i31 %o_x to i32
  %tmp_6 = icmp slt i32 %o_x_cast, %ox_read
  %o_x_1 = add i31 %o_x, 1
  br i1 %tmp_6, label %1, label %.preheader1.loopexit

; <label>:1                                       ; preds = %.preheader
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1) nounwind
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr) nounwind
  %tmp_10 = add nsw i32 %i_x, %k_read
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %1
  %output_element1 = phi float [ %output_element, %1 ], [ %output_element_1, %.loopexit.loopexit ]
  %i_d = phi i31 [ 0, %1 ], [ %i_d_1, %.loopexit.loopexit ]
  %i_d_cast = zext i31 %i_d to i32
  %tmp_11 = icmp slt i32 %i_d_cast, %id_read
  %i_d_1 = add i31 %i_d, 1
  br i1 %tmp_11, label %2, label %8

; <label>:2                                       ; preds = %.loopexit
  %tmp4 = add i32 %i_d_cast, %phi_mul5
  %tmp5 = mul i32 %tmp4, %iy_read
  %tmp9 = add i32 %i_d_cast, %phi_mul3
  %tmp10 = mul i32 %tmp9, %k_read
  br label %3

; <label>:3                                       ; preds = %7, %2
  %output_element_1 = phi float [ %output_element1, %2 ], [ %output_element_2, %7 ]
  %i_y1 = phi i32 [ %i_y, %2 ], [ %i_y_1, %7 ]
  %iiy = phi i32 [ 0, %2 ], [ %iiy_1, %7 ]
  %tmp_13 = icmp slt i32 %i_y1, %tmp_8
  %iiy_1 = add nsw i32 %iiy, 1
  br i1 %tmp_13, label %4, label %.loopexit.loopexit

; <label>:4                                       ; preds = %3
  %tmp3 = add i32 %i_y1, %tmp5
  %tmp6 = mul i32 %tmp3, %ix_read
  %tmp8 = add i32 %iiy, %tmp10
  %tmp11 = mul i32 %tmp8, %k_read
  br label %5

; <label>:5                                       ; preds = %6, %4
  %output_element_2 = phi float [ %output_element_1, %4 ], [ %output_element_3, %6 ]
  %i_x1 = phi i32 [ %i_x, %4 ], [ %i_x_1, %6 ]
  %iix = phi i32 [ 0, %4 ], [ %iix_1, %6 ]
  %tmp_14 = icmp slt i32 %i_x1, %tmp_10
  %iix_1 = add nsw i32 %iix, 1
  br i1 %tmp_14, label %6, label %7

; <label>:6                                       ; preds = %5
  %tmp17 = add i32 %tmp6, %i_x1
  %tmp18 = add i32 %tmp17, %num_weights
  %tmp_15 = add i32 %tmp18, %tmp16
  %mem_addr_2 = getelementptr inbounds float* %mem, i32 %tmp_15
  %input_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1) nounwind
  %input_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2) nounwind
  %tmp19 = add i32 %tmp_s, %iix
  %tmp_16 = add i32 %tmp19, %tmp11
  %mem_addr_3 = getelementptr inbounds float* %mem, i32 %tmp_16
  %weight_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_3, i32 1) nounwind
  %weight_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_3) nounwind
  %tmp_17 = fmul float %input_element, %weight_element
  %output_element_3 = fadd float %output_element_2, %tmp_17
  %i_x_1 = add nsw i32 %i_x1, 1
  br label %5

; <label>:7                                       ; preds = %5
  %i_y_1 = add nsw i32 %i_y1, 1
  br label %3

; <label>:8                                       ; preds = %.loopexit
  %tmp15 = add i32 %tmp_5, %o_x_cast
  %tmp_12 = add i32 %tmp15, %tmp12
  %mem_addr_1 = getelementptr inbounds float* %mem, i32 %tmp_12
  %mem_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_1, i32 1) nounwind
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_1, float %output_element1, i4 -1) nounwind
  %mem_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_1) nounwind
  br label %.preheader

; <label>:9                                       ; preds = %.loopexit20
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i30
  ret i30 %empty_4
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!7}

!0 = metadata !{void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @conv_layer, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"b", metadata !"od", metadata !"ox", metadata !"oy", metadata !"id", metadata !"ix", metadata !"iy", metadata !"s", metadata !"k"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8, [1 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !12, metadata !"", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 0, i32 1}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"mem", metadata !12, metadata !"float", i32 0, i32 31}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 31, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"input_offset", metadata !22, metadata !"int", i32 0, i32 31}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 0, i32 0}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"output_offset", metadata !22, metadata !"int", i32 0, i32 31}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"b", metadata !22, metadata !"int", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"od", metadata !22, metadata !"int", i32 0, i32 31}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 31, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"ox", metadata !22, metadata !"int", i32 0, i32 31}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 31, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"oy", metadata !22, metadata !"int", i32 0, i32 31}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 31, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"id", metadata !22, metadata !"int", i32 0, i32 31}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"ix", metadata !22, metadata !"int", i32 0, i32 31}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 31, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"iy", metadata !22, metadata !"int", i32 0, i32 31}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 31, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"s", metadata !22, metadata !"int", i32 0, i32 31}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 31, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"k", metadata !22, metadata !"int", i32 0, i32 31}
