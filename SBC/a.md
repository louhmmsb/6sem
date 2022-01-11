```
% a)
asc(Y, X) :- pai(Y, X) ; mae(Y, X).
avof(Y, X) :- mae(Y, Z), asc(Z, X).

% c)
bisavom(Y, X) :- pai(Y, Z), asc(Z, W), asc(W, X).

% d)
primo_1(X, Y) :- asc(A, X), asc(B, Y), irmaos(A, B).

% f)
maior_de_idade(X) :- idade(X, I), I >= 18.

% g)
pessoas(L) :- findall(X, homem(X) ; mulher(X), L).

% h)
max_idade(P1, P2, Z) :- idade(P1, I1), idade(P2, I2), I2 >= I1, !, Z = P2.
max_idade(P1, P2, P1).
mais_velho_aux([X], X).
mais_velho_aux([X | Xs], R) :- mais_velho_aux(Xs, At), max_idade(X, At, R).
mais_velho(P) :- pessoas(L), mais_velho_aux(L, P).

% i)
faz_par(P, [P, I]) :- idade(P, I).
lista_pessoas(L, m) :- findall(P, (homem(X), faz_par(X, P)), L).
lista_pessoas(L, f) :- findall(P, (mulher(X), faz_par(X, P)), L).

% j)
parentes(X, Y) :- primo_1(X, Y) ; irmaos(X, Y) ; asc(X, A), asc(Y, A) ;
                  asc(X, Y) ; asc(Y, X).
parentes(X, Y) :- asc(X, A), asc(Y, B), parentes(A, B).
adequados(H, M) :- homem(H), mulher(M), idade(H, Ih), idade(M, Im),
                   -2 =< (Ih - Im), (Ih - Im) =< 10, \+ parentes(H, M),
                   \+ casados(H, X), \+ casados(Y, M).
                   
```