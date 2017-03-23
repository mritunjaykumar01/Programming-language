rem_dup([],[]).
rem_dup([H|T],L):- member(H,T),!,rem_dup(T,L).
rem_dup([H|T],[H|T1]):- rem_dup(T,T1).
