% -----------------------------
% Missionaries and Cannibals
% state(Mleft, Cleft, BoatSide)
% BoatSide = l or r
% -----------------------------

% goal state
goal(state(0,0,r)).

% start state
start(state(3,3,l)).

% safe state
safe(state(M,C,_)) :-
    M >= 0, C >= 0,
    M =< 3, C =< 3,
    ( M =:= 0 ; M >= C ),
    MR is 3-M,
    CR is 3-C,
    ( MR =:= 0 ; MR >= CR ).

% possible moves
move(state(M,C,l), state(M2,C2,r)) :-
    member((DM,DC), [(2,0),(0,2),(1,1),(1,0),(0,1)]),
    M2 is M - DM,
    C2 is C - DC,
    safe(state(M2,C2,r)).

move(state(M,C,r), state(M2,C2,l)) :-
    member((DM,DC), [(2,0),(0,2),(1,1),(1,0),(0,1)]),
    M2 is M + DM,
    C2 is C + DC,
    safe(state(M2,C2,l)).

% DFS search
solve(State, Path) :-
    goal(State),
    reverse([State], Path).

solve(State, Path) :-
    move(State, Next),
    solve(Next, Path).

