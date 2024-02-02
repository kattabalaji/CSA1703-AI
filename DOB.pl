% Database facts
dob(john, '1990-05-15').
dob(susan, '1985-11-22').
dob(mike, '2000-03-10').
dob(emma, '1998-08-05').
dob(david, '1975-02-18').

% Query to retrieve the date of birth for a given person
get_dob(Person, DateOfBirth) :-
    dob(Person, DateOfBirth).

% Example usage:
% To find the date of birth for 'john', you can query:
% ?- get_dob(john, Date).
