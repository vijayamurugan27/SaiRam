ab_plus_cb_equals_dbe([A,B,C,D,E]) :-

    between(1,9,A),
    between(0,9,B),
    between(1,9,C),
    between(1,9,D),
    between(0,9,E),

    all_diff([A,B,C,D,E]),

    AB  is 10*A + B,
    CB  is 10*C + B,
    DBE is 100*D + 10*B + E,

    DBE is AB + CB.


all_diff([]).
all_diff([H|T]) :-
    \+ member(H,T),
    all_diff(T).