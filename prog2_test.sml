(* Drew Martin test file for prog2.sml *)
use "prog2.sml";
(* test cases I tried that show functions worked *)

print(" eval tests: ");
(* test below output 23.0 *)
print(" expected 23.0, result is: ");
eval([1.0, 5.0, 3.0], 2.0);
(* test below output 3.0 *)
print(" expected is 3.0, result is: ");
eval([1.0,1.0,1.0], 1.0);
(* test below output 102.0 *)
print(" expected is 102.0, result is: ");
eval([9.0,1.0,10.0], 3.0);

print(" convert tests: ");
(* test below output ([1,3,5],[2,4,6]) *)
print(" expected is ([1,3,5],[2,4,6]), result is: ");
convert([(1,2), (3,4), (5,6)]);
(* test below output ([9,2], [6,7]) *)
print(" expected is ([9,2], [6,7]), result is: ");
convert[(9,6), (2,7)];

print(" evalm tests: ");
(* test below returned 23.0 *)
print(" expected is 23.0, result is: ");
evalm[1.0, 5.0, 3.0] 2.0;
(* test below returned 3.0 *)
print(" expected is 3.0, result is: ");
evalm[1.0,1.0,1.0] 1.0;
(* test below returned 222.0 *)
print(" expected is 222.0, result is: ");
evalm[2.0,2.0,2.0] 10.0;

print(" union tests: ");
(* test below output [1,2,3,4,5,6,7] *)
print(" expected is [1,2,3,4,5,6,7], result is: ");
union([1,2,3,4], [5,6,7]);
(* test below output [2,3] *)
print(" expected is [2,3], result is: ");
union([],[2,3]);
(* test below output [1,4,5] *)
print(" expected is [1,4,5], result is: ");
union([1,4,5], []);
(* test below output [] *)
print(" expected is [], result is: ");
union([],[]);
(* test below output [1,2,3,4,6,7] *)
print(" expected is [1,2,3,4,6,7], result is: ");
union([1,2,4], [3,6,7]);

print(" intersection tests: ");
(* test below output [3,4] *)
print(" expected is [3,4], result is: ");
intersection ([1,2,3,4], [3,4,5,6]);
(* test below output [2] *)
print(" expected is [2], result is: ");
intersection ([1,2,3,7], [2,4]);
(* test below output [] *)
print(" expected is [], result is: ");
intersection([], [1,2,3]);
(* test below output [] *)
print(" expected is [], result is: ");
intersection ([1,2,3], []);
(* test below output [2,4] *)
print(" expected is [2,4], result is: ");
intersection([1,2,4], [2,3,5,6,4]);

(* print(" findSubset tests: ");
print(" expected is [3,2,5], result is: ");
findSubset(10, [4,3,2,12,5]);
print(" expected is [4,6], result is: ");
findSubset(10, [4,3,2,12,5,6]);
print(" expected is [], result is: ");
findSubset(10, [4,3,2,12]); *)
