% Books (Title, Author, Year, Genre, BorrowerId)

book(harry_potter_1, jk_rowling, 1997, fantasy, 12345).
book(harry_potter_2, jk_rowling, 1998, fantasy, none).
book(harry_potter_3, jk_rowling, 1999, fantasy, none).
book(the_hobbit, jrr_tolkien, 1937, fantasy, 67890).
book(the_lord_of_the_rings, jrr_tolkien, 1954, fantasy, none).
book(the_da_vinci_code, dan_brown, 2003, thriller, 24680).
book(angels_and_demons, dan_brown, 2000, thriller, none).
book(digital_fortress, dan_brown, 1998, thriller, none).
book(the_girl_with_the_dragon_tattoo, stieg_larsson, 2005, mystery, 12345).
book(the_girl_who_played_with_fire, stieg_larsson, 2006, mystery, 67890).
book(the_girl_who_kicked_the_hornets_nest, stieg_larsson, 2007, mystery, none).

:- dynamic book/5.

% Borrowers

borrower(john, doe, 12345).
borrower(jane, smith, 67890).
borrower(jack, black, 24680).

% Search by title

find_book_by_title(Title, Author, Year, Genre) :-
    book(Title, Author, Year, Genre, _).

% Search by author

find_book_by_author(Author, Title, Year, Genre) :-
    book(Title, Author, Year, Genre, _).

% Find borrower by ID

find_borrower_by_id(Id, First, Last) :-
    borrower(First, Last, Id).

% List borrowed books

list_borrowed_books :-
    book(Title, Author, Year, Genre, BorrowerId),
    BorrowerId \= none,
    borrower(First, Last, BorrowerId),
    format('Book: ~w, Author: ~w, Year: ~w, Genre: ~w, Borrower: ~w ~w~n',
           [Title, Author, Year, Genre, First, Last]),
    fail.
list_borrowed_books.

% Return Book

return_book(Title) :-
    retract(book(Title, Author, Year, Genre, _)),
    assert(book(Title, Author, Year, Genre, none)),
    write('Book returned: '), write(Title), nl.