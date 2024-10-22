sudoku(X):-
    X = [V11, V12, V13, V14,V15,V16,V17,V18,V19,
              V21, V22, V23, V24,V25,V26,V27,V28,V29,
              V31, V32, V33, V34,V35,V36,V37,V38,V39,
              V41, V42, V43, V44,V45,V46,V47,V48,V49,
              V51, V52, V53, V54,V55,V56,V57,V58,V59,
              V61, V62, V63, V64,V65,V66,V67,V68,V69,
              V71, V72, V73, V74,V75,V76,V77,V78,V79,
              V81, V82, V83, V84,V85,V86,V87,V88,V89,
              V91, V92, V93, V94,V95,V96,V97,V98,V99],


    R1 = [V11, V12, V13, V14,V15,V16,V17,V18,V19],
    R2 = [V21, V22, V23, V24,V25,V26,V27,V28,V29],
    R3 = [V31, V32, V33, V34,V35,V36,V37,V38,V39],
    R4 = [V41, V42, V43, V44,V45,V46,V47,V48,V49],
    R5 = [V51, V52, V53, V54,V55,V56,V57,V58,V59],
    R6 = [V61, V62, V63, V64,V65,V66,V67,V68,V69],
    R7 = [V71, V72, V73, V74,V75,V76,V77,V78,V79],
    R8 = [V81, V82, V83, V84,V85,V86,V87,V88,V89],
    R9 = [V91, V92, V93, V94,V95,V96,V97,V98,V99],

    C1 = [V11, V21, V31, V41,V51,V61,V71,V81,V91],
    C2 = [V12, V22, V32, V42,V52,V62,V72,V82,V92],
    C3 = [V13, V23, V33, V43,V53,V63,V73,V83,V93],
    C4 = [V14, V24, V34, V44,V54,V64,V74,V84,V94],
    C5 = [V15, V25, V35, V45,V55,V65,V75,V85,V95],
    C6 = [V16, V26, V36, V46,V56,V66,V76,V86,V96],
    C7 = [V17, V27, V37, V47,V57,V67,V77,V87,V97],
    C8 = [V18, V28, V38, V48,V58,V68,V78,V88,V98],
    C9 = [V19, V29, V39, V49,V59,V69,V79,V89,V99],


    Sq1 = [V11, V12,V13, V21, V22,V23,V31,V32,V33],
    Sq2 = [V14, V15,V16, V24, V25,V26,V34,V35,V36],
    Sq3 = [V17, V18,V19, V27, V28,V29,V37,V38,V39],
    Sq4 = [V41, V42,V43, V51, V52,V53,V61,V62,V63],
    Sq5 = [V44, V45,V46, V54, V55,V56,V64,V65,V66],
    Sq6 = [V47, V48,V49, V57, V58,V59,V67,V68,V69],
    Sq7 = [V71, V72,V73, V81, V82,V83,V91,V92,V93],
    Sq8 = [V74, V75,V76, V84, V85,V86,V94,V95,V96],
    Sq9 = [V77, V78,V79, V87, V88,V89,V97,V98,V99],




    RCS11 = (V11, [R1, C1, Sq1]), RCS12 = (V12, [R1, C2, Sq1]),
    RCS13 = (V13, [R1, C3, Sq1]), RCS14 = (V14, [R1, C4, Sq2]),
    RCS15 = (V15, [R1, C5, Sq2]), RCS16 = (V16, [R1, C6, Sq2]),
    RCS17 = (V17, [R1, C7, Sq3]), RCS18 = (V18, [R1, C8, Sq3]),
    RCS19 = (V19, [R1, C9, Sq3]), RCS21 = (V21, [R2, C1, Sq1]),
    RCS22 = (V22, [R2, C2, Sq1]), RCS23 = (V23, [R2, C3, Sq1]),
    RCS24 = (V24, [R2, C4, Sq2]), RCS25 = (V25, [R2, C5, Sq2]),
    RCS26 = (V26, [R2, C6, Sq2]), RCS27 = (V27, [R2, C7, Sq3]),
    RCS28 = (V28, [R2, C8, Sq3]), RCS29 = (V29, [R2, C9, Sq3]),
    RCS31 = (V31, [R3, C1, Sq1]), RCS32 = (V32, [R3, C2, Sq1]),
    RCS33 = (V33, [R3, C3, Sq1]), RCS34 = (V34, [R3, C4, Sq2]),
    RCS35 = (V35, [R3, C5, Sq2]), RCS36 = (V36, [R3, C6, Sq2]),
    RCS37 = (V37, [R3, C7, Sq3]), RCS38 = (V38, [R3, C8, Sq3]),
    RCS39 = (V39, [R3, C9, Sq3]), RCS41 = (V41, [R4, C1, Sq4]),
    RCS42 = (V42, [R4, C2, Sq4]), RCS43 = (V43, [R4, C3, Sq4]),
    RCS44 = (V44, [R4, C4, Sq5]), RCS45 = (V45, [R4, C5, Sq5]),
    RCS46 = (V46, [R4, C6, Sq5]), RCS47 = (V47, [R4, C7, Sq6]),
    RCS48 = (V48, [R4, C8, Sq6]), RCS49 = (V49, [R4, C9, Sq6]),
    RCS51 = (V51, [R5, C1, Sq4]), RCS52 = (V52, [R5, C2, Sq4]),
    RCS53 = (V53, [R5, C3, Sq4]), RCS54 = (V54, [R5, C4, Sq5]),
    RCS55 = (V55, [R5, C5, Sq5]), RCS56 = (V56, [R5, C6, Sq5]),
    RCS57 = (V57, [R5, C7, Sq6]), RCS58 = (V58, [R5, C8, Sq6]),
    RCS59 = (V59, [R5, C9, Sq6]), RCS61 = (V61, [R6, C1, Sq4]),
    RCS62 = (V62, [R6, C2, Sq4]), RCS63 = (V63, [R6, C3, Sq4]),
    RCS64 = (V64, [R6, C4, Sq5]), RCS65 = (V65, [R6, C5, Sq5]),
    RCS66 = (V66, [R6, C6, Sq5]), RCS67 = (V67, [R6, C7, Sq6]),
    RCS68 = (V68, [R6, C8, Sq6]), RCS69 = (V69, [R6, C9, Sq6]),
    RCS71 = (V71, [R7, C1, Sq7]), RCS72 = (V72, [R7, C2, Sq7]),
    RCS73 = (V73, [R7, C3, Sq7]), RCS74 = (V74, [R7, C4, Sq8]),
    RCS75 = (V75, [R7, C5, Sq8]), RCS76 = (V76, [R7, C6, Sq8]),
    RCS77 = (V77, [R7, C7, Sq9]), RCS78 = (V78, [R7, C8, Sq9]),
    RCS79 = (V79, [R7, C9, Sq9]), RCS81 = (V81, [R8, C1, Sq7]),
    RCS82 = (V82, [R8, C2, Sq7]), RCS83 = (V83, [R8, C3, Sq7]),
    RCS84 = (V84, [R8, C4, Sq8]), RCS85 = (V85, [R8, C5, Sq8]),
    RCS86 = (V86, [R8, C6, Sq8]), RCS87 = (V87, [R8, C7, Sq9]),
    RCS88 = (V88, [R8, C8, Sq9]), RCS89 = (V89, [R8, C9, Sq9]),
    RCS91 = (V91, [R9, C1, Sq7]), RCS92 = (V92, [R9, C2, Sq7]),
    RCS93 = (V93, [R9, C3, Sq7]), RCS94 = (V94, [R9, C4, Sq8]),
    RCS95 = (V95, [R9, C5, Sq8]), RCS96 = (V96, [R9, C6, Sq8]),
    RCS97 = (V97, [R9, C7, Sq9]), RCS98 = (V98, [R9, C8, Sq9]),
    RCS99 = (V99, [R9, C9, Sq9]),




    RCS = [RCS11, RCS12, RCS13, RCS14,RCS15,RCS16,RCS17,RCS18,RCS19,
              RCS21, RCS22, RCS23, RCS24,RCS25,RCS26,RCS27,RCS28,RCS29,
              RCS31, RCS32, RCS33, RCS34,RCS35,RCS36,RCS37,RCS38,RCS39,
              RCS41, RCS42, RCS43, RCS44,RCS45,RCS46,RCS47,RCS48,RCS49,
              RCS51, RCS52, RCS53, RCS54,RCS55,RCS56,RCS57,RCS58,RCS59,
              RCS61, RCS62, RCS63, RCS64,RCS65,RCS66,RCS67,RCS68,RCS69,
              RCS71, RCS72, RCS73, RCS74,RCS75,RCS76,RCS77,RCS78,RCS79,
              RCS81, RCS82, RCS83, RCS84,RCS85,RCS86,RCS87,RCS88,RCS89,
              RCS91, RCS92, RCS93, RCS94,RCS95,RCS96,RCS97,RCS98,RCS99],



    partof(RCS, [1,2,3,4,5,6,7,8,9]),
    write([[V11, V12, V13, V14,V15,V16,V17,V18,V19],
             [V21, V22, V23, V24,V25,V26,V27,V28,V29],
              [V31, V32, V33, V34,V35,V36,V37,V38,V39],
              [V41, V42, V43, V44,V45,V46,V47,V48,V49],
              [V51, V52, V53, V54,V55,V56,V57,V58,V59],
              [V61, V62, V63, V64,V65,V66,V67,V68,V69],
              [V71, V72, V73, V74,V75,V76,V77,V78,V79],
              [V81, V82, V83, V84,V85,V86,V87,V88,V89],
              [V91, V92, V93, V94,V95,V96,V97,V98,V99]]).

partof([], _).
partof([(P,Q) | T], L):-member(P, L),possible(Q),partof(T, L).
possible([]).
possible([X|Y]) :-unique(X),possible(Y),!.
unique([]).
unique([X|Y]):-(var(X); not_member(X,Y)),unique(Y),!.
not_member(_, []).
not_member(X1, [X2|Y]) :-(var(X2); X1 \= X2),not_member(X1, Y).
