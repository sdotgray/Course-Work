% Shannon Gray
% CMSC 305, Lab 7
% Due: Sunday, November 24th, 2013

eval(mult(X,Y), Solution) :-
	eval(X,Sol1),
	eval(Y,Sol2),
	Solution is (Sol1*Sol2).

eval(div(X,Y), Solution) :-
	eval(X,Sol1),
	eval(Y,Sol2),
	Solution is (Sol1/Sol2).

eval(minus(X,Y), Solution) :-
	eval(X,Sol1),
	eval(Y,Sol2),
	Solution is (Sol1-Sol2).

eval(1, Answer) :- Answer is 1.0.
eval(2, Answer) :- Answer is 2.0.
eval(3, Answer) :- Answer is 3.0.
eval(4, Answer) :- Answer is 4.0.
