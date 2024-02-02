% Define facts about animals and their characteristics
has_fur(dog).
has_fur(cat).
lays_eggs(chicken).
gives_milk(dog).

% Define rules for inferring whether an animal is a mammal
mammal(X) :- has_fur(X), gives_milk(X).
mammal(X) :- has_fur(X), not(lays_eggs(X)).

% Forward chaining rule
forward_chain :- mammal(X), write(X), write(' is a mammal.'), nl, fail.

% Queries to test forward chaining
:- dynamic has_fur/1, lays_eggs/1, gives_milk/1.
has_fur(cat). % Additional fact
lays_eggs(chicken). % Additional fact
forward_chain.
