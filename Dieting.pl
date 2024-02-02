% Facts about foods and their impact on blood sugar levels
food_impact(apple, low).
food_impact(banana, medium).
food_impact(chocolate, high).
food_impact(spinach, low).
food_impact(rice, high).

% Rules for suggesting a diet based on diabetes
suggested_diet(FoodList, Disease) :-
    Disease = diabetes,
    recommend_foods(FoodList).

% Helper rule to recommend foods based on their impact on blood sugar levels
recommend_foods([]).
recommend_foods([Food | Rest]) :-
    food_impact(Food, Impact),
    write('Avoid '), write(Food), write(' ('), write(Impact), write(' impact)'), nl,
    recommend_foods(Rest).

% Example usage:
% ?- suggested_diet([apple, spinach, rice, chocolate], diabetes).
