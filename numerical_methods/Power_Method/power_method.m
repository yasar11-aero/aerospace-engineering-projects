function [lambda, x] = power_method(A, x0, tol, max_iter)
% POWER_METHOD computes the dominant eigenvalue and eigenvector of matrix A
%
% Inputs:
% A        -> square matrix
% x0       -> initial guess vector
% tol      -> tolerance for convergence
% max_iter -> maximum number of iterations
%
% Outputs:
% lambda -> dominant eigenvalue
% x      -> corresponding eigenvector

x = x0 / norm(x0);
lambda_old = 0;

for k = 1:max_iter
    
    y = A * x;
    lambda = x' * y;     % Rayleigh quotient
    x = y / norm(y);
    
    if abs(lambda - lambda_old) < tol
        break;
    end
    
    lambda_old = lambda;
end

end
