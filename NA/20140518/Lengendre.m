function L=Lengendre(i) 
% 勒让德多项式的产生. 
% 输入i是输入的第几项项数数值 
% 输出勒让德多项式的第t项的多项式系数行向量. 
if i==0  %P0(X)=1 返回行向量为[1] 
    L=[1];   return; 
elseif i==1 %p1(X)=X 返回行向量为[1 0] 
    L=[1 0];    return;     
else       %Pn+1由前两项递推而来  
     p0=[1];     p1=[1 0]; 
    temp=[1 0]; 
       for k=1:1:i-1 
          p2= mmpadd((2*k+1)/(k+1)*conv(p1,temp),-k/(k+1)*p0); 
          p0=p1;     p1=p2; 
    end 
end 
L=p2; 