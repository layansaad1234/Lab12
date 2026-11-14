% Facts:
edge('Makkah', 'Madinah').

edge('Madinah', 'Makkah').



edge('Madinah', 'Taif').

edge('Madinah', 'Tabuk').



edge('Makkah', 'Riyadh').



edge('Tabuk', 'Taif').

edge('Taif', 'Tabuk').



edge('Taif', 'Dammam').



edge('Al-Qatif', 'Madinah').

edge('Al-Qatif', 'Dammam').

edge('Dammam', 'Al-Qatif').



edge('Dammam', 'Riyadh').

edge('Riyadh', 'Dammam').



path(From, To, Path) :-

  travel_path(From, To, [From], ReversePath),

  reverse(ReversePath, Path).



% Base case: 
travel_path(To, To, Visited, Visited).



% Recursive case: 

travel_path(From, To, Visited, Path) :-

  edge(From, Next),

  \+ member(Next, Visited),

  travel_path(Next, To, [Next|Visited], Path).





%main predicate

travel(From, To, Path) :-

  path(From, To, Path).