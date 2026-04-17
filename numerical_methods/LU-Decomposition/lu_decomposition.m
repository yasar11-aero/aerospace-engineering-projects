function [L, U, P] = lu_decomposition(A)
% LU_DECOMPOSITION Performs LU factorization with partial pivoting
% 
% Input:
%   A - square matrix (n x n)
%
% Output:
%   L - lower triangular matrix
%   U - upper triangular matrix
%   P - permutation matrix such that P*A = L*U

[n, m] = size(A);

if n ~= m
    error('Matrix must be square.');
end

P = eye(n);
L = eye(n);
U = A;

for k = 1:n-1
    
    % Partial Pivoting
    [~, pivot] = max(abs(U(k:n, k)));
    pivot = pivot + k - 1;
    
    if pivot ~= k
        U([k pivot], :) = U([pivot k], :);
        P([k pivot], :) = P([pivot k], :);
        
        if k > 1
            L([k pivot], 1:k-1) = L([pivot k], 1:k-1);
        end
    end
    
    if abs(U(k,k)) < eps
        error('Matrix is singular or nearly singular.');
    end
    
    for i = k+1:n
        L(i,k) = U(i,k) / U(k,k);
        U(i,:) = U(i,:) - L(i,k) * U(k,:);
    end
    
end
end
