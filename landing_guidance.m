% LANDING GUIDANCE MODULE
% Computes glide slope and localizer corrections.

clear; clc;

% Desired glide slope angle (3 degrees typical)
desired_glide_slope = 3;

% Aircraft altitude profile (example values)
altitude = linspace(1000, 0, 50);   % from 1000 ft to ground
distance = linspace(0, 3000, 50);   % distance to runway threshold

% Compute actual slope
actual_slope = atand(altitude ./ distance);

% Error between desired and actual
slope_error = desired_glide_slope - actual_slope;

figure;
plot(distance, slope_error, 'LineWidth', 2);
xlabel('Distance to Runway (m)');
ylabel('Glide Slope Error (deg)');
title('Glide Slope Guidance');
grid on;

