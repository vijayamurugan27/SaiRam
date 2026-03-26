/* -------- Graph (Distances between cities) -------- */

edge(a,b,3).
edge(a,c,5).
edge(a,d,7).
edge(a,e,8).

edge(b,a,3).
edge(b,c,9).
edge(b,d,10).
edge(b,e,3).

edge(c,a,4).
edge(c,b,4).
edge(c,d,5).
edge(c,e,8).

edge(d,a,2).
edge(d,b,6).
edge(d,c,5).
edge(d,e,6).

edge(e,a,7).
edge(e,b,3).
edge(e,c,8).
edge(e,d,6).


/* -------- All Cities -------- */

cities([a,b,c,d,e]).


/* -------- Travelling Salesman -------- */

tsp(Path,Cost) :-
    cities(Cities),
    permutation(Cities,[Start|Rest]),
    travel(Start,[Start|Rest],Cost),
    append([Start|Rest],[Start],Path).   % return to starting city


/******** Cost Calculation ********/

travel(_,[_],0).

travel(Current,[Current,Next|Rest],Cost) :-
    edge(Current,Next,Distance),
    travel(Next,[Next|Rest],RemainingCost),
    Cost is Distance + RemainingCost.


# tsp(Path,Cost).