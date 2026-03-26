% conversion of centigrade to fahrenheit and also vice versa.
% and also to find the freezing point of water in both scales.

% Conversion from Centigrade to Fahrenheit
centigrade_to_fahrenheit(C, F) :-
    F is (C * 9 / 5) + 32.  

% Conversion from Fahrenheit to Centigrade
fahrenheit_to_centigrade(F, C) :-
    C is (F - 32) * 5 / 9.  

% Freezing point of water in Centigrade
freezing_point_centigrade(0).

% Freezing point of water in Fahrenheit
freezing_point_fahrenheit(32).



