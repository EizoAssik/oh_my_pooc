%% Gauss1: a simple version
function x = Gauss2( A , b )
	A=[A' ; b]';
	n = length(b);
	for k = 1 : n - 1
		s = A(k , k);
		p = k;
		for i=k + 1:n
			if abs(s)<abs(A(i , k))
				s=A(i, k);
				p = i;
			end
		end
		p
		s
		if p ~= k
			for j=k:n + 1
				t=A(k, j);
				A(k, j) = A(p, j);
				A(p, j) = t;
			end
		end
		A
		for i=k + 1:n
			m=A(i, k)/A(k, k);
			fprintf('m%d%d = %f\n', i, k, m);
			for j = k : n + 1
				A(i, j) = A(i, j) - m * A(k, j);
			end
		end
		fprintf('A%d = \n', k + 1);
		A
	end
	A(n,n+1)=A(n,n+1)/A(n, n);
	for i=n-1: - 1:1
		s = 0;
		for j=i + 1:n
			s=s+A(i,j)*A(j,n + 1);
		end
		A(i,n+1)=(A(i,n+1)-s)/A(i , i);
	end
	x=A(:,n + 1);

%% Gauss2: a better version
function x = Gauss2(A, b)
	n = length(b);
	A = [A, b];
	for k = 1:(n - 1)
		[ap, p] = max(abs(A(k:n, k)));
		p = p + k - 1;
		if p > k
			t = A(k, :);
			A(k, :) = A(p, :)
			A(p, :) = t;
		end
	% end
		A((k + 1):n, (k+1):(n + 1)) = A((k + 1):n, (k+1):(n - 1)) - A((k + 1):n, k) / A(k, k) * A(k, (k+1):(n + 1));
		A((k + 1):n, k) = zeros(n - k, 1);
		A
	end
	x = zeros(n, 1);
	x(n) = A(n, n+1)/A(n , n);
	for k=n-1: - 1:1
		x(k) = (A(k, n + 1) - A(k, (k + 1):n) * x((k + 1):n))/A(k, k)
	end
