% Define facts and rules
father(john, jim).
father(john, ann).
mother(lisa, jim).
mother(lisa, ann).

parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

% Define the goal
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
?- ancestor(john, jim).
