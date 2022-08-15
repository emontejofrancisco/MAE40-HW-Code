%HW1 Exercise 9.12

clear
clc

%a
figure(1)
bode( tf( [0,1],[1,1] ) )
%Proper

%b
figure(2)
bode( tf( [1,-1],[0,1] ) )
%Improper

%c
figure(3)
bode( tf( [1,-1],[1,1] ) )
%Semi-proper

%d
figure(4)
bode( tf( [1,101,100],[0,1,0] ) )
%Improper

%e
figure(5)
bode( tf( [0,1,0],[1,101,100] ) )
%Proper

%f
figure(6)
bode( tf( [0,0,1],[1,1,1] ) )
%Proper
