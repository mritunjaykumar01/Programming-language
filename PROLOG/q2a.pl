length_list([],0).
length_list([_ |T],Length):-
	length_list(T,Tail_length),
	Length is Tail_length + 1.
