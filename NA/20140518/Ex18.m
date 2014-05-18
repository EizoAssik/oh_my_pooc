%% nafit: function description
function p = nafit(x, y, m)
	A = zeros(m+1, m+1);
	for i = 0:m
		for j = 0:m
			A(i+1, j+1) = sum(x.^(i+j));
		end
		b(i+1) = sum(x.^i.*y);
	end
	a = A\b';
	p = fliplr(a');

x = [-1 -0.5 0 0.5 1];
y = [-0.22 0.88 2.00 3.13 4.28];
a1 = polyfit(x, y, 1)
a2 = polyfit(x, y, 2)
