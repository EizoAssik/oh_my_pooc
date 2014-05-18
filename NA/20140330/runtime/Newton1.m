%% Newton1: simple version
function [x_star, k] = Newton1(fname, dfname, x0, ep, Nmax)
	if nargin < 5
		Nmax = 500;
	end
	if nargin < 4
		ep = 1e-5;
	end
	x = x0;
	x0 = x+2*ep;
	k=0;
	while abs(x0-x) > ep && k < Nmax
		k = k+1;
		x0 = x;
		x = x0 - feval(fname, x0) / feval(dfname, x0);
	end
	x_star = x;
	if k == Nmax
		warning(['到达迭代上限']);
	end


fname = inline('x^3+2*x^2+10*x-20');
fname = inline('x^3+2*x^2+10*x-20');
Newton1(fname, dfname,1)
