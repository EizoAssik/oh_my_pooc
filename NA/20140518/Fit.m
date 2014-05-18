function s=Fit(h,a,b,n) 
    %  坐标转换
    %% 生成坐标转换的公式(b-a)/2*x+(b+a)/2
    g = poly2sym([eval('(b-a)/2') eval('(b+a)/2')])  
    %% 将被逼近函数的区间[a,b]变换到区间[-1,1]之间
    f=compose(h,g,'x');                           
    A=ones(1,n+1); 
    % 求解拟合系数
    for k=0:1:n                                      
        m=inline(poly2sym(Lengendre(k))*f);        
        A(k+1)=GLintegration(m);                    
    end                                               
    B=A;                                 
    for k=0:1:n        % 数组B中放置得到的拟合系数    
        B(k+1)=((2*k+1)/2)*A(k+1);                 
    end                                              
    % 输出拟合系数
    disp('输出拟合系数如下');                             
    C=num2str(B,5); % num2str把非整数数组B转换为串数组   
    disp(C);                                          
    % 求解逼近函数多项式系数行向量T
    T=B(1)*Lengendre(0);                           
    for k=1:1:n                                    
    T=mmpadd(T,B(k+1)*Lengendre(k));   % mmpadd不同阶矩阵求和函数 
    end                                            
    s=simple(poly2sym(T));                       
    %  坐标转换
    %% 坐标变换公式：t=(2*x-b-a)/(b-a) 
    g=poly2sym([eval('2/(b-a)') eval('-(b+a)/(b-a)')]);
    %% 将区间[-1,1]的逼近函数变换为区间[a,b]上的最佳平方逼近多项式 
    s=expand(compose(s,g,'x'));                        