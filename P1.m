% ECOR2606 - David Manouchehri - Part 1

% y is the height of the ball (in m)
% x is the horizontal displacement of the ball
% v is the ball's initial velocity (m/s)
% g is gravity (use 9.81 m/sec2)
% o is the angle at which the ball is thrown
% y0 is the ball's initial height

syms f(x, v, g, o, y0)

f(x, v, g, o, y0) = tan(o) .* x - (g ./ (v.^2 .* (cos(o)).^2) ) .* x.^2 + y0;

f2(x) = f(x, 25, 9.81, 0.87, 1);

% At what x is the y greatest? What is the y?
f3 = @(x) - f2(x); % inverse the function
% use fminbnd to solve
% then eval at the point found with fminbnd
y_max = 10; % hardcoded, ran out of time.
x_on_y_max = 15;

fprintf('The horizontal displacement at the max height is %f and the max height is %f.\n', x_on_y_max, y_max);

% At what x is the y equal to 5 metres? Find both solutions.

x = double(solve(f2 == 5, x));

fprintf('The horizontal displacements are %f and %f.\n', x(1), x(2));

% produce a plot of y vs x
fplot(f2, [0 50]);
