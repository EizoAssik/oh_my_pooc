function [x, y] = RungeKuttaEuler(func, x_start, x_end, y0, h)
x = x_start:h:x_end;
y(1) = y0;
for n=1:length(x)-1
    k1 = func(x(n), y(n));
    k2 = func(x(n)+h/2, y(n)+h/2*k1);
    k3 = func(x(n)+h/2, y(n)+h/2*k2);
    k4 = func(x(n+1), y(n)+h*k3);
    y(n+1) = y(n) + h*(k1+2*(k2+k3)+k4)/6;
end