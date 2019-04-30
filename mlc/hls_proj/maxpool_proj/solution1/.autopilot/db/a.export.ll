; ModuleID = 'C:/Users/Wilson/Desktop/digital_soc_final/digital_soc_final/hls_proj/maxpool_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@maxpool_layer_str = internal unnamed_addr constant [14 x i8] c"maxpool_layer\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

define void @maxpool_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %od) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ox) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %oy) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %id) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ix) nounwind, !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iy) nounwind, !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %s) nounwind, !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %k) nounwind, !map !66
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @maxpool_layer_str) nounwind
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
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31)
  %tmp_3 = zext i30 %tmp to i32
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31)
  %tmp_4 = zext i30 %tmp_1 to i32
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %b_s = phi i31 [ 0, %0 ], [ %b_1, %.loopexit.loopexit ]
  %phi_mul3 = phi i32 [ 0, %0 ], [ %next_mul4, %.loopexit.loopexit ]
  %phi_mul5 = phi i32 [ 0, %0 ], [ %next_mul6, %.loopexit.loopexit ]
  %next_mul6 = add i32 %phi_mul5, %od_read
  %next_mul4 = add i32 %phi_mul3, %id_read
  %b_cast = zext i31 %b_s to i32
  %tmp_2 = icmp slt i32 %b_cast, %b_read
  %b_1 = add i31 %b_s, 1
  br i1 %tmp_2, label %.preheader2.preheader, label %8

.preheader2.preheader:                            ; preds = %.loopexit
  br label %.preheader2

.preheader2.loopexit:                             ; preds = %.preheader1
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2.loopexit
  %i_d = phi i31 [ %o_d, %.preheader2.loopexit ], [ 0, %.preheader2.preheader ]
  %i_d_cast = zext i31 %i_d to i32
  %tmp_5 = icmp slt i32 %i_d_cast, %od_read
  %o_d = add i31 %i_d, 1
  br i1 %tmp_5, label %.preheader1.preheader, label %.loopexit.loopexit

.preheader1.preheader:                            ; preds = %.preheader2
  %tmp4 = add i32 %i_d_cast, %phi_mul3
  %tmp5 = mul i32 %tmp4, %iy_read
  %tmp9 = add i32 %i_d_cast, %phi_mul5
  %tmp7 = mul i32 %tmp9, %oy_read
  br label %.preheader1

.preheader1.loopexit:                             ; preds = %.preheader
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.loopexit, %.preheader1.preheader
  %o_y = phi i31 [ 0, %.preheader1.preheader ], [ %o_y_1, %.preheader1.loopexit ]
  %i_y = phi i32 [ 0, %.preheader1.preheader ], [ %next_mul2, %.preheader1.loopexit ]
  %next_mul2 = add i32 %i_y, %s_read
  %o_y_cast = zext i31 %o_y to i32
  %tmp_9 = icmp slt i32 %o_y_cast, %oy_read
  %o_y_1 = add i31 %o_y, 1
  br i1 %tmp_9, label %.preheader.preheader, label %.preheader2.loopexit

.preheader.preheader:                             ; preds = %.preheader1
  %tmp_s = add nsw i32 %i_y, %k_read
  %tmp8 = add i32 %o_y_cast, %tmp7
  %tmp1 = mul i32 %tmp8, %ox_read
  br label %.preheader

.preheader:                                       ; preds = %7, %.preheader.preheader
  %o_x = phi i31 [ %o_x_1, %7 ], [ 0, %.preheader.preheader ]
  %i_x = phi i32 [ %next_mul, %7 ], [ 0, %.preheader.preheader ]
  %next_mul = add i32 %i_x, %s_read
  %o_x_cast = zext i31 %o_x to i32
  %tmp_6 = icmp slt i32 %o_x_cast, %ox_read
  %o_x_1 = add i31 %o_x, 1
  br i1 %tmp_6, label %1, label %.preheader1.loopexit

; <label>:1                                       ; preds = %.preheader
  %tmp_7 = add nsw i32 %i_x, %k_read
  br label %2

