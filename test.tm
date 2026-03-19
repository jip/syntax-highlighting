£
  This is a foldable multi-line comment
  check regions overlapping priority: Abc 123 .id *1 #2 'quoted' "text"
  check no parts of speech are detected:
    := => = # < <= > >= <- => + - ! ~ * / // % %% >> >>> << $ : # . , ; ( ) [ ]
  special labels: BUG DEPRECATED FIXME NOTE TEST TODO WARN
  A = B / C $(',' D) / .EMPTY / 'rule inside the comment' ;
£

.MeTa A  £ reserved names are case-insensitive £
.List
.delim(1,2,3)
£ syntax rules £
A = 'foo' £ inline comment £ "bar" ;  £ strings, comment after equation £
A = B $(',' B) / $C ;                 £ grouping, alternation, repetition,
                                        multi-line comment between equations £
A = .chr .dig .hex .id .let .num .oct .sr .empty ;   £ keywords £
A = B :NODE1[0] / C D :NODE2[1] ;                    £ tree nodes £
A = ('bar' / B / @3 / .EMPTY / $C / .dig / .'<=') /  £ stest, comment inside rule £
    (:D / :E[4] / [5] / +'>=' / *) ;                 £ ntest, comment after  rule £
A = <- :F G                      £ backtracking  £
    /  :F G ? -101 ?             £ error code    £
    /  :F G ? Error message ? ;  £ error message £
£ code rules £
ENDING[] => ALLOCVARS[] % #2 % #3 ;  £ labels £
START[-] => 'CALL ' *1 % ;
SRDEF[-,-] => !'BT' OPSTR[*1] ':' % *2 ;
BASICTYPEE['.NUM'] => 'NUM' %
          ['.ID'] => @6 % ;
ETESTT[-,.NUM] => *1 'ERCHK ' *2 %
      [-,.SR] => *1  'ERSTR ' OPSTR[*2] % ;
REST[#4,-,#3] => #3 ':' % *2 #4 ':' % ;  £ labels £
OPT /=> .EMPTY ;
£ symbol table £
ALLOCVARS := '%_' *1 ':' %
             'CELL 0' % ;
£ arithmetic £
STORE[-] => <
  A1<-A2+1 ;  £ assignment £
  OUT[B1] ;   £ function   £
  £ expressions £
  C1=D1 ; C2#D2 ; C3>=  D3 ; C4>  D4 ; C5<=  D5 ; C6<  D6 ;  £ unsigned relation £
                  C3>=/+D3 ; C4>/+D4 ; C5<=/+D5 ; C6</+D6 ;  £   signed relation £
  E1 <- -7 * E2 + ~8 /  E3 - !9 %  +10 ;  £ unsigned division and modulo £
  E1 <- -7 * E2 + ~8 // E3 - !9 %% +10 ;  £   signed division and modulo £
  F1 <- F2 >>  F3 | F4 <<  F5 ;  £ unsigned shifts £
  F1 <- F2 >>> F3 ;              £   signed shift  £
  G1 <- G2 & G3 ^ G4 ;           £ AND and XOR £
> *1 ;
.End
