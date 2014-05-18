%% nafit: function description
function p = nafit(x, y, m)
	A = zeros(m+1, m+1);
	for i = 0:m
		for j = 0:m
			A(i+1, j+1) = sum(x.^(i+j))
		end
		b(i+1) = sum(x.^i.*y)
	end
	a = a\b';
	p = fliplr(a');

x = [165 123 150 123 141]
y = [187 126 174 125 148]
nafit(x, y, 1)