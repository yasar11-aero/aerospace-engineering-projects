function x = gaussian_elimination(A, b)
% GAUSSIAN_ELIMINATION Solves Ax = b using classical Gaussian Elimination
% without pivoting.
%
% Inputs:
%   A - Coefficient matrix (n x n)
%   b - Right-hand side column vector (n x 1)
%
% Output:
%   x - Solution vector (n x 1)

[n, m] = size(A);

if n ~= m
    error('Matrix A must be square.');
end

if length(b) ~= n
    error('Dimension mismatch between A and b.');
end

Aug = [A b];

% Forward Elimination
for k = 1:n-1
    for i = k+1:n
        factor = Aug(i,k) / Aug(k,k);
        Aug(i,k:end) = Aug(i,k:end) - factor * Aug(k,k:end);
    end
end

% Back Substitution
x = zeros(n,1);

for i = n:-1:1
    x(i) = (Aug(i,end) - Aug(i,i+1:n)*x(i+1:n)) / Aug(i,i);
end

end
