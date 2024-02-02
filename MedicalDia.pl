% Facts about symptoms and diseases
symptom(john, fever).
symptom(jane, headache).
symptom(jack, cough).

disease(cold, fever).
disease(flu, fever).
disease(flu, headache).


% Rule for diagnosing diseases based on symptoms
diagnose(Person, Disease) :-
    symptom(Person, Symptom),
    disease(Disease, Symptom).

% Example queries
% To check if John has a cold:
% ?- diagnose(john, cold).
