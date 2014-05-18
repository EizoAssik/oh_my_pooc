function quad=GLintegration(f) 
% Gauss-Lengendre 求积公式 
%输入f是被积函数的字符表达式 
%输出quad是积分值 
A=[0.9061798,0.5384693,0,-0.5384693,-0.9061798];% A是1XN的Gauss-Lengendre节点坐标 
W=[0.2369239,0.4786286,0.5688889,0.4786286,0.2369239];% W是1XN的Gauss-Lengendre节点对应的权值 
a=-1;  %a和b是函数的积分下限和上限 
b=1; 
N=length(A); 
T=zeros(1,N); 
T=((a+b)/2)+((b-a)/2)*A;  
quad=((b-a)/2)*sum(W.*feval(f,T)); 