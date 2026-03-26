% ---------- Graph ----------

edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(d,g).
edge(e,g).
edge(c,e).
edge(c,f).
edge(e,g).
edge(f,g).

% ---------- BFS ----------

bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, Path).

bfs_queue([[Goal|Rest] | _], Goal, Path) :-
    reverse([Goal|Rest], Path).

bfs_queue([[Current|RestPath] | OtherPaths], Goal, Path) :-
    findall([Next,Current|RestPath],
            ( edge(Current, Next),
              \+ member(Next, [Current|RestPath])
            ),
            NewPaths),
    append(OtherPaths, NewPaths, UpdatedQueue),
    bfs_queue(UpdatedQueue, Goal, Path).


% run this program : ?- bfs(a, g, Path).