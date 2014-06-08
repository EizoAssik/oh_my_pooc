function [x_arr,y_arr]=eulerway(func, x_start, x_end, y0, h)
x_arr = x_start:h:x_end;
y_arr(1) = y0;
for n=2:length(x_arr)
    y_arr(n) = y_arr(n-1)+h*func(x_arr(n-1), y_arr(n-1));
end
x_arr = x_arr';
y_arr = y_arr';