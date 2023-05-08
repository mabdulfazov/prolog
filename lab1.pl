% facts
cinema(1, 'City Cinemas', '123 Main St.', '555-1234', 200).
cinema(2, 'Plex Cinemas', '456 Elm St.', '555-5678', 300).
movie(1, 'The Matrix', 1999, 'The Wachowskis', sci-fi).
movie(2, 'The Godfather', 1972, 'Francis Ford Coppola', crime).
movie(3, 'The Shawshank Redemption', 1994, 'Frank Darabont', drama).
show(1, 1, '2023-05-09', '14:00', 100).
show(1, 1, '2023-05-09', '16:30', 120).
show(1, 2, '2023-05-09', '19:00', 150).
show(2, 3, '2023-05-09', '18:00', 180).
show(2, 3, '2023-05-09', '20:30', 200).

% rules
showing_genre(Cinema, Genre) :- show(Cinema, Movie, _, _, _), movie(Movie, _, _, _, Genre).
showing_director(Cinema, Director, Genre) :- show(Cinema, Movie, _, _, _), movie(Movie, _, _, Director, Genre).

% queries
% ?- cinema(Id, Name, Address, _, _) , write('Cinema: '), write(Name), write(', Address: '), write(Address), nl, fail.
% returns all cinemas and their addresses

% ?- showing_director(Cinema, 'The Wachowskis', sci-fi), cinema(Cinema, Name, Address, _, _), write('Cinema: '), write(Name), write(', Address: '), write(Address), nl, fail.
% returns all cinemas showing a sci-fi movie directed by the Wachowskis and their addresses
