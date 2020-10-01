(* 
Author: Noel Willems
Webber Chapter 9 Exercises on pages 144 – 147, do any 11 of exercises 1 through 25 
*)


print ("=========Ex 9=========\n");
fun bxor l = foldl (fn (a,b) => a orelse b) false l;
bxor [true, true, true];
bxor [false, false, false];
bxor [false, true, false];
bxor [true, false, true];
bxor [];



print ("=========Ex 12=========\n");
fun il2absrl(l) = map(op Int.abs) l;
il2absrl [1,~2,3,~4];
il2absrl [];



print ("=========Ex 14=========\n");
fun maxpairs(l) = map(fn(a,b) => if a > b then a else b) l;
maxpairs [(1,3),(4,2),(~3,~4)];
maxpairs [];



print ("=========Ex 15=========\n");
fun myimplode(l) = foldr(fn(a, b) => a::b) nil l;
myimplode [#"A",#"B",#"C"];
myimplode [];


print("=========Ex 16=========\n");
fun lconcat(l) = foldr(fn(a, b) => a::b) nil l;
lconcat [[1,2],[3,4,5,6],[7]];
lconcat [];


print ("=========Ex 17=========\n");
fun max(x::xs) = foldr(fn(a, b) => if a < b then b else a) x xs;
max [1,~2,3,~4];


print ("=========Ex 18=========\n");
fun min(x::xs) = foldr(fn(a, b) => if a < b then a else b) x xs;
min [1,~2,3,~4];


print ("=========Ex 19=========\n");
fun member (e, L) = foldr(fn(a, b) => if (a = e) orelse b then true else false) false L;
member(3, [1,4,3,2]);
member(7, [1,4,3,2]);
member("hat", ["cat", "bat", "hat", "rat"]);


print ("=========Ex 20=========\n");
fun append L1 L2 = foldr op :: L2 L1;
append [1,2,3] [4,5,6];
append [] [4,5,6];
append [1,2,3] [];
append [] [];


print ("=========Ex 21=========\n");
fun less (e, L) = foldr(fn(x, xs) => if x < e then x::xs else xs) [] L;
less(3, [1,4,3,2]);
less(7, [1,4,3,2]);
less(~1, [1,4,3,2]);


print ("=========Ex 22=========\n");
fun evens L = foldr(fn(x, xs) => if x mod 2 = 0 then x::xs else xs) [] L;
evens [1,4,3,2];
evens [];

(*
print ("Ex 23\n");
convert [(1,2),(3,4),(5,6)]
*)
(*
print ("Ex 24\n");
mymap ~ [1,2,3,4,5];
*)
(*
print ("Ex 25\n");
eval [1.0,5.0,3.0] 2.0;
*)