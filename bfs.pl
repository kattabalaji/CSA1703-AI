% Example graph representation:
% graph(Node, Neighbors, Cost)
graph(a, [b, c], 1).
graph(b, [d, e], 3).
graph(c, [f], 2).
graph(d, [], 0).
graph(e, [g], 4).
graph(f, [], 0).
graph(g, [], 0).

% Best First Search Algorithm
best_first_search(Start, Goal, Path) :-
    best_first_search([node(Start, [])], Goal, [], Path).

% Base case: Goal node is found
best_first_search([node(Goal, Path) | _], Goal, _, Path).

% Recursive case
best_first_search([node(Current, CurrentPath) | Rest], Goal, Visited, Path) :-
    findall(node(Next, [Next | CurrentPath]),
            (   graph(Current, Neighbors, _),
                member(Next, Neighbors),
                \+ member(Next, Visited)
            ),
            NewNodes),
    append(Rest, NewNodes, Queue),
    best_first_search(Queue, Goal, [Current | Visited], Path).

% Example usage:
% best_first_search(a, g, Path).
