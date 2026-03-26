% -------------------------
% Water Jug Problem
% 4-litre jug  -> X
% 3-litre jug  -> Y
% -------------------------

banner :-
    nl,
    write('-------------------------'), nl,
    write('Water Jug Problem'), nl,
    write('4-litre jug -> X'), nl,
    write('3-litre jug -> Y'), nl,
    write('-------------------------'), nl, nl.

% Goal state
jug(2,0) :-
    nl,
    write('Goal reached: 2 litres in 4-litre jug.').


% Step 1 : Fill 3-litre jug
jug(X,Y) :-
    Y = 0,
    nl,
    write('Fill 3-litre jug -> ('),
    write(X), write(',3)'),
    jug(X,3).


% Step 2 : Pour 3-litre into 4-litre jug
jug(X,Y) :-
    Y > 0,
    X < 4,
    T is min(4-X, Y),    
    X1 is X + T,
    Y1 is Y - T,
    
    nl,
    write('Pour 3L into 4L -> ('),
    write(X1), write(','), write(Y1), write(')'),
    jug(X1,Y1).


% Step 3 : Empty 4-litre jug
jug(X,Y) :-
    X = 4,
    nl,
    write('Empty 4-litre jug -> (0,'),
    write(Y), write(')'),
    jug(0,Y).


% run this program : ?- banner, jug(0,0).