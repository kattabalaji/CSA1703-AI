% Facts about fruits and their colors
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(orange, orange).

% Query to find the color of a fruit
get_fruit_color(Fruit, Color) :-
    fruit_color(Fruit, Color).

% Example queries:
% 1. Find the color of a specific fruit
%    get_fruit_color(apple, Color).
