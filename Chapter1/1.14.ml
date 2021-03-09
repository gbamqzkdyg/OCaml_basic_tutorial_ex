(*
 * 并非永远成立，因为int范围有限，超出最大值时会溢出。
 * 如下代码可以验证：
 *)

 let test = fun a -> a < a + 1 in test max_int;; (* 结果为false *)