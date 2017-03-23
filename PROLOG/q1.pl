female(sita).
male(shyam).
parents(shyam, gita, ram).
parents(sita, gita, ram).
sister_of(X, Y):-
	parents(X, M, F),
	parents(Y, M, F),
	not(X = Y),
	female(X).
