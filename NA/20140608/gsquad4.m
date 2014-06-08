function I=gsquad4(func, a, b, N)
h = (b-a)/N;
A = [1/6 5/6 5/6 1/6];
t = [-1 -1/sqrt(5) 1/sqrt(5) 1];
I=sum(arrayfun(@(k) sum(A.*func(h/2*t+a+(k-1/2)*h)), 1:N))*h/2;