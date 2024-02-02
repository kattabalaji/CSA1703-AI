% Facts representing individuals
male(john).
male(bob).
male(tom).
female(lisa).
female(amy).
female(sara).

% Parent relationships
parent(john, bob).
parent(john, lisa).
parent(bob, tom).
parent(lisa, amy).
parent(lisa, sara).

% Rules for determining the child, mother, and father relationships
child(X, Y) :- parent(Y, X).
mother(X, Y) :- female(X), parent(X, Y).
father(X, Y) :- male(X), parent(X, Y).

% Rules for determining siblings and sisters
siblings(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
sister(X, Y) :- female(X), siblings(X, Y).

% Grandparent relationship
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).

% Ancestor relationship
ancestor(X, Z) :- parent(X, Z).
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z).


?- mother(X, tom).
% X = lisa

?- siblings(amy, sara).
% true

?- grandparent(X, amy).
% X = john
