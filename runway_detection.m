% RUNWAY DETECTION MODULE
% Detects runway edges from an input image using basic image processing.

clear; clc;

% Load runway image
img = imread('runway.jpg');   % Replace with your image file
gray = rgb2gray(img);

% Edge detection
edges = edge(gray, 'canny');

% Hough transform to detect runway lines
[H, T, R] = hough(edges);
P = houghpeaks(H, 5);
lines = houghlines(edges, T, R, P);

figure;
imshow(img); hold on;

for k = 1:length(lines)
    xy = [lines(k).point1; lines(k).point2];
    plot(xy(:,1), xy(:,2), 'LineWidth', 2, 'Color', 'yellow');
end

title('Runway Detection');

