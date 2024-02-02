% Base case: Sum of integers from 1 to 1 is 1.
sum_integers(1, 1).

% Recursive case: Sum of integers from 1 to N is N plus the sum of integers from 1 to N-1.
sum_integers(N, Sum) :-
    N > 1,
    Prev is N - 1,
    sum_integers(Prev, PrevSum),
    Sum is N + PrevSum.

% Example usage:
% To find the sum of integers from 1 to 5, you can query:
% ?- sum_integers(5, Result).
