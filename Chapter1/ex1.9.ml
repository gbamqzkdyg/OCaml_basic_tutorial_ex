(*
 * 有类型错误。
 * 局部定义域中"let a = 2"会覆盖上一级定义域中的"let a = "hello"，
 * 因此[in a + "world"]中的a为2，是int类型，但"world"为string类型，
 * 而(+)运算符要求参数均为int类型。
 *)
