divisorS(X,Y):-dv(X,1,Y).
dv(X,Y,0):-Y > X/2,!.
dv(X,C,Y):- 0 is X mod C,!,C1 is C+1,dv(X,C1,Y1),Y is Y1+C.
dv(X,C,Y):- C1 is C+1,dv(X,C1,Y).
amicable_num(X,Y):-divisorS(X,Sum1),divisorS(Y,Sum2),Sum1=:=Y,Sum2=:=X.


