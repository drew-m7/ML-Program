(* Drew Martin *)
(* Take polynomial and a value for x and return the value of that polynomial at given x *)
fun helperFunct ([], _) = 0.0 | helperFunct (head::tail, x) =
    x * head + helperFunct (tail, x * x);
fun eval ([], _) = 0.0 | eval (head::tail, x) = head + helperFunct (tail, x);

(* Converts a list of pairs into a pair of lists *)
fun convert pairlist = 
    foldr (fn ((h1, t1), (h2, t2)) => (h1::h2, t1::t2)) ([], []) pairlist;

(* Same as the first function, but makes it a curried one liner *)
fun evalm poly valx = foldr (fn (y, x) => y + valx * x) 0.0 poly;

(* Union of two lists *)
(* Creates a union of two lists sorted *)
fun union ([], list2) = list2 | union (list1, []) = list1 | union (x::list1, y::list2) = 
    if (x<y) then x::union(list1, y::list2) else y::union(x::list1, list2);

(* Intersection of two lists *)
(* Finds intersection of two lists, used helper function to check for match from lists to generate intersection*)
fun matched (x, []) = false | matched (x, l) = 
    if x = hd(l) then true else matched (x,tl(l));
fun intersection (lst1, []) = [] | intersection ([], lst2) = [] | intersection (lst1, lst2) = 
    if matched (hd(lst2), lst1) then hd(lst2)::intersection (lst1, tl(lst2)) else intersection (lst1, tl(lst2));

(* Find subset *)
(* my goal is to reverse list and try subtract each element from given int until hits zero *)
(* Finds a subset that sums to a given number *)
(* fun findSubset (x, []) = [] | findSubset (x, intlist) = ; *)
(* couldn't figure this one out after trying many different algorithms from terminal??
commented out so no syntax errors *)
