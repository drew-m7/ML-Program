(* Drew Martin *)
(* function for cubing an int *)
fun cube integer = integer * integer * integer;
(* below returned 27 *)
cube(3)
(* function for returning fourth element of a list *)
fun fourth elem = hd (tl (tl (tl elem)));
(* below returned 4 *)
fourth[1,2,3,4];
(* function for moving 1st elem to the end *)
fun cycle1 list = (tl list) @ [hd list];
(* below returned [2,3,4,1] *)
cycle1[1,2,3,4];
(* function for raising real to power int *)
fun pow (num:real, exp:int) =
    if exp = 0 then 1.0
    else num * pow(num, exp - 1);
(* below returned 8.0 *)
pow(2.0, 3);
