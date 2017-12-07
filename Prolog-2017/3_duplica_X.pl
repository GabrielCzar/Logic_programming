% duplica_X( X , L1 , L2 ).

adiciona_2(X, [], [X, X]).
adiciona_2(X, L, [X, X | L]).

duplica_X(X, [X], [X, X]).
duplica_X(X, [X|T], R) :- adiciona_2(X, R, F), N is F, duplica_X(X, T, N), R is N.