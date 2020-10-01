(*
Name: Noel W
Webber Chapter 5 Exercises on pages 83 – 85, do any 10 of the 15 exercises 
*)

print ("================================Ex 1================================\n");
  fun cube i = i * i * i;
  cube(3);

print ("================================Ex 2================================\n");
  fun cuber(r:real) : real = r*r*r;
  cuber(3.0);


print("================================Ex 3================================\n");
fun fourth(f) = hd(tl(tl(tl f)));
fourth([1,2,3,4,5]);
fourth([1.0,2.0,3.0,4.0,5.0]); 

print ("================================Ex 4================================\n");
fun min3(a, b, c) =

 if a < b andalso a < c then a
 else if b < a andalso b < c then b
 else c;

 min3(1,2,3);
 min3(3,2,1);
 min3(2,1,3);

print ("================================Ex 5================================\n");
fun red3(a, b, c) = (a, c);
red3((1,2,3));
red3((1.0,2.0,3.0));
red3((1,2.0,"red"));


print("================================Ex 6================================\n");
fun thirds s = tl(tl(List.take(explode(s), 3))); 
thirds("Covenant");
thirds("Scots");

print("================================Ex 7================================\n");
fun cycle1 (cyc)=
tl(cyc)@ [hd(cyc)];
cycle1([1,2,3,4]);


(*print ("Ex 8\n");
sort3(1.0,2.0,3.0);
sort3(3.0,2.0,1.0);
sort3(2.0,3.0,1.0);
*)

(*print(Ex 9\n");
fun del3 l myList = List.filter (fn x => x <> l) myList;
l = #3 myList;
del3([1,2,3,4,5]);
del3([1.0,2.0,3.0,4.0,5.0]);
del3(["the", "quick", "brown", "fox"]);*)

print("================================Ex 10================================\n");
fun sqsum (s) =
 if s < 0 then 0
 else (s*s) + sqsum(s-1);

sqsum(0);
sqsum(1);
sqsum(2);
sqsum(3);
sqsum(4);
sqsum(5);

print("================================Ex 11================================\n");
fun cycle(l,i) =
 if i = 0 then l
 else cycle(tl(l)@ [hd(l)], i - 1);
cycle([1,2,3,4,5,6],0);
cycle([1,2,3,4,5,6],2);
cycle([1,2,3,4,5,6],6);
cycle([1,2,3,4,5,6],8);

print("================================Ex 12================================\n");
fun pow(d:real, i:int) =
 if i = 1 then d
 else d*pow (d, i-1);

pow(3.0, 3);
pow(2.0, 5);

(*
print("Ex 13\n");
max([1,2,3,4,5]);
max([5,4,3,2,1]);
max([3,5,2,1,4]);
*)
(*
print("Ex 14\n");
isPrime(2);
isPrime(3);
isPrime(4);
isPrime(75);
isPrime(111);
*)
(*
print("Ex 15\n");
select([1,2,3,4,5,6,7,8,9,10],isPrime);
*)

