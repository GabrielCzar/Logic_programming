/*

		 		   José 	  Maria
		 			|			|
		 			-------------
		 				|	  |
		 		       Ana 	 Joao
		 		       	|		|
				----------		|
				|		 |	   Mario	
			  Joana    Helena 	|
			 			 |		|
			 			 --------
			 				|
		 				Carlos

	a) Utilizando o predicado progenitor( X , Y ) ( X é progenitor de Y ), represente em
Prolog todos os progenitores da família Pinheiro.
	b) Represente em Prolog as relações: sexo (masculino ou feminino), irmã, irmão,
descendente, mãe, pai, avô, avó, tio, tia, primo e prima.

*/

%A) PROGENITORES

progenitor(jose, joao). %Jose pai de Joao
progenitor(jose, ana).	
progenitor(maria, joao). %Maria mae de Joao
progenitor(maria, ana).
progenitor(ana, helena).
progenitor(ana, joana).
progenitor(joao, mario).
progenitor(mario, carlos).
progenitor(helena, carlos).

%B ) RELACOES

sexo(jose, masculino).
sexo(joao, masculino).
sexo(mario, masculino).
sexo(carlos, masculino).
sexo(maria, feminino).
sexo(ana, feminino).
sexo(helena, feminino).
sexo(joana, feminino).

irma(X, Y) :-
	X \== Y,
	sexo(X, feminino),
	progenitor(Z, X),
	progenitor(Z, Y).

irmao(X, Y) :-
	X \== Y,
	sexo(X, masculino),
	progenitor(Z, X),
	progenitor(Z, Y).

descendente(X, Y) :- progenitor(Y, X).
descendente(X, Z) :- 
	progenitor(Y, X),
	descendente(Y, Z).

mae(X, Y) :- 
	sexo(X, feminino),
	progenitor(X, Y).

pai(X, Y) :-
	sexo(X, masculino),
	progenitor(X, Y).

% Em relacao aos nomes repetidos para os avos o prolog conseguiu reconhecer mas ainda coloquei outras maneiras so pra garantir

avo(X, Y) :- 			% avô
	progenitor(X, Z),
	progenitor(Z, Y),
	sexo(X, masculino).

avo(X, Y) :-  			% avó
	progenitor(X, Z),
	progenitor(Z, Y),
	sexo(X, feminino).

% Bom em relacao ao nomes dos avos serem um poucos confusos mas ainda assim produzem o resultado correto
% Vou colocar outra opcao para o caso de querer algo mais especifico

%AVÔ
avo_m(X, Y) :-
	progenitor(X, Z),
	progenitor(Z, Y),
	sexo(X, masculino).
%AVÓ
avo_f(X, Y) :-
	progenitor(X, Z),
	progenitor(Z, Y),
	sexo(X, feminino).


tia(X, Y) :-
	irma(X, Z),
	progenitor(Z, Y).

tio(X, Y) :-
	irmao(X, Z),
	progenitor(Z, Y).

primo(X, Y) :-
	X \== Y,
	sexo(X, masculino),
	(irmao(Z, A);
	irma(Z, A)), 
	progenitor(Z, X),
	progenitor(A, Y).
	
prima(X, Y) :-	
	X \== Y,
	sexo(X, feminino),
	(irmao(Z, A);
	irma(Z, A)),
	progenitor(Z, X),
	progenitor(A, Y).

