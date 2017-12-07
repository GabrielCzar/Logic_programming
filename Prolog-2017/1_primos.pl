% \+ é o NOT
% =:= é o IGUAL com operações

is_prime(2).
is_prime(3).
is_prime(N) :- 
	N > 3, 
	N mod 2 \== 0, 
	\+ has_factor(N, 3).

has_factor(N, L) :- N mod L =:= 0.
has_factor(N, L) :- 
	L * L < N, 
	L2 is L + 2, 
	has_factor(N, L2).

lprimes([]).
lprimes([H|T]) :- is_prime(H), lprimes(T).