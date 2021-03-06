%Shannon Gray
%CMSC 305, Lab 8
%Due: Sunday, December 8th, 2013
%
% Hey, Bob. I know this doesn't work,
% but I couldn't figure it out. Sorry.
% When I work through it in my head
% it seems like it shoud, but I must
% be going wrong somewhere.  All the
% methods seem to work fine separately,
% but it breaks (runs out of local stack)
% when I try to generate all options.

eval(mult(X,Y), Solution) :-
	eval(X,Sol1),
	eval(Y,Sol2),
	Solution is (Sol1*Sol2).

eval(divide(X,Y), Solution) :-
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

num(1).
num(2).
num(3).
num(4).

deleteItem(_, [], []).
deleteItem(Exp, [Exp|Tail], Tail).
deleteItem(Exp, [Head|Tail], [Head|Result]) :-
  deleteItem(Exp, Tail, Result).

resources([1,2,3,4,mult(X,Y),divide(A,B),divide(C,D),minus(E,F),minus(G,H)]).

getSymbol(InList, Exp, OutList) :-
	member(Exp, InList),
	deleteItem(Exp, InList, OutList).

genExp(Exp) :-
	   resources(InList),
	   genExp(InList, Exp, _),
	   eval(Exp,6.0).
genExp(InList,Exp,OutList) :-
	getSymbol(InList, Exp, OutList),
	num(Exp).
genExp(InList, mult(Exp1, Exp2), OutList) :-
	getSymbol(InList, mult(Exp1, Exp2), L1),
	genExp(L1, Exp1, L2),
	genExp(L2, Exp2, OutList).
genExp(InList, divide(Exp1, Exp2), OutList) :-
	getSymbol(InList, divide(Exp1, Exp2), L1),
	genExp(L1, Exp1, L2),
	genExp(L2, Exp2, OutList).
genExp(InList, minus(Exp1, Exp2), OutList) :-
	getSymbol(InList, minus(Exp1, Exp2), L1),
	genExp(L1, Exp1, L2),
	genExp(L2, Exp2, OutList).


%bagof, setof - use to generate a list.

% generate all exp that evaluate to 6.
% remove the ones that use more than the allowed ammount, and remove
% duplicates, ex. mult(2,3) and mult(3,2).
