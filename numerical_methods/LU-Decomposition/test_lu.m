clc;
clear;

A = [4 -2 1;
     20 -7 12;
     -8 13 17];

[L, U, P] = lu_decomposition(A);

disp('Matrix A:');
disp(A);

disp('Permutation Matrix P:');
disp(P);

disp('Lower Triangular Matrix L:');
disp(L);

disp('Upper Triangular Matrix U:');
disp(U);

disp('Verification: P*A');
disp(P*A);

disp('Verification: L*U');
disp(L*U);
