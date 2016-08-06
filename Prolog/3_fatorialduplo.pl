%Fatorial de zero é 1
fatorialDuplo(0, 1).
%Fatorial de 1 é 1
fatorialDuplo(1, 1).

% Fatorial Duplo de um numero N ou 
% Fatorial Duplo de um numero N é S?

fatorialDuplo(N, S) :- 
	N > 0,
	N2 is N - 2,
	fatorialDuplo(N2, F),
	S is N * F. 
