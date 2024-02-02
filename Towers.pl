% Hanoi predicate: Move N discs from the source tower to the destination tower using the auxiliary tower.
hanoi(1, Source, Destination, _) :-
    write('Move disk 1 from '), write(Source), write(' to '), write(Destination), nl.

hanoi(N, Source, Destination, Auxiliary) :-
    N > 1,
    M is N - 1,
    hanoi(M, Source, Auxiliary, Destination),
    write('Move disk '), write(N), write(' from '), write(Source), write(' to '), write(Destination), nl,
    hanoi(M, Auxiliary, Destination, Source).

% Example usage:
% To solve the Towers of Hanoi problem with 3 disks, you can query:
% ?- hanoi(3, 'A', 'C', 'B').
