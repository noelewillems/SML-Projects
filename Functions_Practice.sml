(*
Author: Noel Willems
Webber Chapter 7 Exercises on pages 115 – 117, do any 5 exercises 2 - 11
Sources: 
https://www.cs.cmu.edu/~rwh/introsml/core/lists.htm
*)

print ("~~~~~~~~~~Ex 2~~~~~~~~~~\n");
fun member(ch, nil) = false 
| member(ch, x::xs) = if (ch = x) then true else member(ch, xs);

member(3, [1,2,3,4,5]);
member(10, [1,2,3,4,5]);


print ("~~~~~~~~~~Ex 3~~~~~~~~~~\n");
fun less(num, nil) = nil
| less(num, x::xs) = if (num < x) then x::less(num, xs) else less (num, xs);

less(5,[10,1,9,3,8,4,7,6,6,5]);
less(11,[10,1,9,3,8,4,7,6,6,5]);
less(1,[10,1,9,3,8,4,7,6,6,5]);


print("~~~~~~~~~~Ex 4~~~~~~~~~~\n");
fun repeats(nil) = false
| repeats(a::b::xs) = if (a = b) then true else repeats(xs);
repeats([3,2,1,1,4,4,8,7]);
repeats([1,2,3,4]);


(*
print("Ex 5\n");
eval([1.0,5.0,3.0],2.0);
*)
(*
print("Ex 6\n");
quicksort([5,1,9,2,7,3,8]);
quicksort([5,1,9,2,7,3,8,9]);
*)
(*
print ("Ex 7\n");
fun icmp(a, b) = a < b;
fun rcmp(a:real,b) = a < b;
quicksort([5,1,9,2,7,3,8],icmp);
quicksort([5.0,1.0,9.0,2.0,7.0,3.0,8.0],rcmp);
*)

print("~~~~~~~~~~Ex 8~~~~~~~~~~\n");
fun member(_, nil) = false 
| member(a, x::xs) = if (a = x) then true else member(a, xs);
member(7, [1,2,3,4,5,6]);
member(3, [1,2,3,4,5,6]);
member("quick", ["the","quick","brown","fox"]);


print("~~~~~~~~~~Ex 9~~~~~~~~~~\n");
fun union(nil, list) = list
| union(a::b, list) = a::union(b, list);
union([4,3,2,1],[2,3,4,5,6]);
union([2,1],[4,5]);
union(["the","quick","brown","fox"],["fox", "jumps", "over"]);
union([],[]);
union([],[1,2]);


(*print("~~~~~~~~~~Ex 10~~~~~~~~~~\n");
fun intersection(nil, ls) = ls
| intersection(a, ls) = if (a = x) then intersection(a, ls) else intersection(a, xs);
intersection([4,3,2,1],[2,3,4,5,6]);
intersection([2,1],[4,5]);
intersection(["the","quick","brown","fox"],["fox", "jumps", "over"]);*)

(*
print("Ex 11\n");
powerset([1,2,3]);
powerset(["the","quick","brown","fox"]);
*)