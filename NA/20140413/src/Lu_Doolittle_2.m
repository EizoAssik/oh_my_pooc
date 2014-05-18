function A = Lu_Doolittle_2(A)
	n = length (A);
	A(2:n, 1)A(2:n, 1)/A(1, 1);
	for k = 2:n
		A(k, k:n) = A(k, k:n) - A(k, 1:k-1)*A(1:k-1, k:n);
		A(k+1:n, k) = (A(k+1:n, k)-A(k+1:n, 1:k-1)*A(1:k-1, k)/A(k, k));
	end
