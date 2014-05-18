function [y,x] = LU_s(A, b)
	b = b';
	A = [A';b]',n = length(b')'
	y = zeros(n,1);
	x = zeros(n,1);
	U = zeros(n);
	L = eye(n);
	for	 k = 1:n
		 U(1,k) = A(1,k);
		 L(k,1) = A(k,1)/U(1,1);
	end
	for i = 2:n
		for k = i:n
			lu = 0;
			lu1 = 0;
			for j=1 : i-1
				lu = lu + L(i,j)*U(j,k);
				lu1 = lu1 + L(k,j)*U(j,i);
			end
			U(i,k) = A(i,j) -lu;
			L(k,i) =(A(k,i) - lu1)/U(i,i);
		end
	end
	L
	U
	for i = 1:n
		ly = 0;
		for j = 1:i
			ly = ly + L(i,j)*y(j);
		end
		y(i) = b(i)-ly;
	end
	for i = n:-1:1
		ly1 =0;
		for j = i+1 : n
			ly1 = ly1 + U(i,j)*x(j);
		end
		x(i)=(y(i)-ly1)/U(i,i);
	end

