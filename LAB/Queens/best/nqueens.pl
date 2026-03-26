% choose a value from a list ( Column list) : X/Y - Row/ Column
mem(Y,[Y|_]).
mem(Y,[_|T]) :-
    mem(Y,T).

% main predicate
solution([]).
solution([Row/Col | Others]) :-
    solution(Others),
    mem(Col,[1,2,3,4, 5,6,7,8]),
    noattack(Row/Col, Others).

% no more queens to compare
noattack(_,[]).


% check current queen with remaining queens
noattack(R/C,[R1/C1 | Others]) :-
    C =\= C1,                 % not same column
    abs(C - C1) =\= abs(R - R1),   % not diagonal
    noattack(R/C, Others).

template([1/_,2/_,3/_,4/_,5/_,6/_,7/_,8/_]).

% ?- template(T), solution(T).
% The whole program is finding the column values, because the row values are already fixed by the template.

% 🧒 Five-year-old version

% 👉 The board already has the row numbers written.
% 👉 The program only fills the column numbers.