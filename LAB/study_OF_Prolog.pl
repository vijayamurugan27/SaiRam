and     ,
or      ;
if      :-
not     not


valdi rule : 

        friends(X,Y) :- likes(X,Y) ,likes(Y,X) .

        hates(X,Y) :- not(likes(Y,Z)) .

        enemies(X,Y) :- hates(X,Y) , hates(Y,X) .

        enemies(X,Y) :- not(likes(X,Y)) , not(likes(Y,X)) .


Invalid rules: 
    left_of(X,Y) :- right_of(Y,X)   // Missing a period at the end of the rule.
    likes(X,Y), likes(Y,X) :- friends(X,Y) . //    friends(X,Y) :- likes(X,Y) ,likes(Y,X) . // LHS is not a single literal.
    not(likes(X,Y)) :- hates(X,Y) . //    hates(X,Y) :- not(likes(Y,Z)) . // LHS cannot contain negation.




Statements:

    1) the cakes are delicious.
    2) the pickles are sour.
    3) the pickles are spicy.
    4) priya relishes coffee.
    5) priya likes food if they are delicisious.
    6) priya likes food if they are spicy and delicious.

Statements in Prolog:
    delicious(cakes).
    sour(pickles).
    spicy(pickles).
    relishes(priya, coffee).
    likes(priya, Food) :- delicious(Food). % Food is a variable that can match any food item that is delicious.
    likes(priya, Food) :- spicy(Food), delicious(Food).


Operators in prolog:
    1) , (conjunction) - used to combine multiple conditions in a rule.
    2) ; (disjunction) - used to represent alternative conditions in a rule.
    3) :- (implication) - used to define rules, where the left-hand side is true if the right-hand side is true.
    4) not (negation) - used to represent negation of a condition in a rule.

Mathematical operators in Prolog:
    1) + (addition) - used to add two numbers.
    2) - (subtraction) - used to subtract one number from another.
    3) * (multiplication) - used to multiply two numbers.
    4) / (division) - used to divide one number by another.
    5) mod (modulus) - used to find the remainder of the division of one number by another.


Examples for Mathematical operators in Prolog:
    1) X is 5 + 3. % This will assign the value 8 to X.
    2) Y is 10 - 4. % This will assign the value 6 to Y.
    3) Z is 6 * 7. % This will assign the value 42 to Z.
    4) W is 20 / 5. % This will assign the value 4 to W.
    5) Remainder is 10 mod 3. % This will assign the value 1 to Remainder.


Comparision operators in Prolog:
    1) = (equality) - used to check if two terms are equal.
    2) \= (inequality) - used to check if two terms are not equal.
    3) < (less than) - used to compare if one number is less than another.
    4) > (greater than) - used to compare if one number is greater than another.
    5) =< (less than or equal to) - used to compare if one number is less than or equal to another.
    6) >= (greater than or equal to) - used to compare if one number is greater than or equal to another.       

Examples for Comparison operators in Prolog:
    1) X = 5. % This will unify X with the value 5.
    2) Y \= 10. % This will succeed if Y is not equal   to 10.
    3) Z < 7. % This will succeed if Z is less than 7.
    4) W > 3. % This will succeed if W is greater than 3.
    5) A =< 10. % This will succeed if A is less than or equal to 10.
    6) B >= 5. % This will succeed if B is greater than or  equal to 5. 
    
