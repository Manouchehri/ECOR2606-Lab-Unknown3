
% ECOR2606 - David Manouchehri - Lab Quiz - Part 2

function [ ] = P2() % void function

% i
x = findX(1);
fprintf('x1: %f, x2: %f, x3: %f\n', x);

% ii
range = [0 20];
fplot(@findX1, range);

% iii
y_min = fminbnd(@findX1, range(1), range(2));
                        % Odd, doing just range doesn't work.
fprintf('The value of y that minimizes x1 within the given interval is %f\n', y_min);
                        
end

function [ x ] = findX(Y)

A = [ 5-Y -8    2;
      -5   3+Y  3;
      4   3     1+Y;];

b = [2;
     4;
     -1];

x = A\b;

end

function [ x1 ] = findX1(Y)
    x = findX(Y);
    x1 = x(1);
end
