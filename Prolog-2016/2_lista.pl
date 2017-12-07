% Define uma lista
lista([]).
lista([_|_]).

% Constroi uma lista
contruir(X, Y, [X|Y]).

% Para saber se X pertence a uma lista L
membro(X, [X|_]).
membro(X, [_|T]) :- membro(X, T).

% Adiona X a uma lista L
adiciona(X, [], [X]).
adiciona(X, L, [X|L]).

% Apaga X de uma lista L
apaga_uma_ocorrencia(X, [X|T], T).
apaga_uma_ocorrencia(X, [H|T], [H|TT]) :- apaga_uma_ocorrencia(X, T, TT). 

%Versao corrigida do apagar que na verdade apaga tds as ocorrencias de X em L
apagar(_,[ ],[ ]).
apagar(X, [X|Y], Z) :-
apagar(X,Y,Z).
apagar(X,[K|Y], [K|Z]) :-
	X \== K,
	apagar(X,Y,Z).

% Concatena duas listas
concatena([], L, L).
concatena([H|L], L2, [H|L3]) :- concatena(L, L2, L3). %L3 é o corpo da L2

% Comprimento de uma lista
comprimento(0, []).
comprimento(C, [_|T]) :- 
	comprimento(N, T),
	C is N + 1. 

