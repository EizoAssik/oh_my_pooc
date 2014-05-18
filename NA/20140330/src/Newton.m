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


%% Newton2: a better version
function [x_star, k] = Newton2(fun, x, ep, Nmax)
	if nargin < 4
		Nmax = 500;
	end
	if nargin < 3
		ep = 1e-5;
	end
	index = 0;
	k = 1;
	while k < Nmax
		x1 = x;
		f = feval(fun, x);
		if abs(f(2)) < ep
			break;
		end
		x = x - f(1) / f(2);
		if abs(x - x1) < ep
			index = 1;
			break;
		end
		k = k + 1;
	end
	x_star = x;
	if k == Nmax
		warning(['到达迭代上限']);
	end


fname = inline('x^3+2*x^2+10*x-20');
fname = inline('x^3+2*x^2+10*x-20');
Newton1(fname, dfname,1)