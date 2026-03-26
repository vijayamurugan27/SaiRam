alpha1([S,E,N,D,M,O,R,Y]) :-

    between(1,9,S),
    between(0,9,E),
    between(0,9,N),
    between(0,9,D),
    between(1,9,M),
    between(0,9,O),
    between(0,9,R),
    between(0,9,Y),

    all_diff([S,E,N,D,M,O,R,Y]),

    Send  is S*1000 + E*100 + N*10 + D,
    More  is M*1000 + O*100 + R*10 + E,
    Money is M*10000 + O*1000 + N*100 + E*10 + Y,

    Money is Send + More.

all_diff([]).
all_diff([H|T]) :-
    \+ member(H,T),
    all_diff(T).