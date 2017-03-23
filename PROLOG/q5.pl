xor(0,0,0). 
xor(0,1,1). 
xor(1,0,1). 
xor(1,1,0).
or(0,0,0). 
or(0,1,1). 
or(1,0,1). 
or(1,1,1).
and(0,0,0). 
and(0,1,0). 
and(1,0,0). 
and(1,1,1).
half_adder([X,Y],[S,C]):-
	xor(X,Y,S),and(X,Y,C).
	
full_adder([X,Y,Cin],[S,C]):-
	half_adder([X,Y],[S1,C1]),
	half_adder([S1,Cin],[S,C2]),
	or(C1,C2,C).	
	
two_bit_adder([[X1,X0],[Y1,Y0],Cin],[[S1,S0],Cout]):-
	full_adder([X0,Y0,Cin],[S0,C1]),
	full_adder([X1,Y1,C1],[S1,Cout]).
	
circuit_verification_two_bit_adder([[X1,X0],[Y1,Y0],Cin],[[S1,S0],Cout]):-
	full_adder([X0,Y0,Cin],[S0,C1]),
	full_adder([X1,Y1,C1],[S1,Cout]).
