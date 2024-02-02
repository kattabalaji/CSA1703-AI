% Initial state: monkey is at position A, chair is at position B,
% banana is at position C, and the monkey is not holding the banana.
initial_state(state(at(A), at(B), at(C), not_holding)).

% Goal state: the monkey is holding the banana.
goal_state(state(_, _, _, holding)).

% Actions that the monkey can perform.
% walk from one position to another
walk(from, to, state(at(From), B, C, not_holding), state(at(To), B, C, not_holding)) :-
    adjacent(From, To).
walk(from, to, state(at(From), B, C, holding), state(at(To), B, C, holding)) :-
    adjacent(From, To).

% climb onto the chair
climb(state(at(Monkey), at(Monkey), C, not_holding), state(at(Monkey), at(Monkey), C, not_holding)).

% grasp the banana
grasp(state(at(Monkey), at(Monkey), at(Monkey), not_holding), state(at(Monkey), at(Monkey), at(Monkey), holding)).

% Define adjacent positions
adjacent(left, center).
adjacent(center, left).
adjacent(center, right).
adjacent(right, center).

% Define the solve predicate
solve(State, []) :- goal_state(State).
solve(State1, [Action | OtherActions]) :-
    apply_action(Action, State1, State2),
    solve(State2, OtherActions).

% Apply an action to a state
apply_action(Action, State1, State2) :-
    call(Action, State1, State2).

% Example usage:
% ?- initial_state(InitialState), solve(InitialState, Actions).
