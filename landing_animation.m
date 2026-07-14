% LANDING ANIMATION MODULE
% Simple 3D animation of aircraft descending toward runway.

clear; clc;

% Aircraft path
x = linspace(0, 3000, 200);
y = zeros(size(x));
z = linspace(500, 0, 200);

figure;
plot3(x, y, z, 'LineWidth', 2);
grid on;
xlabel('Forward Distance (m)');
ylabel('Lateral Offset (m)');
zlabel('Altitude (m)');
title('3D Landing Path Animation');
view(3);

for i = 1:length(x)
    plot3(x(1:i), y(1:i), z(1:i), 'r', 'LineWidth', 2);
    pause(0.02);
end

