(*
 * 代码不正确。
 * let and并行定义语法中，let只应在第一个定义前出现。
 * 代码可改为如下：
 *)

let a = 1 and
b = 2 and
c = 3
in
let d = a + b + c
in d;;