; <label>:2                                       ; preds = %6, %1
  %tmp_8 = phi float [ -9.000000e+03, %1 ], [ %tmp_12, %6 ]
  %i_y1 = phi i32 [ %i_y, %1 ], [ %i_y_1, %6 ]
  %tmp_10 = icmp slt i32 %i_y1, %tmp_s
  br i1 %tmp_10, label %3, label %7

; <label>:3                                       ; preds = %2
  %tmp3 = add i32 %i_y1, %tmp5
  %tmp6 = mul i32 %tmp3, %ix_read
  br label %4

; <label>:4                                       ; preds = %5, %3
  %tmp_12 = phi float [ %tmp_8, %3 ], [ %output_element, %5 ]
  %i_x1 = phi i32 [ %i_x, %3 ], [ %i_x_1, %5 ]
  %tmp_13 = icmp slt i32 %i_x1, %tmp_7
  br i1 %tmp_13, label %5, label %6

; <label>:5                                       ; preds = %4
  %tmp2 = add i32 %tmp_3, %i_x1
  %tmp_14 = add i32 %tmp2, %tmp6
  %mem_addr_1 = getelementptr inbounds float* %mem, i32 %tmp_14
  %temp_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_1, i32 1) nounwind
  %temp = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_1) nounwind
  %temp_to_int = bitcast float %temp to i32
  %tmp_15 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp_to_int, i32 23, i32 30)
  %tmp_16 = trunc i32 %temp_to_int to i23
  %tmp_13_to_int = bitcast float %tmp_12 to i32
  %tmp_17 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_13_to_int, i32 23, i32 30)
  %tmp_18 = trunc i32 %tmp_13_to_int to i23
  %notlhs = icmp ne i8 %tmp_15, -1
  %notrhs = icmp eq i23 %tmp_16, 0
  %tmp_19 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i8 %tmp_17, -1
  %notrhs1 = icmp eq i23 %tmp_18, 0
  %tmp_20 = or i1 %notrhs1, %notlhs1
  %tmp_21 = and i1 %tmp_19, %tmp_20
  %tmp_22 = fcmp olt float %temp, %tmp_12
  %tmp_23 = and i1 %tmp_21, %tmp_22
  %output_element = select i1 %tmp_23, float %tmp_12, float %temp
  %i_x_1 = add nsw i32 1, %i_x1
  br label %4

; <label>:6                                       ; preds = %4
  %i_y_1 = add nsw i32 %i_y1, 1
  br label %2

; <label>:7                                       ; preds = %2
  %tmp10 = add i32 %tmp_4, %o_x_cast
  %tmp_11 = add i32 %tmp10, %tmp1
  %mem_addr = getelementptr inbounds float* %mem, i32 %tmp_11
  %mem_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr, i32 1) nounwind
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr, float %tmp_8, i4 -1) nounwind
  %mem_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr) nounwind
  br label %.preheader

; <label>:8                                       ; preds = %.loopexit
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i8
  ret i8 %empty_4
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i30
  ret i30 %empty_5
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!13}

!0 = metadata !{void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @maxpool_layer, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"b", metadata !"od", metadata !"ox", metadata !"oy", metadata !"id", metadata !"ix", metadata !"iy", metadata !"s", metadata !"k"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!13 = metadata !{metadata !14, [1 x i32]* @llvm_global_ctors_0}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"llvm.global_ctors.0", metadata !18, metadata !"", i32 0, i32 31}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"mem", metadata !18, metadata !"float", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"input_offset", metadata !28, metadata !"int", i32 0, i32 31}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 0, i32 0}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"output_offset", metadata !28, metadata !"int", i32 0, i32 31}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"b", metadata !28, metadata !"int", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 31, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"od", metadata !28, metadata !"int", i32 0, i32 31}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 31, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"ox", metadata !28, metadata !"int", i32 0, i32 31}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"oy", metadata !28, metadata !"int", i32 0, i32 31}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 31, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"id", metadata !28, metadata !"int", i32 0, i32 31}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 31, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"ix", metadata !28, metadata !"int", i32 0, i32 31}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 31, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"iy", metadata !28, metadata !"int", i32 0, i32 31}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 31, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"s", metadata !28, metadata !"int", i32 0, i32 31}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 31, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"k", metadata !28, metadata !"int", i32 0, i32 31}
