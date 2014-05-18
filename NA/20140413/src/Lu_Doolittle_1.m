function [l, u]  =  Lu_Doolittle_1(A)
	n = length(A);
	l = eye(n);
	u = zeros(n);
	u(1, :) = A(1, :);
	l(2:n, 1)/u(1, 1);
	for	k = 2:n
		u(k, k:n) = A(k, k:n)-l(k, 1:k-1)*u(1:k-1, k:n);
		l(k+1:n, k) = (A(k+1:n, k)-l(k+1:n, 1:k-1)*u(1:k-1)/u(k, k));
	end
