function [x, iterations] = jacobi_method(A, b, tol, max_iter)
% JACOBI_METHOD Solves Ax = b using the Jacobi iterative method
%
% Inputs:
% A         - Coefficient matrix
% b         - Right-hand side vector
% tol       - Tolerance for convergence
% max_iter  - Maximum number of iterations
%
% Outputs:
% x          - Solution vector
% iterations - Number of iterations performed

n = length(b);
x = zeros(n,1);          % Initial guess
x_old = x;

for k = 1:max_iter
    for i = 1:n
        sum = 0;
        for j = 1:n
            if j ~= i
                sum = sum + A(i,j)*x_old(j);
            end
        end
        x(i) = (b(i) - sum) / A(i,i);
    end
    
    if norm(x - x_old, inf) < tol
        iterations = k;
        return;
    end
    
    x_old = x;
end

iterations = max_iter;
end
