%% Bisect3: algo_3
function [x_star, index, k] = Bisect3(fun, a, b, ep)
	if nargin < 4
		ep = 1e-5
	end
	fa = feval(fun, a);
	fb = feval(fun, b);
	if fa*fb > 0
		x_star = [fa, fb];
		index = 0;
		k = 0;
		return;
	end
	k = 1;
	while abs(b-a)/2 > ep
		x = (a+b)/2;
		fx = feval(fun, x);
		if fx*fa < 0
			b = x;
			fb = fx;
		else
			a = x;
			fa = fx;
		end
		k = k+1;
	end
	x_star = (a+b)/2;
	index = 1;
