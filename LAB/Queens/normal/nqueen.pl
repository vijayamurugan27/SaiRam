% N-Queens problem (pure Prolog – no clpfd)

n_queens(N, Qs) :-
    length(Qs, N),
    range(1, N, Columns),
    permutation(Columns, Qs),
    safe_queens(Qs).


% generate list [Low, Low+1, ..., High]
range(L, H, []) :-
    L > H.
range(L, H, [L|T]) :-
    L =< H,
    L1 is L + 1,
    range(L1, H, T).


% check diagonal safety
safe_queens([]).
safe_queens([Q|Qs]) :-
    no_threat(Q, Qs, 1),
    safe_queens(Qs).


no_threat(_, [], _).
no_threat(Q, [Q1|Qs], D) :-
    Q =\= Q1,
    abs(Q - Q1) =\= D,
    D1 is D + 1,
    no_threat(Q, Qs, D1).


% Count the number of solutions for N queens
n_queens_count(N, Count) :-
    findall(Qs, n_queens(N, Qs), Solutions),
    length(Solutions, Count).

%n_queens_count(13, X).
%n_queens(4, Qs).
