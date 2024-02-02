% Facts
student(john).
student(susan).

teacher(prof_smith).
teacher(prof_doe).

subject(math).
subject(english).

% Relationships
teaches(prof_smith, math).
teaches(prof_doe, english).

enrolled(john, math).
enrolled(susan, english).

% Queries
enrolled_in_subject(Student, Subject) :- enrolled(Student, Subject).
teaches_subject(Teacher, Subject) :- teaches(Teacher, Subject).
