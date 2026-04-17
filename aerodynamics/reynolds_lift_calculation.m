%% Aerodynamic Basic Calculations
% Reynolds Number and Lift Force Estimation

clc;
clear;

%% Input Parameters

rho = 1.225;          % Air density (kg/m^3)
V = 50;               % Velocity (m/s)
L_char = 1.5;         % Characteristic length / chord (m)
mu = 1.81e-5;         % Dynamic viscosity (Pa·s)

S = 10;               % Wing area (m^2)
alpha_deg = 5;        % Angle of attack (degrees)

%% Reynolds Number Calculation

Re = (rho * V * L_char) / mu;

%% Lift Coefficient (Thin Airfoil Theory)

alpha_rad = deg2rad(alpha_deg);
CL = 2 * pi * alpha_rad;

%% Lift Force Calculation

Lift = 0.5 * rho * V^2 * S * CL;

%% Output Results

disp('--- Aerodynamic Results ---')
fprintf('Reynolds Number: %.2e\n', Re);
fprintf('Lift Coefficient (CL): %.4f\n', CL);
fprintf('Lift Force (N): %.2f\n', Lift);
