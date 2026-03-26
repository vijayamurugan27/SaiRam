% N-Queens problem using CLP(FD)

:- use_module(library(clpfd)).

% n_queens(N, Qs)
% Qs is a list of length N.
% The i-th element of Qs is the column of the queen in row i.

n_queens(N, Qs) :-
    length(Qs, N),          % N queens
    Qs ins 1..N,            % columns are 1..N
    all_different(Qs),     % no two queens in the same column
    safe_queens(Qs),       % no diagonal attacks
    labeling([], Qs).      % search for concrete solutions


% Check all queens are safe with each other
safe_queens([]).
safe_queens([Q|Qs]) :-
    no_threat(Q, Qs, 1),
    safe_queens(Qs).


% Q does not attack any queen in the list
% D is the row distance to the next queen
no_threat(_, [], _).
no_threat(Q, [Q1|Qs], D) :-
    Q #\= Q1,               % different column (already ensured, but kept for clarity)
    abs(Q - Q1) #\= D,     % not on the same diagonal
    D1 #= D + 1,
    no_threat(Q, Qs, D1).


% the counter for the number of solutions.
n_queens_count(N, Count) :-
    findall(Qs, n_queens(N, Qs), Solutions),
    length(Solutions, Count).
