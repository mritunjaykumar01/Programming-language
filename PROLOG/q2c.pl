reverse1([],[]).
reverse1([H|T],L):-
	reverse1(T,L1),
	append(L1,[H],L).
