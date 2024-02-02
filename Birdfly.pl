% Facts
can_fly(sparrow).
can_fly(eagle).
can_fly(pigeon).
cannot_fly(penguin).

% Rules
fly(X) :- can_fly(X).
fly(X) :- \+cannot_fly(X).

% Queries
% To check if a sparrow can fly:
% ?- fly(sparrow).
% Expected output: true

% To check if a penguin can fly:
% ?- fly(penguin).
% Expected output: false
