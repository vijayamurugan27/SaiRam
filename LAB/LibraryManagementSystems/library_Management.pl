% -----------------------
% Books
% -----------------------
book(harry_potter_1, jk_rowling, 1997, fantasy).
book(harry_potter_2, jk_rowling, 1998, fantasy).
book(harry_potter_3, jk_rowling, 1999, fantasy).
book(the_hobbit, jrr_tolkien, 1937, fantasy).
book(the_lord_of_the_rings, jrr_tolkien, 1954, fantasy).
book(the_da_vinci_code, dan_brown, 2003, thriller).
book(angels_and_demons, dan_brown, 2000, thriller).
book(digital_fortress, dan_brown, 1998, thriller).
book(the_girl_with_the_dragon_tattoo, stieg_larsson, 2005, mystery).
book(the_girl_who_played_with_fire, stieg_larsson, 2006, mystery).
book(the_girl_who_kicked_the_hornets_nest, stieg_larsson, 2007, mystery).

% -----------------------
% Borrowers
% -----------------------
borrower(john, doe, 12345).
borrower(jane, smith, 67890).
borrower(jack, black, 24680).

% -----------------------
% Borrowed books
% -----------------------
borrowed(harry_potter_1, 12345).
borrowed(the_hobbit, 67890).
borrowed(the_da_vinci_code, 24680).
borrowed(the_girl_with_the_dragon_tattoo, 12345).
borrowed(the_girl_who_played_with_fire, 67890).

% -----------------------
% Simple search helpers
% -----------------------

find_book_by_title(Title, Author, Year, Genre) :-
    book(Title, Author, Year, Genre).

find_book_by_author(Author, Title, Year, Genre) :-
    book(Title, Author, Year, Genre).

find_borrower_by_id(Id, First, Last) :-
    borrower(First, Last, Id).

% -----------------------
% Print all borrowed books
% -----------------------

list_borrowed_books :-
    forall(
        ( borrowed(Book, BorrowerId),
          book(Book, Author, Year, Genre),
          borrower(First, Last, BorrowerId)
        ),
        format(
            'Book: ~w, Author: ~w, Year: ~w, Genre: ~w, Borrower: ~w ~w~n',
            [Book, Author, Year, Genre, First, Last]
        )
    ).