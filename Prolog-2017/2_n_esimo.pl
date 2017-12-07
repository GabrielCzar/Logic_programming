n_esimo(_, [P], P).
n_esimo(0, [H|_], H).
n_esimo(N, [_|T], X) :- N \== 0, N1 is N - 1, n_esimo(N1, T, F), X is F. 
