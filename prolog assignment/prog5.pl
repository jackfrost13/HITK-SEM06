is_letter(X):-char_type(X,alpha).
letter_or_digit(X) :- char_type(X,alpha),!.
letter_or_digit(X) :- char_type(X,digit).
identifier([H|T]):-is_letter(H),rest(T).
rest([]).
rest([H|T]):-H='_',next(T),!;letter_or_digit(H),rest(T),!.
next([H|T]):-letter_or_digit(H),rest(T).
check_ada(X):-string_chars(X,I),identifier(I).
