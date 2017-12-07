% Concatena listas

concatena([], L, L).  
concatena([H|L], L2, [H|L3]):- concatena(L, L2, L3).

% Recebe uma lista L e inverte para L2

inverte([], []).
inverte([H|T], L2) :- 
	inverte(T, X),
	concatena(X, [H], L2).

