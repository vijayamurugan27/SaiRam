% factorial for a number.

% base case
factorial(0, 1). % The factorial of 0 is 1.

% recursive case
factorial(N, F) :-
    N > 0, % Ensure that N is a positive integer.
    N1 is N - 1, % Calculate N-1 for the recursive call.
    factorial(N1, F1), % Recursive call to calculate the factorial of N-1.
    F is N * F1. % Calculate the factorial of N using the result from the recursive call.

