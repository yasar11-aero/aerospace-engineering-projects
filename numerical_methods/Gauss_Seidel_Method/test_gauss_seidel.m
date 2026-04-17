% Test script for Gauss-Seidel Method

A = [4 -1 0;
     -1 4 -1;
      0 -1 4];

b = [15; 10; 10];

tol = 1e-6;
max_iter = 100;

[x, it] = gauss_seidel_method(A, b, tol, max_iter);

disp('Solution:')
disp(x)

disp(['Iterations: ', num2str(it)])

% Verification
residual = norm(A*x - b);
disp(['Residual norm ||Ax - b||: ', num2str(residual)])
