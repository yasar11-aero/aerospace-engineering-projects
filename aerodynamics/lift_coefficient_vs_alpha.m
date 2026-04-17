%% Lift Coefficient vs Angle of Attack
% Thin Airfoil Theory Visualization
% Valid for small angles of attack (linear region before stall)

clc;
clear;

%% Angle of Attack Range

alpha_deg = -5:1:15;                 % Angle of attack range (degrees)
alpha_rad = deg2rad(alpha_deg);      % Convert to radians

%% Lift Coefficient Calculation (Thin Airfoil Theory)

CL = 2 * pi * alpha_rad;             % Valid for small angles (linear approximation)

%% Plotting

figure;
plot(alpha_deg, CL, 'LineWidth', 2);
grid on;

xlabel('Angle of Attack (deg)');
ylabel('Lift Coefficient (C_L)');
title('Lift Coefficient vs Angle of Attack (Thin Airfoil Theory)');

xlim([-5 15]);
