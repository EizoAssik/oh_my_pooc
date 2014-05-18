function p=mmpadd(a,b) 
%MMPADD(A,B) 当两个多项式阶次不同，低阶的多项式必须用首零填补，使其与高阶多项式有同样的阶次 
%返回P为多项式行矢量 
if nargin<2 %在函数体内获得实际输入的变量的个数 
error(' 参数输入不够 ') 
end 
a=a(:).' ;%保证输入的是矢量 
b=b(:).' ; 
na=length(a) ;%得到矢量a和b的长度 
nb=length(b) ; 
p=[zeros(1,nb-na) a]+[zeros(1,na-nb) b] ;%对低阶多项式行矢量添加0以便于高阶矢量相加 