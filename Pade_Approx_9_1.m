%HW1 Exercise 9.1

clear
clc

d = 0.1;

%% n = 1
s = tf('s');
sys = exp(-d*s);    
sysx1 = pade(sys,1)

n1 = zero(sysx1)
d1 = pole(sysx1)

real_n1 = real(n1);
imag_n1 = imag(n1);

real_d1 = real(d1);
imag_d1 = imag(d1);

figure(1) 
plot(real_n1,imag_n1,'go',real_d1,imag_d1,'bx','LineWidth',1)

%% n = 2
s = tf('s');
sys = exp(-d*s);    
sysx2 = pade(sys,2)

n2 = zero(sysx2)
d2 = pole(sysx2)

real_n2 = real(n2);
imag_n2 = imag(n2);

real_d2 = real(d2);
imag_d2 = imag(d2);

figure(2) 
plot(real_n2,imag_n2,'go',real_d2,imag_d2,'bx','LineWidth',1)

%% n = 4
s = tf('s');
sys = exp(-d*s);    
sysx4 = pade(sys,4)

n4 = zero(sysx4)
d4 = pole(sysx4)

real_n4 = real(n4);
imag_n4 = imag(n4);

real_d4 = real(d4);
imag_d4 = imag(d4);

figure(3) 
plot(real_n4,imag_n4,'go',real_d4,imag_d4,'bx','LineWidth',1)


%% n = 8
s = tf('s');
sys = exp(-d*s);    
sysx8 = pade(sys,8)

n8 = zero(sysx8)
d8 = pole(sysx8)

real_n8 = real(n8);
imag_n8 = imag(n8);

real_d8 = real(d8);
imag_d8 = imag(d8);

figure(4) 
plot(real_n8,imag_n8,'go',real_d8,imag_d8,'bx','LineWidth',1)
