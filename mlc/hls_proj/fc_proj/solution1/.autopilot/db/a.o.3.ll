; ModuleID = 'C:/Users/Wilson/Desktop/digital_soc_final/digital_soc_final/hls_proj/fc_proj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@fc_layer_str = internal unnamed_addr constant [9 x i8] c"fc_layer\00" ; [#uses=1 type=[9 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=7 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=7 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=41 type=[1 x i8]*]
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=22]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fc_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %batch_size, i32 %num_inputs, i32 %num_outputs, i32 %enable_relu) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %batch_size) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_inputs) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_outputs) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %enable_relu) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @fc_layer_str) nounwind
  %enable_relu_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %enable_relu) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %enable_relu_read}, i64 0, metadata !45), !dbg !56 ; [debug line = 10:25] [debug variable = enable_relu]
  %num_outputs_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %num_outputs) nounwind ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs_read}, i64 0, metadata !57), !dbg !58 ; [debug line = 9:25] [debug variable = num_outputs]
  %num_inputs_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %num_inputs) nounwind ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %num_inputs_read}, i64 0, metadata !59), !dbg !60 ; [debug line = 8:25] [debug variable = num_inputs]
  %batch_size_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %batch_size) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %batch_size_read}, i64 0, metadata !61), !dbg !62 ; [debug line = 7:25] [debug variable = batch_size]
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %output_offset_read}, i64 0, metadata !63), !dbg !64 ; [debug line = 6:19] [debug variable = output_offset]
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %input_offset_read}, i64 0, metadata !65), !dbg !66 ; [debug line = 5:19] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !67), !dbg !68 ; [debug line = 4:23] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !65), !dbg !66 ; [debug line = 5:19] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !63), !dbg !64 ; [debug line = 6:19] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %batch_size}, i64 0, metadata !61), !dbg !62 ; [debug line = 7:25] [debug variable = batch_size]
  call void @llvm.dbg.value(metadata !{i32 %num_inputs}, i64 0, metadata !59), !dbg !60 ; [debug line = 8:25] [debug variable = num_inputs]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs}, i64 0, metadata !57), !dbg !58 ; [debug line = 9:25] [debug variable = num_outputs]
  call void @llvm.dbg.value(metadata !{i32 %enable_relu}, i64 0, metadata !45), !dbg !56 ; [debug line = 10:25] [debug variable = enable_relu]
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 2147483648, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !69 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !71 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !72 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %batch_size, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !73 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_inputs, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !74 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_outputs, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !75 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %enable_relu, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !76 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !77 ; [debug line = 19:1]
  %num_weights = mul nsw i32 %num_outputs_read, %num_inputs_read, !dbg !78 ; [#uses=2 type=i32] [debug line = 21:48]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !79), !dbg !78 ; [debug line = 21:48] [debug variable = num_weights]
  call void @llvm.dbg.value(metadata !{i32 %num_outputs}, i64 0, metadata !80), !dbg !81 ; [debug line = 22:37] [debug variable = num_biases]
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31), !dbg !82 ; [#uses=1 type=i30] [debug line = 31:79]
  %tmp_s = zext i30 %tmp to i32, !dbg !82         ; [#uses=3 type=i32] [debug line = 31:79]
  %tmp_1 = icmp eq i32 %enable_relu_read, 0, !dbg !87 ; [#uses=1 type=i1] [debug line = 51:7]
  %tmp_2 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31), !dbg !88 ; [#uses=1 type=i30] [debug line = 54:10]
  %tmp_4 = zext i30 %tmp_2 to i32, !dbg !88       ; [#uses=1 type=i32] [debug line = 54:10]
  %tmp2 = add i32 %tmp_s, %num_outputs_read, !dbg !89 ; [#uses=1 type=i32] [debug line = 36:106]
  br label %.loopexit, !dbg !92                   ; [debug line = 25:17]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %b = phi i31 [ 0, %0 ], [ %b_1, %.loopexit.loopexit ] ; [#uses=2 type=i31]
  %phi_mul1 = phi i32 [ 0, %0 ], [ %next_mul2, %.loopexit.loopexit ] ; [#uses=2 type=i32]
  %phi_mul3 = phi i32 [ 0, %0 ], [ %next_mul4, %.loopexit.loopexit ] ; [#uses=2 type=i32]
  %next_mul4 = add i32 %phi_mul3, %num_outputs_read ; [#uses=1 type=i32]
  %next_mul2 = add i32 %phi_mul1, %num_inputs_read ; [#uses=1 type=i32]
  %b_cast = zext i31 %b to i32, !dbg !92          ; [#uses=1 type=i32] [debug line = 25:17]
  %tmp_3 = icmp slt i32 %b_cast, %batch_size_read, !dbg !92 ; [#uses=1 type=i1] [debug line = 25:17]
  %b_1 = add i31 %b, 1, !dbg !93                  ; [#uses=1 type=i31] [debug line = 25:35]
  call void @llvm.dbg.value(metadata !{i31 %b_1}, i64 0, metadata !94), !dbg !93 ; [debug line = 25:35] [debug variable = b]
  br i1 %tmp_3, label %.preheader.preheader, label %8, !dbg !92 ; [debug line = 25:17]

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_6 = add i32 %phi_mul3, %tmp_4, !dbg !88    ; [#uses=2 type=i32] [debug line = 54:10]
  br label %.preheader, !dbg !95                  ; [debug line = 28:19]

.preheader:                                       ; preds = %7, %.preheader.preheader
  %o = phi i31 [ %o_1, %7 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i31]
  %phi_mul = phi i32 [ %next_mul, %7 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i32]
  %next_mul = add i32 %phi_mul, %num_inputs_read  ; [#uses=1 type=i32]
  %o_cast = zext i31 %o to i32, !dbg !95          ; [#uses=4 type=i32] [debug line = 28:19]
  %tmp_7 = icmp slt i32 %o_cast, %num_outputs_read, !dbg !95 ; [#uses=1 type=i1] [debug line = 28:19]
  %o_1 = add i31 %o, 1, !dbg !96                  ; [#uses=1 type=i31] [debug line = 28:38]
  br i1 %tmp_7, label %1, label %.loopexit.loopexit, !dbg !95 ; [debug line = 28:19]

; <label>:1                                       ; preds = %.preheader
  %tmp1 = add i32 %tmp_s, %o_cast, !dbg !82       ; [#uses=1 type=i32] [debug line = 31:79]
  %tmp_9 = add i32 %tmp1, %num_weights, !dbg !82  ; [#uses=1 type=i32] [debug line = 31:79]
  %mem_addr = getelementptr inbounds float* %mem, i32 %tmp_9, !dbg !82 ; [#uses=2 type=float*] [debug line = 31:79]
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1) nounwind, !dbg !82 ; [#uses=0 type=i1] [debug line = 31:79]
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr) nounwind, !dbg !82 ; [#uses=1 type=float] [debug line = 31:79]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !97), !dbg !82 ; [debug line = 31:79] [debug variable = output_element]
  br label %2, !dbg !98                           ; [debug line = 34:21]

; <label>:2                                       ; preds = %3, %1
  %tmp_8 = phi float [ %output_element, %1 ], [ %output_element_1, %3 ] ; [#uses=5 type=float]
  %i = phi i31 [ 0, %1 ], [ %i_1, %3 ]            ; [#uses=2 type=i31]
  %i_cast = zext i31 %i to i32, !dbg !98          ; [#uses=3 type=i32] [debug line = 34:21]
  %tmp_5 = icmp slt i32 %i_cast, %num_inputs_read, !dbg !98 ; [#uses=1 type=i1] [debug line = 34:21]
  %i_1 = add i31 %i, 1, !dbg !99                  ; [#uses=1 type=i31] [debug line = 34:39]
  br i1 %tmp_5, label %3, label %4, !dbg !98      ; [debug line = 34:21]

; <label>:3                                       ; preds = %2
  %tmp4 = add i32 %phi_mul1, %i_cast, !dbg !89    ; [#uses=1 type=i32] [debug line = 36:106]
  %tmp3 = add i32 %tmp4, %num_weights, !dbg !89   ; [#uses=1 type=i32] [debug line = 36:106]
  %tmp_10 = add i32 %tmp3, %tmp2, !dbg !89        ; [#uses=1 type=i32] [debug line = 36:106]
  %mem_addr_1 = getelementptr inbounds float* %mem, i32 %tmp_10, !dbg !89 ; [#uses=2 type=float*] [debug line = 36:106]
  %input_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_1, i32 1) nounwind, !dbg !89 ; [#uses=0 type=i1] [debug line = 36:106]
  %input_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_1) nounwind, !dbg !89 ; [#uses=1 type=float] [debug line = 36:106]
  call void @llvm.dbg.value(metadata !{float %input_element}, i64 0, metadata !100), !dbg !89 ; [debug line = 36:106] [debug variable = input_element]
  %tmp5 = add i32 %tmp_s, %i_cast, !dbg !101      ; [#uses=1 type=i32] [debug line = 38:84]
  %tmp_11 = add i32 %tmp5, %phi_mul, !dbg !101    ; [#uses=1 type=i32] [debug line = 38:84]
  %mem_addr_2 = getelementptr inbounds float* %mem, i32 %tmp_11, !dbg !101 ; [#uses=2 type=float*] [debug line = 38:84]
  %weight_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1) nounwind, !dbg !101 ; [#uses=0 type=i1] [debug line = 38:84]
  %weight_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2) nounwind, !dbg !101 ; [#uses=1 type=float] [debug line = 38:84]
  call void @llvm.dbg.value(metadata !{float %weight_element}, i64 0, metadata !102), !dbg !101 ; [debug line = 38:84] [debug variable = weight_element]
  %tmp_12 = fmul float %input_element, %weight_element, !dbg !103 ; [#uses=1 type=float] [debug line = 40:18]
  %output_element_1 = fadd float %tmp_8, %tmp_12, !dbg !103 ; [#uses=1 type=float] [debug line = 40:18]
  call void @llvm.dbg.value(metadata !{float %output_element_1}, i64 0, metadata !97), !dbg !103 ; [debug line = 40:18] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{i31 %i_1}, i64 0, metadata !104), !dbg !99 ; [debug line = 34:39] [debug variable = i]
  br label %2, !dbg !99                           ; [debug line = 34:39]

; <label>:4                                       ; preds = %2
  br i1 %tmp_1, label %6, label %5, !dbg !87      ; [debug line = 51:7]

; <label>:5                                       ; preds = %4
  %tmp_10_to_int = bitcast float %tmp_8 to i32    ; [#uses=2 type=i32]
  %tmp_14 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_10_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_15 = trunc i32 %tmp_10_to_int to i23       ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_14, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_15, 0                ; [#uses=1 type=i1]
  %tmp_16 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp_17 = fcmp ogt float %tmp_8, 0.000000e+00, !dbg !105 ; [#uses=1 type=i1] [debug line = 214:7@52:63]
  %tmp_18 = and i1 %tmp_16, %tmp_17, !dbg !105    ; [#uses=1 type=i1] [debug line = 214:7@52:63]
  %tmp_19 = select i1 %tmp_18, float %tmp_8, float 0.000000e+00, !dbg !117 ; [#uses=1 type=float] [debug line = 52:63]
  %tmp_20 = add i32 %o_cast, %tmp_6, !dbg !117    ; [#uses=1 type=i32] [debug line = 52:63]
  %mem_addr_4 = getelementptr inbounds float* %mem, i32 %tmp_20, !dbg !117 ; [#uses=3 type=float*] [debug line = 52:63]
  %mem_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_4, i32 1) nounwind, !dbg !117 ; [#uses=0 type=i1] [debug line = 52:63]
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_4, float %tmp_19, i4 -1) nounwind, !dbg !117 ; [debug line = 52:63]
  %mem_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_4) nounwind, !dbg !117 ; [#uses=0 type=i1] [debug line = 52:63]
  br label %7, !dbg !117                          ; [debug line = 52:63]

; <label>:6                                       ; preds = %4
  %tmp_13 = add i32 %o_cast, %tmp_6, !dbg !88     ; [#uses=1 type=i32] [debug line = 54:10]
  %mem_addr_3 = getelementptr inbounds float* %mem, i32 %tmp_13, !dbg !88 ; [#uses=3 type=float*] [debug line = 54:10]
  %mem_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_3, i32 1) nounwind, !dbg !88 ; [#uses=0 type=i1] [debug line = 54:10]
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_3, float %tmp_8, i4 -1) nounwind, !dbg !88 ; [debug line = 54:10]
  %mem_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_3) nounwind, !dbg !88 ; [#uses=0 type=i1] [debug line = 54:10]
  br label %7

; <label>:7                                       ; preds = %6, %5
  call void @llvm.dbg.value(metadata !{i31 %o_1}, i64 0, metadata !118), !dbg !96 ; [debug line = 28:38] [debug variable = o]
  br label %.preheader, !dbg !96                  ; [debug line = 28:38]

; <label>:8                                       ; preds = %.loopexit
  ret void, !dbg !119                             ; [debug line = 57:1]
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=8]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=6]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=3]
define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_4 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_4
}

; [#uses=2]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_5 = trunc i32 %empty to i30              ; [#uses=1 type=i30]
  ret i30 %empty_5
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{void (float*, i32, i32, i32, i32, i32, i32)* @fc_layer, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"batch_size", metadata !"num_inputs", metadata !"num_outputs", metadata !"enable_relu"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"mem", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"input_offset", metadata !23, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, i32 0}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"output_offset", metadata !23, metadata !"int", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"batch_size", metadata !23, metadata !"int", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"num_inputs", metadata !23, metadata !"int", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"num_outputs", metadata !23, metadata !"int", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"enable_relu", metadata !23, metadata !"int", i32 0, i32 31}
!45 = metadata !{i32 786689, metadata !46, metadata !"enable_relu", metadata !47, i32 117440522, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 786478, i32 0, metadata !47, metadata !"fc_layer", metadata !"fc_layer", metadata !"_Z8fc_layerPfiiiiii", metadata !47, i32 4, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32)* @fc_layer, null, null, metadata !54, i32 11} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786473, metadata !"../fc_test/fc_layer.cpp", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !50, metadata !52, metadata !52, metadata !53, metadata !53, metadata !53, metadata !53}
!50 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ]
!51 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!53 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_const_type ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!56 = metadata !{i32 10, i32 25, metadata !46, null}
!57 = metadata !{i32 786689, metadata !46, metadata !"num_outputs", metadata !47, i32 100663305, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 9, i32 25, metadata !46, null}
!59 = metadata !{i32 786689, metadata !46, metadata !"num_inputs", metadata !47, i32 83886088, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 8, i32 25, metadata !46, null}
!61 = metadata !{i32 786689, metadata !46, metadata !"batch_size", metadata !47, i32 67108871, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 7, i32 25, metadata !46, null}
!63 = metadata !{i32 786689, metadata !46, metadata !"output_offset", metadata !47, i32 50331654, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 6, i32 19, metadata !46, null}
!65 = metadata !{i32 786689, metadata !46, metadata !"input_offset", metadata !47, i32 33554437, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 5, i32 19, metadata !46, null}
!67 = metadata !{i32 786689, metadata !46, metadata !"mem", metadata !47, i32 16777220, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 4, i32 23, metadata !46, null}
!69 = metadata !{i32 12, i32 1, metadata !70, null}
!70 = metadata !{i32 786443, metadata !46, i32 11, i32 1, metadata !47, i32 0} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 13, i32 1, metadata !70, null}
!72 = metadata !{i32 14, i32 1, metadata !70, null}
!73 = metadata !{i32 15, i32 1, metadata !70, null}
!74 = metadata !{i32 16, i32 1, metadata !70, null}
!75 = metadata !{i32 17, i32 1, metadata !70, null}
!76 = metadata !{i32 18, i32 1, metadata !70, null}
!77 = metadata !{i32 19, i32 1, metadata !70, null}
!78 = metadata !{i32 21, i32 48, metadata !70, null}
!79 = metadata !{i32 786688, metadata !70, metadata !"num_weights", metadata !47, i32 21, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 786688, metadata !70, metadata !"num_biases", metadata !47, i32 22, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 22, i32 37, metadata !70, null}
!82 = metadata !{i32 31, i32 79, metadata !83, null}
!83 = metadata !{i32 786443, metadata !84, i32 28, i32 43, metadata !47, i32 4} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !85, i32 28, i32 5, metadata !47, i32 3} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !86, i32 25, i32 40, metadata !47, i32 2} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !70, i32 25, i32 3, metadata !47, i32 1} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 51, i32 7, metadata !83, null}
!88 = metadata !{i32 54, i32 10, metadata !83, null}
!89 = metadata !{i32 36, i32 106, metadata !90, null}
!90 = metadata !{i32 786443, metadata !91, i32 34, i32 48, metadata !47, i32 6} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !83, i32 34, i32 7, metadata !47, i32 5} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 25, i32 17, metadata !86, null}
!93 = metadata !{i32 25, i32 35, metadata !86, null}
!94 = metadata !{i32 786688, metadata !86, metadata !"b", metadata !47, i32 25, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 28, i32 19, metadata !84, null}
!96 = metadata !{i32 28, i32 38, metadata !84, null}
!97 = metadata !{i32 786688, metadata !83, metadata !"output_element", metadata !47, i32 31, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 34, i32 21, metadata !91, null}
!99 = metadata !{i32 34, i32 39, metadata !91, null}
!100 = metadata !{i32 786688, metadata !90, metadata !"input_element", metadata !47, i32 36, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 38, i32 84, metadata !90, null}
!102 = metadata !{i32 786688, metadata !90, metadata !"weight_element", metadata !47, i32 38, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 40, i32 18, metadata !90, null}
!104 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !47, i32 34, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 214, i32 7, metadata !106, metadata !117}
!106 = metadata !{i32 786443, metadata !107, i32 210, i32 5, metadata !116, i32 7} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 786478, i32 0, metadata !108, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !109, i32 342, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !114, null, metadata !54, i32 210} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786489, null, metadata !"std", metadata !109, i32 39} ; [ DW_TAG_namespace ]
!109 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cbits/algorithmfwd.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{metadata !112, metadata !112, metadata !112}
!112 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !113} ; [ DW_TAG_reference_type ]
!113 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_const_type ]
!114 = metadata !{metadata !115}
!115 = metadata !{i32 786479, null, metadata !"_Tp", metadata !51, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!116 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cbits/stl_algobase.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!117 = metadata !{i32 52, i32 63, metadata !83, null}
!118 = metadata !{i32 786688, metadata !84, metadata !"o", metadata !47, i32 28, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 57, i32 1, metadata !70, null}
