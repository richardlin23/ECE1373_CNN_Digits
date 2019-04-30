; ModuleID = 'C:/Users/Wilson/Desktop/digital_soc_final/digital_soc_final/hls_proj/fc_proj/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

%"struct.std::nothrow_t" = type {}

@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE = external constant i32 ; [#uses=0 type=i32*]
@_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E = external constant i32 ; [#uses=0 type=i32*]
@_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E = external constant i32 ; [#uses=0 type=i32*]
@_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E = external constant i32 ; [#uses=0 type=i32*]
@_sys_nerr = dllimport global i32                 ; [#uses=0 type=i32*]
@_amblksiz = external global i32                  ; [#uses=0 type=i32*]
@_ZSt7nothrow = external global %"struct.std::nothrow_t" ; [#uses=0 type=%"struct.std::nothrow_t"*]

; [#uses=0]
define void @_Z8fc_layerPfiiiiii(float* %mem, i32 %input_offset, i32 %output_offset, i32 %batch_size, i32 %num_inputs, i32 %num_outputs, i32 %enable_relu) nounwind {
  %1 = alloca float*, align 4                     ; [#uses=7 type=float**]
  %2 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %4 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %5 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %6 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %7 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %num_weights = alloca i32, align 4              ; [#uses=3 type=i32*]
  %num_biases = alloca i32, align 4               ; [#uses=2 type=i32*]
  %b = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %o = alloca i32, align 4                        ; [#uses=8 type=i32*]
  %output_element = alloca float, align 4         ; [#uses=5 type=float*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %input_element = alloca float, align 4          ; [#uses=2 type=float*]
  %weight_element = alloca float, align 4         ; [#uses=2 type=float*]
  %8 = alloca float, align 4                      ; [#uses=2 type=float*]
  store float* %mem, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !54), !dbg !55 ; [debug line = 4:23] [debug variable = mem]
  store i32 %input_offset, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !56), !dbg !57 ; [debug line = 5:19] [debug variable = input_offset]
  store i32 %output_offset, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !58), !dbg !59 ; [debug line = 6:19] [debug variable = output_offset]
  store i32 %batch_size, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !60), !dbg !61 ; [debug line = 7:25] [debug variable = batch_size]
  store i32 %num_inputs, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !62), !dbg !63 ; [debug line = 8:25] [debug variable = num_inputs]
  store i32 %num_outputs, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !64), !dbg !65 ; [debug line = 9:25] [debug variable = num_outputs]
  store i32 %enable_relu, i32* %7, align 4
  call void @llvm.dbg.declare(metadata !{i32* %7}, metadata !66), !dbg !67 ; [debug line = 10:25] [debug variable = enable_relu]
  %9 = load float** %1, align 4, !dbg !68         ; [#uses=1 type=float*] [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %9, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i64 2147483648, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !68 ; [debug line = 12:1]
  %10 = load i32* %2, align 4, !dbg !70           ; [#uses=1 type=i32] [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %10, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !70 ; [debug line = 13:1]
  %11 = load i32* %3, align 4, !dbg !71           ; [#uses=1 type=i32] [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %11, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !71 ; [debug line = 14:1]
  %12 = load i32* %4, align 4, !dbg !72           ; [#uses=1 type=i32] [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %12, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !72 ; [debug line = 15:1]
  %13 = load i32* %5, align 4, !dbg !73           ; [#uses=1 type=i32] [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %13, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !73 ; [debug line = 16:1]
  %14 = load i32* %6, align 4, !dbg !74           ; [#uses=1 type=i32] [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %14, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !74 ; [debug line = 17:1]
  %15 = load i32* %7, align 4, !dbg !75           ; [#uses=1 type=i32] [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %15, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !75 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 19:1]
  call void @llvm.dbg.declare(metadata !{i32* %num_weights}, metadata !77), !dbg !78 ; [debug line = 21:12] [debug variable = num_weights]
  %16 = load i32* %5, align 4, !dbg !79           ; [#uses=1 type=i32] [debug line = 21:48]
  %17 = load i32* %6, align 4, !dbg !79           ; [#uses=1 type=i32] [debug line = 21:48]
  %18 = mul nsw i32 %16, %17, !dbg !79            ; [#uses=1 type=i32] [debug line = 21:48]
  store i32 %18, i32* %num_weights, align 4, !dbg !79 ; [debug line = 21:48]
  call void @llvm.dbg.declare(metadata !{i32* %num_biases}, metadata !80), !dbg !81 ; [debug line = 22:13] [debug variable = num_biases]
  %19 = load i32* %6, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 22:37]
  store i32 %19, i32* %num_biases, align 4, !dbg !82 ; [debug line = 22:37]
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !83), !dbg !85 ; [debug line = 25:12] [debug variable = b]
  store i32 0, i32* %b, align 4, !dbg !86         ; [debug line = 25:17]
  br label %20, !dbg !86                          ; [debug line = 25:17]

; <label>:20                                      ; preds = %111, %0
  %21 = load i32* %b, align 4, !dbg !86           ; [#uses=1 type=i32] [debug line = 25:17]
  %22 = load i32* %4, align 4, !dbg !86           ; [#uses=1 type=i32] [debug line = 25:17]
  %23 = icmp slt i32 %21, %22, !dbg !86           ; [#uses=1 type=i1] [debug line = 25:17]
  br i1 %23, label %24, label %114, !dbg !86      ; [debug line = 25:17]

; <label>:24                                      ; preds = %20
  call void @llvm.dbg.declare(metadata !{i32* %o}, metadata !87), !dbg !90 ; [debug line = 28:14] [debug variable = o]
  store i32 0, i32* %o, align 4, !dbg !91         ; [debug line = 28:19]
  br label %25, !dbg !91                          ; [debug line = 28:19]

; <label>:25                                      ; preds = %107, %24
  %26 = load i32* %o, align 4, !dbg !91           ; [#uses=1 type=i32] [debug line = 28:19]
  %27 = load i32* %6, align 4, !dbg !91           ; [#uses=1 type=i32] [debug line = 28:19]
  %28 = icmp slt i32 %26, %27, !dbg !91           ; [#uses=1 type=i1] [debug line = 28:19]
  br i1 %28, label %29, label %110, !dbg !91      ; [debug line = 28:19]

; <label>:29                                      ; preds = %25
  call void @llvm.dbg.declare(metadata !{float* %output_element}, metadata !92), !dbg !94 ; [debug line = 31:13] [debug variable = output_element]
  %30 = load i32* %2, align 4, !dbg !95           ; [#uses=1 type=i32] [debug line = 31:79]
  %31 = udiv i32 %30, 4, !dbg !95                 ; [#uses=1 type=i32] [debug line = 31:79]
  %32 = load i32* %num_weights, align 4, !dbg !95 ; [#uses=1 type=i32] [debug line = 31:79]
  %33 = add i32 %31, %32, !dbg !95                ; [#uses=1 type=i32] [debug line = 31:79]
  %34 = load i32* %o, align 4, !dbg !95           ; [#uses=1 type=i32] [debug line = 31:79]
  %35 = add i32 %33, %34, !dbg !95                ; [#uses=1 type=i32] [debug line = 31:79]
  %36 = load float** %1, align 4, !dbg !95        ; [#uses=1 type=float*] [debug line = 31:79]
  %37 = getelementptr inbounds float* %36, i32 %35, !dbg !95 ; [#uses=1 type=float*] [debug line = 31:79]
  %38 = load float* %37, align 4, !dbg !95        ; [#uses=1 type=float] [debug line = 31:79]
  store float %38, float* %output_element, align 4, !dbg !95 ; [debug line = 31:79]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !96), !dbg !98 ; [debug line = 34:16] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !99         ; [debug line = 34:21]
  br label %39, !dbg !99                          ; [debug line = 34:21]

; <label>:39                                      ; preds = %75, %29
  %40 = load i32* %i, align 4, !dbg !99           ; [#uses=1 type=i32] [debug line = 34:21]
  %41 = load i32* %5, align 4, !dbg !99           ; [#uses=1 type=i32] [debug line = 34:21]
  %42 = icmp slt i32 %40, %41, !dbg !99           ; [#uses=1 type=i1] [debug line = 34:21]
  br i1 %42, label %43, label %78, !dbg !99       ; [debug line = 34:21]

; <label>:43                                      ; preds = %39
  call void @llvm.dbg.declare(metadata !{float* %input_element}, metadata !100), !dbg !102 ; [debug line = 36:15] [debug variable = input_element]
  %44 = load i32* %2, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 36:106]
  %45 = udiv i32 %44, 4, !dbg !103                ; [#uses=1 type=i32] [debug line = 36:106]
  %46 = load i32* %num_weights, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 36:106]
  %47 = add i32 %45, %46, !dbg !103               ; [#uses=1 type=i32] [debug line = 36:106]
  %48 = load i32* %num_biases, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 36:106]
  %49 = add i32 %47, %48, !dbg !103               ; [#uses=1 type=i32] [debug line = 36:106]
  %50 = load i32* %b, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 36:106]
  %51 = load i32* %5, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 36:106]
  %52 = mul nsw i32 %50, %51, !dbg !103           ; [#uses=1 type=i32] [debug line = 36:106]
  %53 = add i32 %49, %52, !dbg !103               ; [#uses=1 type=i32] [debug line = 36:106]
  %54 = load i32* %i, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 36:106]
  %55 = add i32 %53, %54, !dbg !103               ; [#uses=1 type=i32] [debug line = 36:106]
  %56 = load float** %1, align 4, !dbg !103       ; [#uses=1 type=float*] [debug line = 36:106]
  %57 = getelementptr inbounds float* %56, i32 %55, !dbg !103 ; [#uses=1 type=float*] [debug line = 36:106]
  %58 = load float* %57, align 4, !dbg !103       ; [#uses=1 type=float] [debug line = 36:106]
  store float %58, float* %input_element, align 4, !dbg !103 ; [debug line = 36:106]
  call void @llvm.dbg.declare(metadata !{float* %weight_element}, metadata !104), !dbg !105 ; [debug line = 38:19] [debug variable = weight_element]
  %59 = load i32* %2, align 4, !dbg !106          ; [#uses=1 type=i32] [debug line = 38:84]
  %60 = udiv i32 %59, 4, !dbg !106                ; [#uses=1 type=i32] [debug line = 38:84]
  %61 = load i32* %o, align 4, !dbg !106          ; [#uses=1 type=i32] [debug line = 38:84]
  %62 = load i32* %5, align 4, !dbg !106          ; [#uses=1 type=i32] [debug line = 38:84]
  %63 = mul nsw i32 %61, %62, !dbg !106           ; [#uses=1 type=i32] [debug line = 38:84]
  %64 = add i32 %60, %63, !dbg !106               ; [#uses=1 type=i32] [debug line = 38:84]
  %65 = load i32* %i, align 4, !dbg !106          ; [#uses=1 type=i32] [debug line = 38:84]
  %66 = add i32 %64, %65, !dbg !106               ; [#uses=1 type=i32] [debug line = 38:84]
  %67 = load float** %1, align 4, !dbg !106       ; [#uses=1 type=float*] [debug line = 38:84]
  %68 = getelementptr inbounds float* %67, i32 %66, !dbg !106 ; [#uses=1 type=float*] [debug line = 38:84]
  %69 = load float* %68, align 4, !dbg !106       ; [#uses=1 type=float] [debug line = 38:84]
  store float %69, float* %weight_element, align 4, !dbg !106 ; [debug line = 38:84]
  %70 = load float* %input_element, align 4, !dbg !107 ; [#uses=1 type=float] [debug line = 40:18]
  %71 = load float* %weight_element, align 4, !dbg !107 ; [#uses=1 type=float] [debug line = 40:18]
  %72 = fmul float %70, %71, !dbg !107            ; [#uses=1 type=float] [debug line = 40:18]
  %73 = load float* %output_element, align 4, !dbg !107 ; [#uses=1 type=float] [debug line = 40:18]
  %74 = fadd float %73, %72, !dbg !107            ; [#uses=1 type=float] [debug line = 40:18]
  store float %74, float* %output_element, align 4, !dbg !107 ; [debug line = 40:18]
  br label %75, !dbg !108                         ; [debug line = 48:7]

; <label>:75                                      ; preds = %43
  %76 = load i32* %i, align 4, !dbg !109          ; [#uses=1 type=i32] [debug line = 34:39]
  %77 = add nsw i32 %76, 1, !dbg !109             ; [#uses=1 type=i32] [debug line = 34:39]
  store i32 %77, i32* %i, align 4, !dbg !109      ; [debug line = 34:39]
  br label %39, !dbg !109                         ; [debug line = 34:39]

; <label>:78                                      ; preds = %39
  %79 = load i32* %7, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 51:7]
  %80 = icmp ne i32 %79, 0, !dbg !110             ; [#uses=1 type=i1] [debug line = 51:7]
  br i1 %80, label %81, label %94, !dbg !110      ; [debug line = 51:7]

; <label>:81                                      ; preds = %78
  store float 0.000000e+00, float* %8, align 4, !dbg !111 ; [debug line = 52:63]
  %82 = call float* @_ZSt3maxIfERKT_S2_S2_(float* %8, float* %output_element), !dbg !111 ; [#uses=1 type=float*] [debug line = 52:63]
  %83 = load float* %82, !dbg !111                ; [#uses=1 type=float] [debug line = 52:63]
  %84 = load i32* %3, align 4, !dbg !111          ; [#uses=1 type=i32] [debug line = 52:63]
  %85 = udiv i32 %84, 4, !dbg !111                ; [#uses=1 type=i32] [debug line = 52:63]
  %86 = load i32* %b, align 4, !dbg !111          ; [#uses=1 type=i32] [debug line = 52:63]
  %87 = load i32* %6, align 4, !dbg !111          ; [#uses=1 type=i32] [debug line = 52:63]
  %88 = mul nsw i32 %86, %87, !dbg !111           ; [#uses=1 type=i32] [debug line = 52:63]
  %89 = add i32 %85, %88, !dbg !111               ; [#uses=1 type=i32] [debug line = 52:63]
  %90 = load i32* %o, align 4, !dbg !111          ; [#uses=1 type=i32] [debug line = 52:63]
  %91 = add i32 %89, %90, !dbg !111               ; [#uses=1 type=i32] [debug line = 52:63]
  %92 = load float** %1, align 4, !dbg !111       ; [#uses=1 type=float*] [debug line = 52:63]
  %93 = getelementptr inbounds float* %92, i32 %91, !dbg !111 ; [#uses=1 type=float*] [debug line = 52:63]
  store float %83, float* %93, align 4, !dbg !111 ; [debug line = 52:63]
  br label %106, !dbg !111                        ; [debug line = 52:63]

; <label>:94                                      ; preds = %78
  %95 = load float* %output_element, align 4, !dbg !112 ; [#uses=1 type=float] [debug line = 54:10]
  %96 = load i32* %3, align 4, !dbg !112          ; [#uses=1 type=i32] [debug line = 54:10]
  %97 = udiv i32 %96, 4, !dbg !112                ; [#uses=1 type=i32] [debug line = 54:10]
  %98 = load i32* %b, align 4, !dbg !112          ; [#uses=1 type=i32] [debug line = 54:10]
  %99 = load i32* %6, align 4, !dbg !112          ; [#uses=1 type=i32] [debug line = 54:10]
  %100 = mul nsw i32 %98, %99, !dbg !112          ; [#uses=1 type=i32] [debug line = 54:10]
  %101 = add i32 %97, %100, !dbg !112             ; [#uses=1 type=i32] [debug line = 54:10]
  %102 = load i32* %o, align 4, !dbg !112         ; [#uses=1 type=i32] [debug line = 54:10]
  %103 = add i32 %101, %102, !dbg !112            ; [#uses=1 type=i32] [debug line = 54:10]
  %104 = load float** %1, align 4, !dbg !112      ; [#uses=1 type=float*] [debug line = 54:10]
  %105 = getelementptr inbounds float* %104, i32 %103, !dbg !112 ; [#uses=1 type=float*] [debug line = 54:10]
  store float %95, float* %105, align 4, !dbg !112 ; [debug line = 54:10]
  br label %106

; <label>:106                                     ; preds = %94, %81
  br label %107, !dbg !113                        ; [debug line = 55:5]

; <label>:107                                     ; preds = %106
  %108 = load i32* %o, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 28:38]
  %109 = add nsw i32 %108, 1, !dbg !114           ; [#uses=1 type=i32] [debug line = 28:38]
  store i32 %109, i32* %o, align 4, !dbg !114     ; [debug line = 28:38]
  br label %25, !dbg !114                         ; [debug line = 28:38]

; <label>:110                                     ; preds = %25
  br label %111, !dbg !115                        ; [debug line = 56:3]

; <label>:111                                     ; preds = %110
  %112 = load i32* %b, align 4, !dbg !116         ; [#uses=1 type=i32] [debug line = 25:35]
  %113 = add nsw i32 %112, 1, !dbg !116           ; [#uses=1 type=i32] [debug line = 25:35]
  store i32 %113, i32* %b, align 4, !dbg !116     ; [debug line = 25:35]
  br label %20, !dbg !116                         ; [debug line = 25:35]

; <label>:114                                     ; preds = %20
  ret void, !dbg !117                             ; [debug line = 57:1]
}

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=8]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define linkonce_odr float* @_ZSt3maxIfERKT_S2_S2_(float* %__a, float* %__b) nounwind {
  %1 = alloca float*, align 4                     ; [#uses=3 type=float**]
  %2 = alloca float*, align 4                     ; [#uses=3 type=float**]
  %3 = alloca float*, align 4                     ; [#uses=3 type=float**]
  store float* %__a, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !118), !dbg !119 ; [debug line = 342:19] [debug variable = __a]
  store float* %__b, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !120), !dbg !121 ; [debug line = 342:31] [debug variable = __b]
  %4 = load float** %2, align 4, !dbg !122        ; [#uses=1 type=float*] [debug line = 214:7]
  %5 = load float* %4, align 4, !dbg !122         ; [#uses=1 type=float] [debug line = 214:7]
  %6 = load float** %3, align 4, !dbg !122        ; [#uses=1 type=float*] [debug line = 214:7]
  %7 = load float* %6, align 4, !dbg !122         ; [#uses=1 type=float] [debug line = 214:7]
  %8 = fcmp olt float %5, %7, !dbg !122           ; [#uses=1 type=i1] [debug line = 214:7]
  br i1 %8, label %9, label %11, !dbg !122        ; [debug line = 214:7]

; <label>:9                                       ; preds = %0
  %10 = load float** %3, align 4, !dbg !125       ; [#uses=1 type=float*] [debug line = 215:2]
  store float* %10, float** %1, !dbg !125         ; [debug line = 215:2]
  br label %13, !dbg !125                         ; [debug line = 215:2]

; <label>:11                                      ; preds = %0
  %12 = load float** %2, align 4, !dbg !126       ; [#uses=1 type=float*] [debug line = 216:7]
  store float* %12, float** %1, !dbg !126         ; [debug line = 216:7]
  br label %13, !dbg !126                         ; [debug line = 216:7]

; <label>:13                                      ; preds = %11, %9
  %14 = load float** %1, !dbg !127                ; [#uses=1 type=float*] [debug line = 217:5]
  ret float* %14, !dbg !127                       ; [debug line = 217:5]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!41, !48}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Wilson/Desktop/digital_soc_final/digital_soc_final/hls_proj/fc_proj/solution1/.autopilot/db/fc_layer.pragma.2.cpp", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fc_layer", metadata !"fc_layer", metadata !"_Z8fc_layerPfiiiiii", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32)* @_Z8fc_layerPfiiiiii, null, null, metadata !13, i32 11} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../fc_test/fc_layer.cpp", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !12, metadata !12, metadata !12, metadata !12}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !17, i32 342, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float* (float*, float*)* @_ZSt3maxIfERKT_S2_S2_, metadata !22, null, metadata !13, i32 210} ; [ DW_TAG_subprogram ]
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
!26 = metadata !{i32 786484, i32 0, null, metadata !"__digits", metadata !"__digits", metadata !"_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE", metadata !27, i32 74, metadata !12, i32 0, i32 1, i32* @_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cext/numeric_traits.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"__max_digits10", metadata !"__max_digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E", metadata !27, i32 109, metadata !12, i32 0, i32 1, i32* @_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"__digits10", metadata !"__digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E", metadata !27, i32 115, metadata !12, i32 0, i32 1, i32* @_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"__max_exponent10", metadata !"__max_exponent10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E", metadata !27, i32 118, metadata !12, i32 0, i32 1, i32* @_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !32, i32 157, metadata !11, i32 0, i32 1, i32* @_sys_nerr} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cstdlib.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786484, i32 0, null, metadata !"_amblksiz", metadata !"_amblksiz", metadata !"", metadata !34, i32 53, metadata !35, i32 0, i32 1, i32* @_amblksiz} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cmalloc.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!35 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786484, i32 0, metadata !37, metadata !"nothrow", metadata !"nothrow", metadata !"_ZSt7nothrow", metadata !38, i32 70, metadata !39, i32 0, i32 1, %"struct.std::nothrow_t"* @_ZSt7nothrow} ; [ DW_TAG_variable ]
!37 = metadata !{i32 786489, null, metadata !"std", metadata !38, i32 47} ; [ DW_TAG_namespace ]
!38 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cnew", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!39 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ]
!40 = metadata !{i32 786434, metadata !37, metadata !"nothrow_t", metadata !38, i32 68, i64 8, i64 8, i32 0, i32 0, null, metadata !2, i32 0, null, null} ; [ DW_TAG_class_type ]
!41 = metadata !{void (float*, i32, i32, i32, i32, i32, i32)* @_Z8fc_layerPfiiiiii, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47}
!42 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!43 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!45 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"batch_size", metadata !"num_inputs", metadata !"num_outputs", metadata !"enable_relu"}
!47 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!48 = metadata !{float* (float*, float*)* @_ZSt3maxIfERKT_S2_S2_, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !47}
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
!77 = metadata !{i32 786688, metadata !69, metadata !"num_weights", metadata !6, i32 21, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 21, i32 12, metadata !69, null}
!79 = metadata !{i32 21, i32 48, metadata !69, null}
!80 = metadata !{i32 786688, metadata !69, metadata !"num_biases", metadata !6, i32 22, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 22, i32 13, metadata !69, null}
!82 = metadata !{i32 22, i32 37, metadata !69, null}
!83 = metadata !{i32 786688, metadata !84, metadata !"b", metadata !6, i32 25, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786443, metadata !69, i32 25, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 25, i32 12, metadata !84, null}
!86 = metadata !{i32 25, i32 17, metadata !84, null}
!87 = metadata !{i32 786688, metadata !88, metadata !"o", metadata !6, i32 28, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 786443, metadata !89, i32 28, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !84, i32 25, i32 40, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 28, i32 14, metadata !88, null}
!91 = metadata !{i32 28, i32 19, metadata !88, null}
!92 = metadata !{i32 786688, metadata !93, metadata !"output_element", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 786443, metadata !88, i32 28, i32 43, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 31, i32 13, metadata !93, null}
!95 = metadata !{i32 31, i32 79, metadata !93, null}
!96 = metadata !{i32 786688, metadata !97, metadata !"i", metadata !6, i32 34, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 786443, metadata !93, i32 34, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 34, i32 16, metadata !97, null}
!99 = metadata !{i32 34, i32 21, metadata !97, null}
!100 = metadata !{i32 786688, metadata !101, metadata !"input_element", metadata !6, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 786443, metadata !97, i32 34, i32 48, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 36, i32 15, metadata !101, null}
!103 = metadata !{i32 36, i32 106, metadata !101, null}
!104 = metadata !{i32 786688, metadata !101, metadata !"weight_element", metadata !6, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 38, i32 19, metadata !101, null}
!106 = metadata !{i32 38, i32 84, metadata !101, null}
!107 = metadata !{i32 40, i32 18, metadata !101, null}
!108 = metadata !{i32 48, i32 7, metadata !101, null}
!109 = metadata !{i32 34, i32 39, metadata !97, null}
!110 = metadata !{i32 51, i32 7, metadata !93, null}
!111 = metadata !{i32 52, i32 63, metadata !93, null}
!112 = metadata !{i32 54, i32 10, metadata !93, null}
!113 = metadata !{i32 55, i32 5, metadata !93, null}
!114 = metadata !{i32 28, i32 38, metadata !88, null}
!115 = metadata !{i32 56, i32 3, metadata !89, null}
!116 = metadata !{i32 25, i32 35, metadata !84, null}
!117 = metadata !{i32 57, i32 1, metadata !69, null}
!118 = metadata !{i32 786689, metadata !15, metadata !"__a", metadata !17, i32 16777558, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 342, i32 19, metadata !15, null}
!120 = metadata !{i32 786689, metadata !15, metadata !"__b", metadata !17, i32 33554774, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 342, i32 31, metadata !15, null}
!122 = metadata !{i32 214, i32 7, metadata !123, null}
!123 = metadata !{i32 786443, metadata !15, i32 210, i32 5, metadata !124, i32 7} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin\5C..\5Clib\5Cclang\5C3.1/../../../include/c++/4.5.2\5Cbits/stl_algobase.h", metadata !"C:\5CUsers\5CWilson\5CDesktop\5Cdigital_soc_final\5Cdigital_soc_final\5Chls_proj", null} ; [ DW_TAG_file_type ]
!125 = metadata !{i32 215, i32 2, metadata !123, null}
!126 = metadata !{i32 216, i32 7, metadata !123, null}
!127 = metadata !{i32 217, i32 5, metadata !123, null}
