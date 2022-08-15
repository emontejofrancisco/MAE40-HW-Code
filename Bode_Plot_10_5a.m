%HW1 Exercise 10.5a

clear
clc

RC = .5
LC = 1

%derived equation: 1/(RC*s+LC*s^2+1)
%Plug in: 1/(.5*s+s^2+1)
%a
figure(1)
bode( tf( [0,0,1],[1,.5,1] ) )


F_cutoff = 1/(2*pi*RC)

%2*zeta*sqrt(1) = 0.5
%zeta = 0.5 / 2*sqrt(1)
%zeta = 0.25
dampning = 0.25