(*
Author: Noel Willems
Webber Chapter 9 Exercises on pages 144 – 147, do any 11 of exercises 1 through 25 

Sources:
For understanding typecasting in SML: https://stackoverflow.com/questions/8981020/typecasting-in-sml?rq=1
For understanding how to get ascii of chars: https://smlfamily.github.io/Basis/char.html
For #6: syntax understanding https://csci305.github.io/lectures/l18_ml3.html (for one of them)
For #7: understanding logical operators - https://stackoverflow.com/questions/39538029/foldr-foldl-with-logic-operators-in-sml 
For #13: understanding how to count booleans - https://stackoverflow.com/questions/13504784/sml-foldl-with-if
*)

print ("=========Ex 1=========\n");
fun il2rl(l) = map(op Real.fromInt) l;
il2rl [1,2,3];
il2rl []; 


print ("=========Ex 2=========\n");
fun ordlist(l) = map(op ord)l;
ordlist [#"A",#"b",#"C"];
ordlist [];


print ("=========Ex 3=========\n");
fun squarelist(l) = map(fn x => x*x) l;
squarelist [1,2,3,4];
squarelist [];


print ("=========Ex 4=========\n");
fun multpairs(l) = map (op * ) l;
multpairs [(1,2),(3,4)];
multpairs [];


print ("=========Ex 5=========\n");
fun inclist l n = map (fn l => l + n) l;
inclist [1,2,3,4] 10;
inclist [] 10;


print ("=========Ex 6=========\n");
fun sqsum l = foldr (op +) 0 (map (fn l => l * l) l);
sqsum [1,2,3,4];
sqsum [];


print ("=========Ex 7=========\n");
fun bor l = foldr(fn(a, b) => a orelse b) false l;
bor [true, true, true];
bor [false, false, false];
bor [false, true, false];
bor [true, false, true];
bor [];


print ("=========Ex 8=========\n");
fun band l = foldr(fn(a, b) => a andalso b) true l;
band [true, true, true];
band [false, false, false];
band[false, true, false];
band[true, false, true];
band[];


(*print ("Ex 9\n");
fun bxor l = foldr(fn())
bxor [true, true, true];
bxor [false, false, false];
bxor [false, true, false];
bxor [true, false, true];
bxor [];*)


print ("=========Ex 10=========\n");
fun duplist l = foldr(fn(a, b) => a::a::b) nil l;
duplist [1,3,2];
duplist [];
duplist ["the","quick","brown","fox"];


print ("=========Ex 11=========\n");
fun mylength l = foldr(fn (_, b) => b + 1) 0 l; 
mylength [1,3,2];
mylength [];
mylength ["the","quick","brown","fox"];


(*print ("=========Ex 12=========\n");

fun il2absrl l = map(op abs) l;
il2absrl [1,~2,3,~4];
il2absrl [];*)


print ("=========Ex 13=========\n");
fun truecount l = foldl(fn (a, b) => if a then b + 1 else b) 0 l;
truecount [true, true, true];
truecount [false, false, false];
truecount [false, true, false];
truecount [true, false, true];
truecount [];

(*
print ("Ex 14\n");
maxpairs [(1,3),(4,2),(~3,~4)];
maxpairs [];
*)
(*
print ("Ex 15\n");
myimplode [#"A",#"B",#"C"];
myimplode [];
*)
(*
print("Ex 16\n");
lconcat [[1,2],[3,4,5,6],[7]];
lconcat [];
*)
(*
print ("Ex 17\n");
max [1,~2,3,~4];
*)
(*
print ("Ex 18\n");
min [1,~2,3,~4];
*)
(*
print ("Ex 19\n");
member(3, [1,4,3,2]);
member(7, [1,4,3,2]);
member("hat", ["cat", "bat", "hat", "rat"]);
*)
(*
print ("Ex 20\n");
append [1,2,3] [4,5,6];
append [] [4,5,6];
append [1,2,3] [];
append [] [];
*)
(*
print ("Ex 21\n");
less(3, [1,4,3,2]);
less(7, [1,4,3,2]);
less(~1, [1,4,3,2]);
*)
(*
print ("Ex 22\n");
evens [1,4,3,2];
evens [];
*)
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