person(harvard).
person(jertie).
person(merium).
person(walley).
exchange(be).
exchange(sl).
exchange(al).
exchange(pe).
year(1932).
year(1935).
year(1929).
year(1926).
find:-person(P),exchange(E),year(Y),allowed(P,E,Y),check_others([P],[E],[Y],3),!.

allowed('harvard',Y,Z):-Y\='be'.
allowed(X,'sl',Z):-X\='jertie',X\='harvard'.
allowed(X,'be',Z):-Z\=1935.
allowed(X,Y,1932):-Y\='al'.
allowed(X,Y,1932):-Y\='be'.
allowed(X,'pe',Z):-Z==1929.
allowed(X,'al',Z):-X=='walley'.


check_others(P,E,Y,0):-write(P),nl,write(E),nl,write(Y).
check_others(P,E,Y,C):-person(P1),not_member(P1,P),exchange(E1),not_member(E1,E),year(Y1),not_member(Y1,Y),allowed(P1,E1,Y1),C1 is C-1,check_others([P1|P],[E1|E],[Y1|Y],C1),!.
not_member(X,[]).
not_member(X,[H|T]):-X\=H,not_member(X,T).
