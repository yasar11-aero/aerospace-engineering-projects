function [x, iterations] = gauss_seidel_method(A, b, tol, max_iter)
% GAUSS_SEIDEL_METHOD Solves Ax = b using Gauss-Seidel iterative method
%
% Inputs:
% A         - Coefficient matrix
% b         - Right-hand side vector
% tol       - Convergence tolerance
% max_iter  - Maximum number of iterations
%
% Outputs:
% x         - Solution vector
% iterations- Number of iterations performed

n = length(b);
x = zeros(n,1);   % Initial guess

for k = 1:max_iter
    x_old = x;
    
    for i = 1:n
        sum1 = A(i,1:i-1) * x(1:i-1);
        sum2 = A(i,i+1:n) * x_old(i+1:n);
        
        x(i) = (b(i) - sum1 - sum2) / A(i,i);
    end
    
    if norm(x - x_old, inf) < tol
        iterations = k;
        return;
    end
end

iterations = max_iter;
end
