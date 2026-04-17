clear; 
clc;

A = [4 1;
     2 3];

x0 = [1; 1];
tol = 1e-6;
max_iter = 100;

[lambda, eigenvector] = power_method(A, x0, tol, max_iter);

disp('Dominant Eigenvalue:')
disp(lambda)

disp('Corresponding Eigenvector:')
disp(eigenvector)
