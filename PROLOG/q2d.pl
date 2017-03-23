append1([],L,L).
append1([H|L1],L2,[H|L3]):- 
	append1(L1,L2,L3).
