%gcd of two numbers.
gcd(X,X,X). % Base case: the gcd of a number with itself is the number.

gcd(X,Y,D) :-
    X > Y, % If X is greater than Y, we can reduce the problem by subtracting Y from X.
    X1 is X - Y, % Calculate the new value of X after subtraction.
    gcd(X1,Y,D). % Recursive call with the new value of X and the same Y.


gcd(X,Y,D) :-
    Y > X, % If Y is greater than X, we can reduce the problem by subtracting X from Y.
    Y1 is Y - X, % Calculate the new value of Y after subtraction.      
    gcd(X,Y1,D). % Recursive call with the same X and the new value of Y.

    

% Example query:
% ?- gcd(48,18,G).
% This will return G = 6, since the greatest common divisor of 48 and 18 is 6.
