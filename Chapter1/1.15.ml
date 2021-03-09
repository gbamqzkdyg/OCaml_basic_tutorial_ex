(*
 * 使用直角坐标表示复数
 *)

(* 使用实部与虚部创建复数，类型为(float * float) *)
let make_complex (real:float) (imag:float) = (real, imag)
(* 复数的实部 *)
let real (c:float * float) = fst c
(* 复数的实部 *)
let imag (c:float * float) = snd c
(* 复数的加运算 *)
let add_complex (c1:float * float) (c2:float * float) = (real c1 +. real c2, imag c1 +. imag c2)
(* 复数的减运算 *)
let sub_complex (c1:float * float) (c2:float * float) = (real c1 -. real c2, imag c1 -. imag c2)
(* 复数的乘运算 *)
let mul_complex (c1:float * float) (c2:float * float) = ((real c1 *. real c2) -. (imag c1 *. imag c2), (real c1 *. imag c2) +. (imag c1 *. real c2))
(* 复数的除运算 *)
let div_complex (c1:float * float) (c2:float * float) = 
    let s = (real c2 *. real c2) +. (imag c2 *. imag c2) in
    let t = mul_complex c1 (make_complex (real c2) (0. -. imag c2)) in
    make_complex (real t /. s) (imag t /. s)

(* 测试代码 *)
let c1 = make_complex 1.0 (-1.0)
let c2 = make_complex 1.0 1.0

;;
add_complex c1 c2;; (* (2., 0.) *)
sub_complex c1 c2;; (* (0., -2.) *)
mul_complex c1 c2;; (* (2., 0.) *)
div_complex c1 c2;; (* (0., -1.) *)