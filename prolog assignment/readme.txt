Input for each program along with output is given below

Program1:

?- find.
[walley,merium,jertie,harvard]
[al,sl,pe,be]
[1926,1935,1929,1932]
true.

Program2:
?-  getlist([[not(a),b,c],[d,a],[not(d),not(a)]]).
[b,c,not(a)]
true.


Program5:
?- check_ada('a_578gggh').
true.

?- check_ada('2fhhf').
false.

Program4:
?- sudoku([_,_,4,8,_,_,_,1,7,6,7,_,9,_,_,_,_,_,5,_,8,_,3,_,_,_,4,3,_,_,7,4,_,1,_,_,_,6,9,_,_,_,7,8,_,_,_,1,_,6,9,_,_,5,1,_,_,_,8,_,3,_,6,_,_,_,_,_,6,_,9,1,2,4,_,_,_,1,5,_,_]).

[[9,3,4,8,2,5,6,1,7],[6,7,2,9,1,4,8,5,3],[5,1,8,6,3,7,9,2,4],[3,2,5,7,4,8,1,6,9],[4,6,9,1,5,3,7,8,2],[7,8,1,2,6,9,4,3,5],[1,9,7,5,8,2,3,4,6],[8,5,3,4,7,6,2,9,1],[2,4,6,3,9,1,5,7,8]]
true ;
false.