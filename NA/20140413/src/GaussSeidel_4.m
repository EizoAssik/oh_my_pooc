function [x, k] = GaussSeidle_4(A, b, x0, ep, Nmax)
	n = length(b);
	if nargin < 5
		Nmax = 500;
	end
	if nargin < 4
		ep = 1e-5;
	end
	if nargin < 3
		x0 = zeros(n, 1);
	end
	x0 = sparse(x0);
	b = sparse(b);
	A = sparse(A);
	x = x0;
	x0 = x + 2*ep;
	x0 = sparse(x0);
	k = 0;
	A1 = tril(A);
	iA1 = inv(A1);
	while norm(x0-x, inf) > ep && k < Nmax, k=k+1;
		x0 = x;
		x = -iA1*(A-A1)*x0 + iA1*b;
	end
	x = full(x);
	if k == Nmax
		warning(['已迭代上限次数']);
	end