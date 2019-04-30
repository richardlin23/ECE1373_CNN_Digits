; ModuleID = 'C:/Users/Wilson/Desktop/digital_soc_final/digital_soc_final/hls_proj/conv_proj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@conv_layer_str = internal unnamed_addr constant [11 x i8] c"conv_layer\00" ; [#uses=1 type=[11 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=10 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=12 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=68 type=[1 x i8]*]
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=40]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
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
  %k_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %k) nounwind ; [#uses=6 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %k_read}, i64 0, metadata !64), !dbg !75 ; [debug line = 17:27] [debug variable = k]
  %s_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %s) nounwind ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %s_read}, i64 0, metadata !76), !dbg !77 ; [debug line = 16:27] [debug variable = s]
  %iy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %iy) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %iy_read}, i64 0, metadata !78), !dbg !79 ; [debug line = 15:27] [debug variable = iy]
  %ix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ix) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ix_read}, i64 0, metadata !80), !dbg !81 ; [debug line = 14:27] [debug variable = ix]
  %id_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %id) nounwind ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %id_read}, i64 0, metadata !82), !dbg !83 ; [debug line = 13:27] [debug variable = id]
  %oy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %oy) nounwind ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %oy_read}, i64 0, metadata !84), !dbg !85 ; [debug line = 12:27] [debug variable = oy]
  %ox_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ox) nounwind ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ox_read}, i64 0, metadata !86), !dbg !87 ; [debug line = 11:27] [debug variable = ox]
  %od_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %od) nounwind ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %od_read}, i64 0, metadata !88), !dbg !89 ; [debug line = 10:27] [debug variable = od]
  %b_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %b_read}, i64 0, metadata !90), !dbg !91 ; [debug line = 9:27] [debug variable = b]
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %output_offset_read}, i64 0, metadata !92), !dbg !93 ; [debug line = 8:21] [debug variable = output_offset]
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %input_offset_read}, i64 0, metadata !94), !dbg !95 ; [debug line = 7:21] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !96), !dbg !97 ; [debug line = 6:25] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !94), !dbg !95 ; [debug line = 7:21] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !92), !dbg !93 ; [debug line = 8:21] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !90), !dbg !91 ; [debug line = 9:27] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !88), !dbg !89 ; [debug line = 10:27] [debug variable = od]
  call void @llvm.dbg.value(metadata !{i32 %ox}, i64 0, metadata !86), !dbg !87 ; [debug line = 11:27] [debug variable = ox]
  call void @llvm.dbg.value(metadata !{i32 %oy}, i64 0, metadata !84), !dbg !85 ; [debug line = 12:27] [debug variable = oy]
  call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !82), !dbg !83 ; [debug line = 13:27] [debug variable = id]
  call void @llvm.dbg.value(metadata !{i32 %ix}, i64 0, metadata !80), !dbg !81 ; [debug line = 14:27] [debug variable = ix]
  call void @llvm.dbg.value(metadata !{i32 %iy}, i64 0, metadata !78), !dbg !79 ; [debug line = 15:27] [debug variable = iy]
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !76), !dbg !77 ; [debug line = 16:27] [debug variable = s]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !64), !dbg !75 ; [debug line = 17:27] [debug variable = k]
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 2147483648, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !98 ; [debug line = 21:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !100 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !101 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !102 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !103 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !104 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !105 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !106 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !107 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !108 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !109 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !110 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !111 ; [debug line = 34:1]
  %tmp = mul i32 %od_read, %k_read, !dbg !112     ; [#uses=1 type=i32] [debug line = 37:29]
  %tmp13 = mul i32 %id_read, %k_read, !dbg !112   ; [#uses=1 type=i32] [debug line = 37:29]
  %num_weights = mul i32 %tmp13, %tmp, !dbg !112  ; [#uses=2 type=i32] [debug line = 37:29]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !113), !dbg !112 ; [debug line = 37:29] [debug variable = num_weights]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !114), !dbg !115 ; [debug line = 38:22] [debug variable = num_biases]
  %tmp_2 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31), !dbg !116 ; [#uses=1 type=i30] [debug line = 55:86]
  %tmp_s = zext i30 %tmp_2 to i32, !dbg !116      ; [#uses=3 type=i32] [debug line = 55:86]
  %tmp_3 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31), !dbg !125 ; [#uses=1 type=i30] [debug line = 82:4]
  %tmp_5 = zext i30 %tmp_3 to i32, !dbg !125      ; [#uses=1 type=i32] [debug line = 82:4]
  %tmp16 = add i32 %tmp_s, %od_read, !dbg !126    ; [#uses=1 type=i32] [debug line = 69:135]
  br label %.loopexit20, !dbg !133                ; [debug line = 43:16]

.loopexit20.loopexit:                             ; preds = %.preheader2
  br label %.loopexit20

.loopexit20:                                      ; preds = %.loopexit20.loopexit, %0
  %b_s = phi i31 [ 0, %0 ], [ %b_1, %.loopexit20.loopexit ] ; [#uses=2 type=i31]
  %phi_mul5 = phi i32 [ 0, %0 ], [ %next_mul6, %.loopexit20.loopexit ] ; [#uses=2 type=i32]
  %phi_mul7 = phi i32 [ 0, %0 ], [ %next_mul8, %.loopexit20.loopexit ] ; [#uses=2 type=i32]
  %next_mul8 = add i32 %phi_mul7, %od_read        ; [#uses=1 type=i32]
  %next_mul6 = add i32 %phi_mul5, %id_read        ; [#uses=1 type=i32]
  %b_cast = zext i31 %b_s to i32, !dbg !133       ; [#uses=1 type=i32] [debug line = 43:16]
  %tmp_4 = icmp slt i32 %b_cast, %b_read, !dbg !133 ; [#uses=1 type=i1] [debug line = 43:16]
  %b_1 = add i31 %b_s, 1, !dbg !134               ; [#uses=1 type=i31] [debug line = 43:25]
  call void @llvm.dbg.value(metadata !{i31 %b_1}, i64 0, metadata !135), !dbg !134 ; [debug line = 43:25] [debug variable = b_]
  br i1 %tmp_4, label %.preheader2.preheader, label %9, !dbg !133 ; [debug line = 43:16]

.preheader2.preheader:                            ; preds = %.loopexit20
  br label %.preheader2

.preheader2.loopexit:                             ; preds = %.preheader1
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.loopexit, %.preheader2.preheader
  %o_d = phi i31 [ %o_d_1, %.preheader2.loopexit ], [ 0, %.preheader2.preheader ] ; [#uses=2 type=i31]
  %phi_mul3 = phi i32 [ %next_mul4, %.preheader2.loopexit ], [ 0, %.preheader2.preheader ] ; [#uses=2 type=i32]
  %next_mul4 = add i32 %phi_mul3, %id_read        ; [#uses=1 type=i32]
  %o_d_cast = zext i31 %o_d to i32, !dbg !136     ; [#uses=3 type=i32] [debug line = 46:21]
  %tmp_7 = icmp slt i32 %o_d_cast, %od_read, !dbg !136 ; [#uses=1 type=i1] [debug line = 46:21]
  %o_d_1 = add i31 %o_d, 1, !dbg !137             ; [#uses=1 type=i31] [debug line = 46:33]
  call void @llvm.dbg.value(metadata !{i31 %o_d_1}, i64 0, metadata !138), !dbg !137 ; [debug line = 46:33] [debug variable = o_d]
  br i1 %tmp_7, label %.preheader1.preheader, label %.loopexit20.loopexit, !dbg !136 ; [debug line = 46:21]

.preheader1.preheader:                            ; preds = %.preheader2
  %tmp14 = add i32 %tmp_s, %o_d_cast, !dbg !116   ; [#uses=1 type=i32] [debug line = 55:86]
  %tmp_9 = add i32 %tmp14, %num_weights, !dbg !116 ; [#uses=1 type=i32] [debug line = 55:86]
  %mem_addr = getelementptr inbounds float* %mem, i32 %tmp_9, !dbg !116 ; [#uses=2 type=float*] [debug line = 55:86]
  %tmp1 = add i32 %o_d_cast, %phi_mul7            ; [#uses=1 type=i32]
  %tmp2 = mul i32 %tmp1, %oy_read                 ; [#uses=1 type=i32]
  br label %.preheader1, !dbg !139                ; [debug line = 49:23]

.preheader1.loopexit:                             ; preds = %.preheader
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.loopexit, %.preheader1.preheader
  %o_y = phi i31 [ 0, %.preheader1.preheader ], [ %o_y_1, %.preheader1.loopexit ] ; [#uses=2 type=i31]
  %i_y = phi i32 [ 0, %.preheader1.preheader ], [ %next_mul2, %.preheader1.loopexit ] ; [#uses=3 type=i32]
  %next_mul2 = add i32 %i_y, %s_read              ; [#uses=1 type=i32]
  %o_y_cast = zext i31 %o_y to i32, !dbg !139     ; [#uses=2 type=i32] [debug line = 49:23]
  %tmp_1 = icmp slt i32 %o_y_cast, %oy_read, !dbg !139 ; [#uses=1 type=i1] [debug line = 49:23]
  %o_y_1 = add i31 %o_y, 1, !dbg !140             ; [#uses=1 type=i31] [debug line = 49:35]
  call void @llvm.dbg.value(metadata !{i31 %o_y_1}, i64 0, metadata !141), !dbg !140 ; [debug line = 49:35] [debug variable = o_y]
  br i1 %tmp_1, label %.preheader.preheader, label %.preheader2.loopexit, !dbg !139 ; [debug line = 49:23]

.preheader.preheader:                             ; preds = %.preheader1
  %tmp_8 = add nsw i32 %i_y, %k_read, !dbg !142   ; [#uses=1 type=i32] [debug line = 63:42]
  %tmp7 = add i32 %o_y_cast, %tmp2                ; [#uses=1 type=i32]
  %tmp12 = mul i32 %tmp7, %ox_read                ; [#uses=1 type=i32]
  br label %.preheader, !dbg !143                 ; [debug line = 52:25]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %o_x = phi i31 [ %o_x_1, %8 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i31]
  %i_x = phi i32 [ %next_mul, %8 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %next_mul = add i32 %i_x, %s_read               ; [#uses=1 type=i32]
  %o_x_cast = zext i31 %o_x to i32, !dbg !143     ; [#uses=2 type=i32] [debug line = 52:25]
  %tmp_6 = icmp slt i32 %o_x_cast, %ox_read, !dbg !143 ; [#uses=1 type=i1] [debug line = 52:25]
  %o_x_1 = add i31 %o_x, 1, !dbg !144             ; [#uses=1 type=i31] [debug line = 52:37]
  br i1 %tmp_6, label %1, label %.preheader1.loopexit, !dbg !143 ; [debug line = 52:25]

; <label>:1                                       ; preds = %.preheader
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1) nounwind, !dbg !116 ; [#uses=0 type=i1] [debug line = 55:86]
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr) nounwind, !dbg !116 ; [#uses=1 type=float] [debug line = 55:86]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !145), !dbg !116 ; [debug line = 55:86] [debug variable = output_element]
  %tmp_10 = add nsw i32 %i_x, %k_read, !dbg !146  ; [#uses=1 type=i32] [debug line = 66:44]
  br label %.loopexit, !dbg !147                  ; [debug line = 60:27]

.loopexit.loopexit:                               ; preds = %3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %1
  %output_element1 = phi float [ %output_element, %1 ], [ %output_element_1, %.loopexit.loopexit ] ; [#uses=2 type=float]
  %i_d = phi i31 [ 0, %1 ], [ %i_d_1, %.loopexit.loopexit ] ; [#uses=2 type=i31]
  %i_d_cast = zext i31 %i_d to i32, !dbg !147     ; [#uses=3 type=i32] [debug line = 60:27]
  %tmp_11 = icmp slt i32 %i_d_cast, %id_read, !dbg !147 ; [#uses=1 type=i1] [debug line = 60:27]
  %i_d_1 = add i31 %i_d, 1, !dbg !148             ; [#uses=1 type=i31] [debug line = 60:39]
  call void @llvm.dbg.value(metadata !{i31 %i_d_1}, i64 0, metadata !149), !dbg !148 ; [debug line = 60:39] [debug variable = i_d]
  br i1 %tmp_11, label %2, label %8, !dbg !147    ; [debug line = 60:27]

; <label>:2                                       ; preds = %.loopexit
  call void @llvm.dbg.value(metadata !{i32 %i_y}, i64 0, metadata !150), !dbg !142 ; [debug line = 63:42] [debug variable = i_y]
  %tmp4 = add i32 %i_d_cast, %phi_mul5            ; [#uses=1 type=i32]
  %tmp5 = mul i32 %tmp4, %iy_read                 ; [#uses=1 type=i32]
  %tmp9 = add i32 %i_d_cast, %phi_mul3            ; [#uses=1 type=i32]
  %tmp10 = mul i32 %tmp9, %k_read                 ; [#uses=1 type=i32]
  br label %3, !dbg !142                          ; [debug line = 63:42]

; <label>:3                                       ; preds = %7, %2
  %output_element_1 = phi float [ %output_element1, %2 ], [ %output_element_2, %7 ] ; [#uses=2 type=float]
  %i_y1 = phi i32 [ %i_y, %2 ], [ %i_y_1, %7 ]    ; [#uses=3 type=i32]
  %iiy = phi i32 [ 0, %2 ], [ %iiy_1, %7 ]        ; [#uses=2 type=i32]
  %tmp_13 = icmp slt i32 %i_y1, %tmp_8, !dbg !142 ; [#uses=1 type=i1] [debug line = 63:42]
  %iiy_1 = add nsw i32 %iiy, 1, !dbg !151         ; [#uses=1 type=i32] [debug line = 63:59]
  br i1 %tmp_13, label %4, label %.loopexit.loopexit, !dbg !142 ; [debug line = 63:42]

; <label>:4                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{i32 %i_x}, i64 0, metadata !152), !dbg !146 ; [debug line = 66:44] [debug variable = i_x]
  %tmp3 = add i32 %i_y1, %tmp5                    ; [#uses=1 type=i32]
  %tmp6 = mul i32 %tmp3, %ix_read                 ; [#uses=1 type=i32]
  %tmp8 = add i32 %iiy, %tmp10                    ; [#uses=1 type=i32]
  %tmp11 = mul i32 %tmp8, %k_read                 ; [#uses=1 type=i32]
  br label %5, !dbg !146                          ; [debug line = 66:44]

; <label>:5                                       ; preds = %6, %4
  %output_element_2 = phi float [ %output_element_1, %4 ], [ %output_element_3, %6 ] ; [#uses=2 type=float]
  %i_x1 = phi i32 [ %i_x, %4 ], [ %i_x_1, %6 ]    ; [#uses=3 type=i32]
  %iix = phi i32 [ 0, %4 ], [ %iix_1, %6 ]        ; [#uses=2 type=i32]
  %tmp_14 = icmp slt i32 %i_x1, %tmp_10, !dbg !146 ; [#uses=1 type=i1] [debug line = 66:44]
  %iix_1 = add nsw i32 %iix, 1, !dbg !153         ; [#uses=1 type=i32] [debug line = 66:61]
  br i1 %tmp_14, label %6, label %7, !dbg !146    ; [debug line = 66:44]

; <label>:6                                       ; preds = %5
  %tmp17 = add i32 %tmp6, %i_x1, !dbg !126        ; [#uses=1 type=i32] [debug line = 69:135]
  %tmp18 = add i32 %tmp17, %num_weights, !dbg !126 ; [#uses=1 type=i32] [debug line = 69:135]
  %tmp_15 = add i32 %tmp18, %tmp16, !dbg !126     ; [#uses=1 type=i32] [debug line = 69:135]
  %mem_addr_2 = getelementptr inbounds float* %mem, i32 %tmp_15, !dbg !126 ; [#uses=2 type=float*] [debug line = 69:135]
  %input_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1) nounwind, !dbg !126 ; [#uses=0 type=i1] [debug line = 69:135]
  %input_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2) nounwind, !dbg !126 ; [#uses=1 type=float] [debug line = 69:135]
  call void @llvm.dbg.value(metadata !{float %input_element}, i64 0, metadata !154), !dbg !126 ; [debug line = 69:135] [debug variable = input_element]
  %tmp19 = add i32 %tmp_s, %iix, !dbg !155        ; [#uses=1 type=i32] [debug line = 71:113]
  %tmp_16 = add i32 %tmp19, %tmp11, !dbg !155     ; [#uses=1 type=i32] [debug line = 71:113]
  %mem_addr_3 = getelementptr inbounds float* %mem, i32 %tmp_16, !dbg !155 ; [#uses=2 type=float*] [debug line = 71:113]
  %weight_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_3, i32 1) nounwind, !dbg !155 ; [#uses=0 type=i1] [debug line = 71:113]
  %weight_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_3) nounwind, !dbg !155 ; [#uses=1 type=float] [debug line = 71:113]
  call void @llvm.dbg.value(metadata !{float %weight_element}, i64 0, metadata !156), !dbg !155 ; [debug line = 71:113] [debug variable = weight_element]
  %tmp_17 = fmul float %input_element, %weight_element, !dbg !157 ; [#uses=1 type=float] [debug line = 73:23]
  %output_element_3 = fadd float %output_element_2, %tmp_17, !dbg !157 ; [#uses=1 type=float] [debug line = 73:23]
  call void @llvm.dbg.value(metadata !{float %output_element_3}, i64 0, metadata !145), !dbg !157 ; [debug line = 73:23] [debug variable = output_element]
  %i_x_1 = add nsw i32 %i_x1, 1, !dbg !153        ; [#uses=1 type=i32] [debug line = 66:61]
  call void @llvm.dbg.value(metadata !{i32 %i_x_1}, i64 0, metadata !152), !dbg !153 ; [debug line = 66:61] [debug variable = i_x]
  call void @llvm.dbg.value(metadata !{i32 %iix_1}, i64 0, metadata !158), !dbg !153 ; [debug line = 66:61] [debug variable = iix]
  br label %5, !dbg !153                          ; [debug line = 66:61]

; <label>:7                                       ; preds = %5
  %i_y_1 = add nsw i32 %i_y1, 1, !dbg !151        ; [#uses=1 type=i32] [debug line = 63:59]
  call void @llvm.dbg.value(metadata !{i32 %i_y_1}, i64 0, metadata !150), !dbg !151 ; [debug line = 63:59] [debug variable = i_y]
  call void @llvm.dbg.value(metadata !{i32 %iiy_1}, i64 0, metadata !159), !dbg !151 ; [debug line = 63:59] [debug variable = iiy]
  br label %3, !dbg !151                          ; [debug line = 63:59]

; <label>:8                                       ; preds = %.loopexit
  %tmp15 = add i32 %tmp_5, %o_x_cast, !dbg !125   ; [#uses=1 type=i32] [debug line = 82:4]
  %tmp_12 = add i32 %tmp15, %tmp12, !dbg !125     ; [#uses=1 type=i32] [debug line = 82:4]
  %mem_addr_1 = getelementptr inbounds float* %mem, i32 %tmp_12, !dbg !125 ; [#uses=3 type=float*] [debug line = 82:4]
  %mem_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_1, i32 1) nounwind, !dbg !125 ; [#uses=0 type=i1] [debug line = 82:4]
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_1, float %output_element1, i4 -1) nounwind, !dbg !125 ; [debug line = 82:4]
  %mem_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_1) nounwind, !dbg !125 ; [#uses=0 type=i1] [debug line = 82:4]
  call void @llvm.dbg.value(metadata !{i31 %o_x_1}, i64 0, metadata !160), !dbg !144 ; [debug line = 52:37] [debug variable = o_x]
  br label %.preheader, !dbg !144                 ; [debug line = 52:37]

; <label>:9                                       ; preds = %.loopexit20
  ret void, !dbg !161                             ; [debug line = 87:1]
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=13]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=12]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=11]
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

; [#uses=2]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_4 = trunc i32 %empty to i30              ; [#uses=1 type=i30]
  ret i30 %empty_4
}

; [#uses=1]
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
!64 = metadata !{i32 786689, metadata !65, metadata !"k", metadata !66, i32 201326609, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 786478, i32 0, metadata !66, metadata !"conv_layer", metadata !"conv_layer", metadata !"_Z10conv_layerPfiiiiiiiiiii", metadata !66, i32 6, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @conv_layer, null, null, metadata !73, i32 18} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786473, metadata !"../conv_test/conv_layer.cpp", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!67 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!68 = metadata !{null, metadata !69, metadata !71, metadata !71, metadata !72, metadata !72, metadata !72, metadata !72, metadata !72, metadata !72, metadata !72, metadata !72, metadata !72}
!69 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!71 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!72 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_const_type ]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!75 = metadata !{i32 17, i32 27, metadata !65, null}
!76 = metadata !{i32 786689, metadata !65, metadata !"s", metadata !66, i32 184549392, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 16, i32 27, metadata !65, null}
!78 = metadata !{i32 786689, metadata !65, metadata !"iy", metadata !66, i32 167772175, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 15, i32 27, metadata !65, null}
!80 = metadata !{i32 786689, metadata !65, metadata !"ix", metadata !66, i32 150994958, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 14, i32 27, metadata !65, null}
!82 = metadata !{i32 786689, metadata !65, metadata !"id", metadata !66, i32 134217741, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 13, i32 27, metadata !65, null}
!84 = metadata !{i32 786689, metadata !65, metadata !"oy", metadata !66, i32 117440524, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 12, i32 27, metadata !65, null}
!86 = metadata !{i32 786689, metadata !65, metadata !"ox", metadata !66, i32 100663307, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 11, i32 27, metadata !65, null}
!88 = metadata !{i32 786689, metadata !65, metadata !"od", metadata !66, i32 83886090, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 10, i32 27, metadata !65, null}
!90 = metadata !{i32 786689, metadata !65, metadata !"b", metadata !66, i32 67108873, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 9, i32 27, metadata !65, null}
!92 = metadata !{i32 786689, metadata !65, metadata !"output_offset", metadata !66, i32 50331656, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 8, i32 21, metadata !65, null}
!94 = metadata !{i32 786689, metadata !65, metadata !"input_offset", metadata !66, i32 33554439, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 7, i32 21, metadata !65, null}
!96 = metadata !{i32 786689, metadata !65, metadata !"mem", metadata !66, i32 16777222, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 6, i32 25, metadata !65, null}
!98 = metadata !{i32 21, i32 1, metadata !99, null}
!99 = metadata !{i32 786443, metadata !65, i32 18, i32 1, metadata !66, i32 0} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 23, i32 1, metadata !99, null}
!101 = metadata !{i32 24, i32 1, metadata !99, null}
!102 = metadata !{i32 25, i32 1, metadata !99, null}
!103 = metadata !{i32 26, i32 1, metadata !99, null}
!104 = metadata !{i32 27, i32 1, metadata !99, null}
!105 = metadata !{i32 28, i32 1, metadata !99, null}
!106 = metadata !{i32 29, i32 1, metadata !99, null}
!107 = metadata !{i32 30, i32 1, metadata !99, null}
!108 = metadata !{i32 31, i32 1, metadata !99, null}
!109 = metadata !{i32 32, i32 1, metadata !99, null}
!110 = metadata !{i32 33, i32 1, metadata !99, null}
!111 = metadata !{i32 34, i32 1, metadata !99, null}
!112 = metadata !{i32 37, i32 29, metadata !99, null}
!113 = metadata !{i32 786688, metadata !99, metadata !"num_weights", metadata !66, i32 37, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 786688, metadata !99, metadata !"num_biases", metadata !66, i32 38, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 38, i32 22, metadata !99, null}
!116 = metadata !{i32 55, i32 86, metadata !117, null}
!117 = metadata !{i32 786443, metadata !118, i32 53, i32 9, metadata !66, i32 8} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 786443, metadata !119, i32 52, i32 9, metadata !66, i32 7} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786443, metadata !120, i32 50, i32 7, metadata !66, i32 6} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 786443, metadata !121, i32 49, i32 7, metadata !66, i32 5} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786443, metadata !122, i32 47, i32 5, metadata !66, i32 4} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786443, metadata !123, i32 46, i32 5, metadata !66, i32 3} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 786443, metadata !124, i32 44, i32 3, metadata !66, i32 2} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786443, metadata !99, i32 43, i32 3, metadata !66, i32 1} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 82, i32 4, metadata !117, null}
!126 = metadata !{i32 69, i32 135, metadata !127, null}
!127 = metadata !{i32 786443, metadata !128, i32 67, i32 15, metadata !66, i32 14} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 786443, metadata !129, i32 66, i32 15, metadata !66, i32 13} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786443, metadata !130, i32 64, i32 13, metadata !66, i32 12} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786443, metadata !131, i32 63, i32 13, metadata !66, i32 11} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786443, metadata !132, i32 61, i32 11, metadata !66, i32 10} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786443, metadata !117, i32 60, i32 11, metadata !66, i32 9} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 43, i32 16, metadata !124, null}
!134 = metadata !{i32 43, i32 25, metadata !124, null}
!135 = metadata !{i32 786688, metadata !124, metadata !"b_", metadata !66, i32 43, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 46, i32 21, metadata !122, null}
!137 = metadata !{i32 46, i32 33, metadata !122, null}
!138 = metadata !{i32 786688, metadata !122, metadata !"o_d", metadata !66, i32 46, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!139 = metadata !{i32 49, i32 23, metadata !120, null}
!140 = metadata !{i32 49, i32 35, metadata !120, null}
!141 = metadata !{i32 786688, metadata !120, metadata !"o_y", metadata !66, i32 49, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 63, i32 42, metadata !130, null}
!143 = metadata !{i32 52, i32 25, metadata !118, null}
!144 = metadata !{i32 52, i32 37, metadata !118, null}
!145 = metadata !{i32 786688, metadata !117, metadata !"output_element", metadata !66, i32 55, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 66, i32 44, metadata !128, null}
!147 = metadata !{i32 60, i32 27, metadata !132, null}
!148 = metadata !{i32 60, i32 39, metadata !132, null}
!149 = metadata !{i32 786688, metadata !132, metadata !"i_d", metadata !66, i32 60, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 786688, metadata !130, metadata !"i_y", metadata !66, i32 63, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 63, i32 59, metadata !130, null}
!152 = metadata !{i32 786688, metadata !128, metadata !"i_x", metadata !66, i32 66, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 66, i32 61, metadata !128, null}
!154 = metadata !{i32 786688, metadata !127, metadata !"input_element", metadata !66, i32 69, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 71, i32 113, metadata !127, null}
!156 = metadata !{i32 786688, metadata !127, metadata !"weight_element", metadata !66, i32 71, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!157 = metadata !{i32 73, i32 23, metadata !127, null}
!158 = metadata !{i32 786688, metadata !128, metadata !"iix", metadata !66, i32 66, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!159 = metadata !{i32 786688, metadata !130, metadata !"iiy", metadata !66, i32 63, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!160 = metadata !{i32 786688, metadata !118, metadata !"o_x", metadata !66, i32 52, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 87, i32 1, metadata !99, null}
