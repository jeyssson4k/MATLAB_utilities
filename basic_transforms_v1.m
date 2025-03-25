% Scripts to compute Laplace and Z transform

clc;
clear;
syms s t n z
assume(n, 'integer')

% Anti-Laplace Transform
X_s = [(s+3)/((s+11)*(s+13))]; % Example
x_t = ilaplace(X_s, s, t);
disp(x_t);

% Anti-Z Transform
X_z = [5*((1/2)^n)+10*((1/4)^n) (1/6)^n]; % Example
x_n = iztrans(X_z, z, n)*heaviside(n);
disp(x_n);

% Transform
T = [3*exp(-12*t)*heaviside(t)+10*exp(-10*t)*heaviside(t)];
N = [5*((1/32)^n)+10*((1/4)^n)  (1/6)^n];
S = laplace(T);
Z = ztrans(N);
disp(S);
disp(Z);
