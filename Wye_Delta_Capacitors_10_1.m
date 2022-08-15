% script Wye_Delta_Capacitors
% Computes the Wye Delta transformation with capacitors

syms C1 C2 C3 C4 C5 Ca Cb Cc

eqn1 = C1 + 1/(1/C2 + 1/C3) == 1/(1/Ca + 1/Cb)

eqn2 = C2 + 1/(1/C1 + 1/C3) == 1/(1/Ca + 1/Cc)

eqn3 = C3 + 1/(1/C1 + 1/C2) == 1/(1/Cb + 1/Cc)

%Resistance of each resistor (3 eqn to solve 3 unknowns of chosen capacitors)
A=solve(eqn1,eqn2,eqn3,Ca,Cb,Cc);
B=solve(eqn1,eqn2,eqn3,C1,C2,C3);


%Capacitance of Ca,Cb, and Cc
Ca=simplify(A.Ca),Cb=simplify(A.Cb),Cc=simplify(A.Cc)

%Resistance of R1,R2, and R3
C1=simplify(B.C1),C2=simplify(B.C2),C3=simplify(B.C3)

%Capacitance of entire circuit
ctot = simplify(  1/ ( 1/Ca + 1/( 1/(1/Cb+1/C4) + 1/(1/Cc+1/C5) ) )  )

