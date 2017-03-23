union([],Z,Z).
union([X|Y],Z,W):-
	member(X,Z),!,union(Y,Z,W).
union([X|Y],Z,[X|W]):- union(Y,Z,W).

intersection([],_,[]).
intersection([H|T],Z,[H|W]):-
	member(H,Z),!,intersection(T,Z,W).
intersection([_|T],Z,W):-
	intersection(T,Z,W).
