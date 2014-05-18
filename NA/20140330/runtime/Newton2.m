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
