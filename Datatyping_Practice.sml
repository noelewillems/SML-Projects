(*
Author: Noel Willems for COS350 Lab 4
Webber Chapter 11 Exercises on pages 178 – 179, do any 6 of the 12 exercises 
*)


print ("=============Ex 1=============\n");
datatype suit = Hearts | Spades | Clubs | Diamonds;


print ("=============Ex 2=============\n");
fun suitname x = (case x of 
    Hearts => "Hearts" |
    Spades => "Spades" |
    Clubs => "Clubs" |
    Diamonds => "Diamonds");

suitname Hearts;
suitname Spades;
suitname Clubs;
suitname Diamonds;


print ("=============Ex 3=============\n");
datatype number = REAL of real | INT of int;


print ("=============Ex 4=============\n");
val x = INT(3);
val y = REAL(2.7);
val z = INT(5);
val w = REAL(1.3);

fun plus (INT a) (INT b) = INT(a + b)
|   plus (INT a) (REAL b) = REAL(real a + b)
|   plus (REAL a) (INT b) = REAL(a + real b)
|   plus (REAL a) (REAL b) = REAL(a + b);
plus x y;
plus y x;
plus y w;
plus x z;


print ("=============Ex 5=============\n");
datatype intnest = INT of int | LIST of intnest list;
val ml = LIST[INT 2, INT 5, INT 7];
fun addup (LIST []) = 0 
|   addup(INT n) = n
|   addup (LIST (x::xs)) = addup(x) + addup(LIST xs);
addup ml;


print ("=============Ex 6=============\n");
datatype 'a mylist = NIL | CONS of 'a * 'a mylist;
fun prod(NIL) = 1
|   prod (CONS(head, tail)) = head * prod tail;
prod (CONS(4,CONS(3,CONS(2,NIL))));


(*
print ("Ex 7\n");
datatype 'a mylist = NIL | CONS of 'a * 'a mylist;

reverse (CONS(4,CONS(3,CONS(2,NIL))));
*)
(*
print ("Ex 8\n");
datatype 'a mylist = NIL | CONS of 'a * 'a mylist;

append (CONS(5,CONS(13,NIL))) (CONS(4,CONS(3,CONS(2,NIL))));
*)
(*
print ("Ex 9\n");
datatype 'a tree = Empty | Node of 'a tree * 'a * 'a tree;
val tree0 = Node(Empty,13,Empty);
val tree1 = Node (Node(Empty,2,Empty), 3, Node(Empty,1,Empty));
val tree2 = Node (Node(Empty,2,Node(Empty, 5, Empty)), 3, Node(Node(Empty,8,Empty),1,Empty));
appendall tree0;
appendall tree1;
appendall tree2;
*)
(*
print ("Ex 10\n");
datatype 'a tree = Empty | Node of 'a tree * 'a * 'a tree;
val tree0 = Node(Empty,13,Empty);
val tree1 = Node (Node(Empty,2,Empty), 3, Node(Empty,1,Empty));
val tree2 = Node (Node(Empty,2,Node(Empty, 5, Empty)), 3, Node(Node(Empty,8,Empty),1,Empty));
isComplete tree0;
isComplete tree1;
isComplete tree2;
*)
(*
print ("Ex 11\n");
datatype 'a tree = Empty | Node of 'a tree * 'a * 'a tree;
val L0 = [13];
val L1 = [13,7,21];
val L2 = [21,13,7];
val L3 = [7,13,21];
*)

(* note test signatures fixed on 10/12/2019
print ("Ex 12\n");
datatype 'a tree = Empty | Node of 'a tree * 'a * 'a tree;
val bt1 = Node (Node(Empty,1,Node(Empty, 2, Empty)), 3, Node(Node(Empty,8,Empty),13,Empty));
searchBST bt1 op < 13;
searchBST bt1 op < 1;
searchBST bt1 op < 99;
*)




