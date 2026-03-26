% ---------- Graph ----------

edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(c,g).
edge(d,h).
edge(e,h).
edge(f,k).


% ---------- DFS ----------

dfs(Start, Goal, Path) :-
    dfs_visit(Start, Goal, [Start], Path).

dfs_visit(Goal, Goal, Visited, Path) :-
    reverse(Visited, Path).

dfs_visit(Current, Goal, Visited, Path) :-
    edge(Current, Next),
    \+ member(Next, Visited),
    dfs_visit(Next, Goal, [Next|Visited], Path).
