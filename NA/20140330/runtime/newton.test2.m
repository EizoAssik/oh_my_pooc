fname = inline('x^3 + 2*x + 10*x - 20');
dfname= inline('3*x^2 + 4*x + 10');
[x_star, k] = Newton2(fname, dfname, 1)
