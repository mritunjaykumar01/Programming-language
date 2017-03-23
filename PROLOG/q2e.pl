member1(X,[X|_]).
member1(X,[_|L]):-
	member1(X,L).
