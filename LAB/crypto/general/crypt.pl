:- use_module(library(clpfd)).

ab_plus_cb_equals_dbe([A,B,C,D,E]) :-

    Vars = [A,B,C,D,E],
    Vars ins 0..9,
    all_distinct(Vars),

    % leading letters cannot be zero
    A #\= 0,
    C #\= 0,
    D #\= 0,

    % ab + cb = dbe
    (10*A + B) + (10*C + B)
        #= 100*D + 10*B + E,

    labeling([], Vars).