% Representacao_do_Grafo
/*  0-------1
    |\     /|
    | \   / |
    |   2   |
    | /   \ |
    |/     \|
    3-------4  */

aresta(0, 1).
aresta(0, 2).
aresta(0, 3).
aresta(1, 2).
aresta(1, 4).
aresta(2, 3).
aresta(2, 4).
aresta(3, 4).

% Determina se um vertice X é adjacente a um vertice Y

adjacente(X, Y) :- aresta(X, Y) ; aresta(Y, X), X \= Y.

% Verifica se um vertice X pode ir a um vertice que é a cabeça de uma lista

go(X, [H|_]) :- adjacente(X, H).

% Verifica se o caminho é valido

caminho([_]).
caminho([H|T]) :-
	go(H, T),
	caminho(T).	

% Determina o tamanho de uma lista

tam([], 0).
tam([_|T], S) :- 
	tam(T, S1),
	S is S1 + 1.

% Retorna uma lista com todas os vizinhos

listaAdjacentes(X, L) :- findall(Z, adjacente(Z, X), L).

% Determina a quantidade de graus ou valencia de um vertice

graus(X, S) :- 
	listaAdjacentes(X, L),
	tam(L, S).	
