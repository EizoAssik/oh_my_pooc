<TeXmacs|1.0.7.21>

<style|<tuple|article|chinese>>

<\body>
  <\hide-preamble>
    <assign|ud|<macro|1|<math-up|d> <arg|1>>>
  </hide-preamble>

  <section*|7.1 \<#7528\>\<#68AF\>\<#5F62\>\<#516C\>\<#5F0F\>\<#548C\>Simspon\<#516C\>\<#5F0F\>\<#6C42\>\<#4E0B\>\<#5217\>\<#79EF\>\<#5206\>>

  <subsection*|(2).<math|<big|int><rsub|0><rsup|1><frac|<around|(|1-e<rsup|-x>|)><rsup|<frac|1|2>>|x>*d*x,n=10>>

  \<#89E3\>:

  \<#7531\>\<#590D\>\<#5408\>\<#68AF\>\<#5F62\>\<#79EF\>\<#5206\>\<#516C\>\<#5F0F\>

  <\equation*>
    <big|int><rsub|a><rsup|b>f<around|(|x|)>*d*x\<approx\><frac|h|2>(f<around|(|x<rsub|0>|)>+f<around|(|x<rsub|n>|)>+2*<big|sum><rsub|k=0><rsup|n-1>f<around|(|x<rsub|k>|)>
  </equation*>

  \<#5176\>\<#4E2D\>

  <\equation*>
    h=<frac|b-a|n>
  </equation*>

  \<#590D\>\<#5408\>Simpson\<#79EF\>\<#5206\>\<#516C\>\<#5F0F\>

  <\equation*>
    <big|int><rsub|a><rsup|b>f<around|(|x|)>*d*x\<approx\><frac|h|3>*<around|(|f<around|(|x<rsub|0>|)>+f<around|(|x<rsub|2*n>|)>+4*<big|sum><rsub|k=0><rsup|n-1>f<around|(|x<rsub|2*k+1>|)>+2*<big|sum><rsub|k=0><rsup|n-1>f<around|(|x<rsub|2*k>|)>|)>
  </equation*>

  \<#5F97\>\<#8BE5\>\<#5F0F\>\<#7684\>\<#68AF\>\<#5F62\>\<#516C\>\<#5F0F\>

  <\equation*>
    <big|int><rsub|0><rsup|1><frac|<around|(|1-e<rsup|-x>|)><rsup|<frac|1|2>>|x>*d*x\<approx\>1.3915
  </equation*>

  Simpson\<#516C\>\<#5F0F\>

  <\equation*>
    <big|int><rsub|0><rsup|1><frac|<around|(|1-e<rsup|-x>|)><rsup|<frac|1|2>>|x>*d*x\<approx\>1.5709
  </equation*>

  <\algorithm>
    function [ I ] = tquad( x,y )

    \ \ \ \ \ \ \ \ n=length(x);

    \ \ \ \ \ \ \ \ m=length(y);

    \ \ \ \ \ \ \ \ if n ~= m

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ error('123');

    \ \ \ \ \ \ \ \ end

    \ \ \ \ \ \ \ \ h = (x(n)-x(1))/(n-1);

    \ \ \ \ \ \ \ \ a = [1 2*ones(1,n-2) 1]

    \ \ \ \ \ \ \ \ I = h/2*sum(a.*y);

    end

    \;

    x = 0:0.1:1

    y = arrayfun(@(v) (1-exp(-v))^(1/2)/v, x)

    tquad(x,y)
  </algorithm>

  <\algorithm>
    function [ I ] = squad( x,y )

    \ \ \ \ n = length(x);

    \ \ \ \ m = length(y);

    \ \ \ \ if n~=m error('123');end

    \ \ \ \ \ \ \ \ if rem(n-1,2)~=0

    \ \ \ \ \ \ \ \ \ \ \ \ I=tuqad(x,y);

    \ \ \ \ \ \ \ \ \ \ \ \ return ;

    \ \ \ \ \ \ \ \ end

    \ \ \ \ \ \ \ \ N=(n-1)/2

    \ \ \ \ \ \ \ \ h=(x(n)-x(1))/N

    \ \ \ \ \ \ \ \ a=zeros(1,n);

    \ \ \ \ \ \ \ \ for k=1:N

    \ \ \ \ \ \ \ \ \ \ \ \ a(2*k-1)=a(2*k-1)+1;

    \ \ \ \ \ \ \ \ \ \ \ \ a(2*k)=a(2*k)+4;

    \ \ \ \ \ \ \ \ \ \ \ \ a(2*k+1)=a(2*k+1)+1;

    \ \ \ \ \ \ \ \ end

    \ \ \ \ \ \ \ \ I=h/6*sum(a.*y);

    \ \ \ \ end

    \;

    \;

    x = 0:0.05:1

    y = arrayfun(@(v) (1-exp(-v))^(1/2)/v, x)

    tquad(x, y)
  </algorithm>

  <section*|7.2.\<#7528\>\<#590D\>\<#5408\>\<#68AF\>\<#5F62\>\<#516C\>\<#5F0F\>\<#548C\>Simspon\<#516C\>\<#5F0F\>\<#6C42\>\<#4E0B\>\<#5217\>\<#79EF\>\<#5206\>>

  <subsection*|(2).<math|<big|int><rsub|1><rsup|2><frac|x|l*n*<around|(|1+x|)>>*d*x,n=6>>

  \<#68AF\>\<#5F62\>\<#516C\>\<#5F0F\>

  <\equation*>
    <big|int><rsub|1><rsup|2><frac|x|l*n*<around|(|1+x|)>>*d*x\<approx\>1.6351
  </equation*>

  Simpson\<#516C\>\<#5F0F\>

  <\equation*>
    <big|int><rsub|1><rsup|2><frac|x|l*n*<around|(|1+x|)>>*d*x\<approx\>1.6352
  </equation*>

  Matlab\<#4EE3\>\<#7801\>

  <tabbed|<tformat|<table|<row|<\cell>
    % \<#6C42\>\<#89E3\>7.2.2

    x = 1:1/6:2

    y = arrayfun(@(v) v/log(1+v), x)

    tquad(x, y)
  </cell>>>>>

  <section*|7.4.\<#7528\>Romberg\<#65B9\>\<#6CD5\>\<#6C42\>\<#79EF\>,\<#4F7F\>\<#5F97\>\<#8BEF\>\<#5DEE\>\<#4E0D\>\<#8D85\>\<#8FC7\><math|10<rsup|-5>>>

  <subsection*|(1)<math|<frac|2|\<pi\>>*<big|int><rsub|0><rsup|1>e<rsup|-x<rsup|2>>*d*x>>

  <\equation*>
    <frac|2|\<pi\>>*<big|int><rsub|0><rsup|1>e<rsup|-x<rsup|2>>*d*x=0.843
  </equation*>

  Matlab\<#4EE3\>\<#7801\>

  <subsection*|(3)<math|<big|int><rsub|0><rsup|3>x*<sqrt|1+x<rsup|2>>*d*x>>

  <\equation*>
    <big|int><rsub|0><rsup|3>x*<sqrt|1+x<rsup|2>>*d*x=0.6095
  </equation*>

  Matlab\<#4EE3\>\<#7801\>

  <\algorithm>
    function [ t ] = romberg(fname, a, b, ep)

    \ \ \ \ if nargin \<less\> 4,ep=1e-5;end

    \ \ \ \ \ \ \ \ i=1; j=1;h=b-a;

    \ \ \ \ \ \ \ \ T(i,1)=h/2*(feval(fname,a)+feval(fname,b));

    \ \ \ \ \ \ \ \ T(i+1,1)=T(i,1)/2+sum(feval(fname,a+h/2:b-h/2+0.001*h))*h/2;

    \ \ \ \ \ \ \ \ T(i+1,j+1)=4^j*T(i+1,j)/(4^j-1)-T(i,j)/(4^j-1);

    \ \ \ \ \ \ \ \ while abs(T(i+1,i+1)-T(i,i)) \<less\> ep

    \ \ \ \ \ \ \ \ \ \ \ \ i=i+1;

    \ \ \ \ \ \ \ \ \ \ \ \ h=h/2;

    \ \ \ \ \ \ \ \ \ \ \ \ T(i+1,1)=T(i,1)/2+sum(feval(fname,a+h/2:h:b-h/2+0.001*h))*h/2;

    \ \ \ \ \ \ \ \ \ \ \ \ for j=1:i

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ T(i+1,j+1)=4^j*T(i+1,j)/(4^j-1)-T(i,j)/(4^j-1);

    \ \ \ \ \ \ \ \ \ \ \ \ end

    \ \ \ \ \ \ \ \ end

    \ \ \ \ \ \ \ \ t=T(i+1,j+1)

    \ \ \ \ end

    \;

    T = romberg(@(x) 2/sqrt(pi)*exp(-x.^2), 1, 0, 1e-5)

    \;
  <|algorithm>
    ep

    \ \ \ \ \ \ \ \ \ \ \ \ i=i+1;

    \ \ \ \ \ \ \ \ \ \ \ \ h=h/2;

    \ \ \ \ \ \ \ \ \ \ \ \ T(i+1,1)=T(i,1)/2+sum(feval(fname,a+h/2:h:b-h/2+0.001*h))*h/2;

    \ \ \ \ \ \ \ \ \ \ \ \ for j=1:i

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ T(i+1,j+1)=4^j*T(i+1,j)/(4^j-1)-T(i,j)/(4^j-1);

    \ \ \ \ \ \ \ \ \ \ \ \ end

    \ \ \ \ \ \ \ \ end

    \ \ \ \ \ \ \ \ t=T(i+1,j+1)

    \ \ \ \ end

    T = romberg(@(x) 2/sqrt(pi)*exp(-x.^2), 1, 0, 1e-5)
  </algorithm>

  <section*|7.5.\<#6C42\>\<#79EF\>\<#5206\><math|<big|int><rsub|0><rsup|1><frac|1|x>*d*x>,\<#5206\>\<#522B\>\<#7528\>\<#4E0B\>\<#5217\>\<#65B9\>\<#6CD5\>>

  <subsection*|(1)\<#590D\>\<#5408\>\<#68AF\>\<#5F62\>\<#516C\>\<#5F0F\>,n=16>

  <\equation*>
    <big|int><rsub|0><rsup|1><frac|1|x>*d*x=3.3495
  </equation*>

  <subsection*|(2)Simpson\<#516C\>\<#5F0F\>,n=4>

  <\equation*>
    <big|int><rsub|0><rsup|1><frac|1|x>*d*x=2.8877
  </equation*>

  <subsection*|(3)Romberg\<#7B97\>\<#6CD5\>>

  <\equation*>
    <big|int><rsub|0><rsup|1><frac|1|x>*d*x=0.6095
  </equation*>

  <tabbed|<tformat|<table|<row|<\cell>
    \;

    % 7.5.1

    x = 0:1/16:1

    y = arrayfun(@(v) 1/v, x)

    tquad(x,y)

    \;

    % 7.5.2

    x = 0:1/8:1\ 

    y = arrayfun(@(v) 1/v, x)

    squad(x,y)

    \;

    %7.5.3

    romberg(@(x) 1./x, 1,0,1e-5)
  </cell>>>>>

  <section*|7.6.\<#7528\>Gauss\<#578B\>\<#6C42\>\<#79EF\>\<#516C\>\<#5F0F\>\<#6C42\><math|<big|int><rsub|-1><rsup|1><frac|x<rsup|2>|<sqrt|1-x<rsup|2>>>*d*x>>

  <\equation*>
    <big|int><rsub|-1><rsup|1><frac|x<rsup|2>|<sqrt|1-x<rsup|2>>>*d*x=-1.0541
  </equation*>

  <\algorithm>
    function [ G ] = TGauss( f,a,b )

    \ \ \ \ x1=(a+b)/2-sqrt(3/5)*(b-a)/2;

    \ \ \ \ x2=(a+b)/2+sqrt(3/5)*(b-a)/2;

    \ \ \ \ G=(b-a)*(5*feval(f,x1)/9+8*feval(f,(a+b)/2)/9+5*feval(f,x2)/9)/2;

    end

    \;

    G=TGauss( @(x) x.^2/sqrt(1-x.^2), 1, -1)
  </algorithm>

  <section*|7.7\<#63A8\>\<#5BFC\>\<#4E0B\>\<#5217\>\<#4E09\>\<#79CD\>\<#77E9\>\<#5F62\>\<#516C\>\<#5F0F\>>

  <subsection*|(1)<math|<big|int><rsub|a><rsup|b>f<around|(|x|)>=<around|(|b-a|)>*f<around|(|a|)>+<frac|f<rprime|'><around|(|\<eta\>|)>|2>*<around|(|b-a|)><rsup|2>>>

  \<#79EF\>\<#5206\><math|<big|int><rsub|a><rsup|b>f<around|(|x|)>*d*x>\<#7684\>\<#503C\>\<#53EF\>\<#4EE5\>\<#770B\>\<#505A\>\<#51FD\>\<#6570\><math|f<around|(|x|)>>\<#66F2\>\<#7EBF\>\<#4E0B\>\<#65B9\>\<#7684\>\<#9762\>\<#79EF\><next-line>

  <\equation*>
    S=<big|int><rsub|a><rsup|b>f<around|(|x|)>*d*x
  </equation*>

  \<#5BF9\>\<#4E8E\>\<#5E95\>\<#4E3A\>a\<#5230\>b\<#7684\>\<#7EBF\>\<#6BB5\>,\<#9AD8\>\<#4E3A\><math|f<around|(|a|)>>\<#7684\>\<#77E9\>\<#5F62\>,\<#5176\>\<#9762\>\<#79EF\>\<#4E3A\>

  <\equation*>
    S<rsub|r*e*c*t>=<around|(|b-a|)>*f<around|(|a|)>
  </equation*>

  \<#5BF9\>\<#4E8E\>\<#77E9\>\<#5F62\>\<#4E0A\>\<#8FB9\>\<#81F3\>\<#51FD\>\<#6570\>\<#66F2\>\<#7EBF\>\<#7684\>\<#533A\>\<#57DF\>,\<#5219\>\<#8FD1\>\<#4F3C\>\<#89C6\>\<#4E3A\>\<#4E09\>\<#89D2\>\<#5F62\>,\<#5176\>\<#9762\>\<#79EF\>\<#4E3A\>

  <\equation*>
    S<rsub|t*r*a*n>=<frac|1|2>*<around|(|b-a|)>*f<rprime|'><around|(|\<eta\>|)>*<around|(|b-a|)>
  </equation*>

  \<#7EFC\>\<#4E0A\>,\<#5F97\>

  <\equation*>
    S=S<rsub|t*r*a*n>+S<rsub|r*e*c*t>
  </equation*>

  \<#5373\>

  <\equation*>
    <big|int><rsub|a><rsup|b>f<around|(|x|)>=<around|(|b-a|)>*f<around|(|a|)>+<frac|f<rprime|'><around|(|\<eta\>|)>|2>*<around|(|b-a|)><rsup|2>
  </equation*>

  <subsection*|(2)<math|<big|int><rsub|a><rsup|b>f<around|(|x|)>=<around|(|b-a|)>*f<around|(|b|)>-<frac|f<rprime|'><around|(|\<eta\>|)>|2>*<around|(|b-a|)><rsup|2>>>

  \<#79EF\>\<#5206\><math|<big|int><rsub|a><rsup|b>f<around|(|x|)>*d*x>\<#7684\>\<#503C\>\<#53EF\>\<#4EE5\>\<#770B\>\<#505A\>\<#51FD\>\<#6570\><math|f<around|(|x|)>>\<#66F2\>\<#7EBF\>\<#4E0B\>\<#65B9\>\<#7684\>\<#9762\>\<#79EF\><next-line>

  <\equation*>
    S=<big|int><rsub|a><rsup|b>f<around|(|x|)>*d*x
  </equation*>

  \<#5BF9\>\<#4E8E\>\<#5E95\>\<#4E3A\>a\<#5230\>b\<#7684\>\<#7EBF\>\<#6BB5\>,\<#9AD8\>\<#4E3A\><math|f<around|(|b|)>>\<#7684\>\<#77E9\>\<#5F62\>,\<#5176\>\<#9762\>\<#79EF\>\<#4E3A\>

  <\equation*>
    S<rsub|r*e*c*t>=<around|(|b-a|)>*f<around|(|b|)>
  </equation*>

  \<#5BF9\>\<#4E8E\>\<#77E9\>\<#5F62\>\<#4E0A\>\<#8FB9\>\<#81F3\>\<#51FD\>\<#6570\>\<#66F2\>\<#7EBF\>\<#7684\>\<#533A\>\<#57DF\>,\<#5219\>\<#8FD1\>\<#4F3C\>\<#89C6\>\<#4E3A\>\<#4E09\>\<#89D2\>\<#5F62\>,\<#5176\>\<#9762\>\<#79EF\>\<#4E3A\>

  <\equation*>
    S<rsub|t*r*a*n>=<frac|1|2>*<around|(|b-a|)>*f<rprime|'><around|(|\<eta\>|)>*<around|(|b-a|)>
  </equation*>

  \<#7EFC\>\<#4E0A\>,\<#5F97\>

  <\equation*>
    S=S<rsub|t*r*a*n>-S<rsub|r*e*c*t>
  </equation*>

  \<#5373\>

  <\equation*>
    <big|int><rsub|a><rsup|b>f<around|(|x|)>=<around|(|b-a|)>*f<around|(|b|)>-<frac|f<rprime|'><around|(|\<eta\>|)>|2>*<around|(|b-a|)><rsup|2>
  </equation*>

  <section*|7.11 \<#6784\>\<#9020\>Gauss\<#578B\>\<#6C42\>\<#79EF\>\<#516C\>\<#5F0F\>>

  <\equation*>
    <big|int><rsub|-1><rsup|1>f<around|(|x|)><ud|x>\<approx\>A<rsub|0>*f<around|(|x<rsub|0>|)>+A<rsub|1>*f<around|(|x<rsub|1>|)>+A<rsub|2>*f<around|(|x<rsub|2>|)>
  </equation*>

  \<#5E76\>\<#7531\>\<#6B64\>\<#8BA1\>\<#7B97\>\<#79EF\>\<#5206\>

  <\equation*>
    <big|int><rsub|0><rsup|1><frac|<sqrt|x>|<around|(|1+x|)><rsup|2>><ud|x>
  </equation*>

  \<#89E3\>:<next-line>

  \<#6309\>\<#7167\>\<#4E66\><math|P<rsub|261>>,
  \<#516C\>\<#5F0F\>7.56\<#6784\>\<#9020\>\<#6C42\>\<#79EF\>\<#516C\>\<#5F0F\>\<#5982\>\<#4E0B\>

  <\equation*>
    <big|int><rsub|-1><rsup|1>f<around|(|x|)><ud|x>\<approx\><frac|5|9>*f(-<frac|<sqrt|15>|5>)+<frac|8|9>*f<around|(|0|)>+<frac|5|9>*f<around|(|<frac|<sqrt|15>|5>|)>
  </equation*>

  \<#5176\>\<#4E2D\>,

  <\equation*>
    f<around|(|x|)>=<frac|<sqrt|x>|<around|(|1+x|)><rsup|2>>
  </equation*>

  \<#4F5C\>\<#53D8\>\<#91CF\>\<#5E26\>\<#6362\>, \<#6709\>

  <align*|<tformat|<table|<row|<cell|I>|<cell|=<big|int><rsub|0><rsup|1><frac|<sqrt|x>|<around|(|1+x|)><rsup|2>><ud|x>>>|<row|<cell|>|<cell|=<sqrt|2>*<big|int><rsub|-1><rsup|1><frac|<sqrt|1+t>|<around|(|3+t|)><rsup|2>><ud|t>>>|<row|<cell|>|<cell|=<sqrt|2>*<around*|(|<frac|8*<sqrt|<frac|<sqrt|3>|<sqrt|5>>+1>|9*<around*|(|<frac|<sqrt|3>|<sqrt|5>>+3|)><rsup|2>>+<frac|5*<sqrt|1-<frac|<sqrt|3>|<sqrt|5>>>|9*<around*|(|3-<frac|<sqrt|3>|<sqrt|5>>|)><rsup|2>>+<frac|8|81>|)>>>|<row|<cell|>|<cell|\<approx\>0.33253>>>>>

  <section*|7.12 \<#6784\>\<#9020\>Gauss\<#578B\>\<#6C42\>\<#79EF\>\<#516C\>\<#5F0F\>>

  <\equation*>
    <big|int><rsub|-1><rsup|1>f<around|(|x|)><ud|x>\<approx\>A<rsub|0>*f<around|(|x<rsub|0>|)>+A<rsub|1>*f<around|(|x<rsub|1>|)>
  </equation*>

  \<#5E76\>\<#7531\>\<#6B64\>\<#8BA1\>\<#7B97\>\<#79EF\>\<#5206\>

  <\equation*>
    <big|int><rsub|0><rsup|1><sqrt|1+2*x><ud|x>
  </equation*>

  \<#89E3\>:<next-line>

  \<#6309\>\<#7167\>\<#4E66\><math|P<rsub|261>>,
  \<#516C\>\<#5F0F\>7.55\<#6784\>\<#9020\>\<#6C42\>\<#79EF\>\<#516C\>\<#5F0F\>\<#5982\>\<#4E0B\>

  <\equation*>
    <big|int><rsub|-1><rsup|1>f<around|(|x|)><ud|x>\<approx\>f(-<frac|1|<sqrt|3>>)+f<around|(|<frac|1|<sqrt|3>>|)>
  </equation*>

  \<#5176\>\<#4E2D\>

  <\equation*>
    f<around|(|x|)>=<sqrt|1+2*x>
  </equation*>

  \<#4F5C\>\<#53D8\>\<#91CF\>\<#4EE3\>\<#6362\>, \<#6709\>

  <align*|<tformat|<table|<row|<cell|<big|int><rsub|0><rsup|1>f<around|(|x|)><ud|(>x)>|<cell|=<big|int><rsub|-1><rsup|1>f<around|(|<frac|1+t|2>|)><ud|<frac|1+t|2>>>>|<row|<cell|>|<cell|=<frac|1|2>*<big|int><rsub|-1><rsup|1><sqrt|2+t><ud|t>>>|<row|<cell|>|<cell|=<frac|1|2>*<around|(|<sqrt|2-<frac|1|<sqrt|3>>>+<sqrt|2+<frac|1|<sqrt|3>>>|)>>>|<row|<cell|>|<cell|\<approx\>1.3987>>>>>

  <section*|8.1>

  <big-table|<block*|<tformat|<cwith|1|2|1|4|cell-halign|C.>|<table|<row|<cell|x>|<cell|1.0>|<cell|2.0>|<cell|3.0>>|<row|<cell|f(x)>|<cell|0.2500>|<cell|0.2268>|<cell|0.20667>>>>>|>

  \<#6784\>\<#9020\>\<#4E8C\>\<#6B21\>\<#63D2\>\<#503C\>\<#591A\>\<#9879\>\<#5F0F\><math|P<rsub|2><around|(|x|)>>\<#4F5C\>\<#4E3A\><math|f<around|(|x|)>>\<#7684\>\<#8FD1\>\<#4F3C\>

  <\equation*>
    P<rsub|2><around|(|x|)>=<frac|<around|(|x-x<rsub|1>|)>*<around|(|x-x<rsub|2>|)>|2*h<rsup|2>>*f<around|(|x<rsub|0>|)>-<frac|<around|(|x-x<rsub|0>|)>*<around|(|x-x<rsub|2>|)>|h<rsup|2>>+<frac|<around|(|x-x<rsub|0>|)>*<around|(|x-x<rsub|1>|)>|2*h<rsup|2>>
  </equation*>

  \<#4EE3\>\<#5165\>\<#8868\>\<#683C\>\<#FF0C\>\<#6570\>\<#636E\>\<#FF0C\>\<#5F97\>

  <\equation*>
    P<rsub|2><around|(|x|)>=<frac|1|0.1<rsup|2>>*<around|(|<frac|0.2500*<around|(|x-1.1|)>*<around|(|x-1.2|)>|2>-<frac|0.2268*<around|(|x-1.0|)>*<around|(|x-1.2|)>|1>+<frac|0.2066*<around|(|x-1.0|)>*<around|(|x-1.1|)>|2>|)>
  </equation*>

  \<#5373\>

  <\equation*>
    P<rsub|2><around|(|x|)>=0.001250*<around|(|x-1.1|)>*<around|(|x-1.2|)>-0.002268*<around|(|x-1.0|)>*<around|(|x-1.2|)>+0.001033*<around|(|x-1.0|)>*<around|(|x-1.1|)>
  </equation*>

  \<#5316\>\<#7B80\>\<#6709\>

  <\equation*>
    P<rsub|2><around|(|x|)>=<frac|150*<space|0.17em>x<rsup|2>-547*<space|0.17em>x+647|10>
  </equation*>

  \<#4ECE\>\<#800C\>

  <\equation*>
    f<rprime|'><around|(|0.6|)>=-3.6700405\<times\>10<rsup|-5>*<space|0.17em><with|font-shape|italic|d*e*l><around|(|0.6|)>
  </equation*>

  \<#5229\>\<#7528\>\<#8BFE\>\<#672C\><math|P<rsub|275>>\<#516C\>\<#5F0F\>8.10

  <align*|<tformat|<table|<row|<cell|2*h*f<rprime|'><around|(|1.0|)>>|<cell|=-0.0494>>|<row|<cell|2*h*f<rprime|'><around|(|1.1|)>>|<cell|=-0.0433>>|<row|<cell|2*h*f<rprime|'><around|(|1.2|)>>|<cell|=-0.0373>>>>>

  \<#4ECE\>\<#800C\>

  <align*|<tformat|<table|<row|<cell|h*f<rprime|'><around|(|1.0|)>>|<cell|=-0.247>>|<row|<cell|h*f<rprime|'><around|(|1.1|)>>|<cell|=-0.216>>|<row|<cell|h*f<rprime|'><around|(|1.2|)>>|<cell|=-0.186>>>>>

  <section*|8.2 \<#5229\>\<#7528\>\<#4E0B\>\<#8868\>,
  \<#6C42\><math|x=0.6>\<#5904\>\<#7684\>\<#5BFC\>\<#6570\>.>

  <big-table|<tabular|<tformat|<cwith|1|2|1|1|cell-lborder|1ln>|<cwith|1|2|1|1|cell-rborder|1ln>|<cwith|1|2|2|2|cell-rborder|1ln>|<cwith|1|2|3|3|cell-rborder|1ln>|<cwith|1|2|4|4|cell-rborder|1ln>|<cwith|1|2|5|5|cell-rborder|1ln>|<cwith|1|2|6|6|cell-rborder|1ln>|<cwith|1|2|1|6|cell-valign|c>|<cwith|1|1|1|6|cell-tborder|1ln>|<cwith|1|1|1|6|cell-bborder|1ln>|<cwith|2|2|1|6|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-halign|C.>|<table|<row|<cell|x>|<cell|0.4>|<cell|0.5>|<cell|0.6>|<cell|0.7>|<cell|0.8>>|<row|<cell|f(x)>|<cell|1.5836494>|<cell|1.7974426>|<cell|2.0442376>|<cell|2.3275054>|<cell|2.6510818>>>>>|>

  \<#5229\>\<#7528\>\<#8BFE\>\<#672C\>P275\<#516C\>\<#5F0F\>8.14, \<#6709\>

  <align*|<tformat|<table|<row|<cell|12*h*f<rprime|'><around|(|0.4|)>>|<cell|=2.380297>>|<row|<cell|12*h*f<rprime|'><around|(|0.5|)>>|<cell|=2.756952>>|<row|<cell|12*h*f<rprime|'><around|(|0.6|)>>|<cell|=3.173070>>|<row|<cell|12*h*f<rprime|'><around|(|0.7|)>>|<cell|=3.633028>>|<row|<cell|12*h*f<rprime|'><around|(|0.8|)>>|<cell|=20.297579>>>>>

  \<#4ECE\>\<#800C\>

  <align*|<tformat|<table|<row|<cell|f<rprime|'><around|(|0.4|)>>|<cell|=1.983580>>|<row|<cell|f<rprime|'><around|(|0.5|)>>|<cell|=2.297460>>|<row|<cell|f<rprime|'><around|(|0.6|)>>|<cell|=2.644225>>|<row|<cell|f<rprime|'><around|(|0.7|)>>|<cell|=3.027523>>|<row|<cell|f<rprime|'><around|(|0.8|)>>|<cell|=16.914649>>>>>

  <section*|9.1 \<#5728\>\<#533A\>\<#95F4\>[0,
  1]\<#4E0A\>\<#4F7F\>\<#7528\>\<#6B27\>\<#62C9\>\<#6CD5\>\<#89E3\>\<#4E0B\>\<#5217\>\<#521D\>\<#503C\>\<#95EE\>\<#9898\>,
  \<#53D6\>\<#6B65\>\<#957F\>h=0.1, \<#4FDD\>\<#7559\>\<#5230\>\<#5C0F\>\<#6570\>\<#70B9\>\<#540E\>4\<#4F4D\>.>

  (2)

  <\equation*>
    <around*|{|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<table|<row|<cell|y<rprime|'>=sin
    x+e<rsup|-x>>>|<row|<cell|y<around|(|0|)>=0>>>>>|\<nobracket\>>
  </equation*>

  \<#89E3\>:

  \<#7ECF\>\<#8BA1\>\<#7B97\>, \<#7ED3\>\<#679C\>\<#5982\>\<#4E0B\>\<#8868\>

  <big-table| <block*|<tformat|<cwith|1|-1|11|11|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-halign|C.>|<cwith|1|-1|1|1|cell-lborder|0>|<table|<row|<cell|x>|<cell|0.1>|<cell|0.2>|<cell|0.3>|<cell|0.4>|<cell|0.5>|<cell|0.6>|<cell|0.7>|<cell|0.8>|<cell|0.9>|<cell|1.0>>|<row|<cell|y>|<cell|0.1000>|<cell|0.2005>|<cell|0.3022>|<cell|0.4058>|<cell|0.5118>|<cell|0.6204>|<cell|0.7318>|<cell|0.8458>|<cell|0.9625>|<cell|1.0815>>>>>
  |>

  (4)

  <\equation*>
    <around*|{|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<table|<row|<cell|y<rprime|'>=-y>>|<row|<cell|y<around|(|0|)>=2>>>>>|\<nobracket\>>
  </equation*>

  \<#89E3\>:

  \<#7ECF\>\<#8BA1\>\<#7B97\>, \<#7ED3\>\<#679C\>\<#5982\>\<#4E0B\>\<#8868\>

  <big-table| <block*|<tformat|<cwith|1|-1|11|11|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-halign|L.>|<cwith|1|-1|1|1|cell-lborder|0>|<table|<row|<cell|x>|<cell|0.1>|<cell|0.2>|<cell|0.3>|<cell|0.4>|<cell|0.5>|<cell|0.6>|<cell|0.7>|<cell|0.8>|<cell|0.9>|<cell|1.0>>|<row|<cell|y>|<cell|1.8000>|<cell|1.6200>|<cell|1.4580>|<cell|1.3122>|<cell|1.1810>|<cell|1.0629>|<cell|0.9566>|<cell|0.8609>|<cell|0.7748>|<cell|0.6974>>>>>
  |>

  <\algorithm>
    % \<#6B27\>\<#62C9\>\<#6CD5\>

    \ function [x,y] = Euler(dyfun,xsapn,y0,h)

    \ \ \ \ \ \ \ \ x =xsapn(1):h:xsapn(2);

    \ \ \ \ \ \ \ \ y(1) = y0;

    \ \ \ \ \ \ \ \ for n = 1:length(x) - 1

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ y(n+1) = y(n) + h*feval(dyfun,x(n),y(n));

    \ \ \ \ \ \ \ \ end

    \ \ \ \ \ \ \ \ x = x';

    \ \ \ \ \ \ \ \ y = y';
  </algorithm>

  <section*|9.2\<#5728\>\<#533A\>\<#95F4\>[0,
  1]\<#4E0A\>\<#7528\>\<#6B27\>\<#62C9\>\<#65B9\>\<#6CD5\>,
  \<#6539\>\<#8FDB\>\<#7684\>\<#6B27\>\<#62C9\>\<#65B9\>\<#6CD5\>\<#548C\>\<#68AF\>\<#5F62\>\<#6CD5\>\<#89E3\>\<#521D\>\<#503C\>\<#95EE\>\<#9898\>,
  \<#53D6\>\<#6B65\>\<#957F\>\<#4E3A\>h=0.1,
  \<#7CBE\>\<#786E\>\<#5230\>\<#5C0F\>\<#6570\>\<#70B9\>\<#540E\>4\<#4F4D\>,
  \<#5E76\>\<#6BD4\>\<#8F83\>\<#4E09\>\<#79CD\>\<#7B97\>\<#6CD5\>\<#7ED3\>\<#679C\>\<#7684\>\<#8BEF\>\<#5DEE\>.>

  (1)

  <\equation*>
    <around*|{|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<table|<row|<cell|y<rprime|'>=y-<frac|2*x|y>>>|<row|<cell|y<around|(|0|)>=1>>>>>|\<nobracket\>>
  </equation*>

  \<#89E3\>:

  \<#8BA1\>\<#7B97\>\<#7ED3\>\<#679C\>\<#5982\>\<#4E0B\>\<#8868\>

  <big-table| <block*|<tformat|<cwith|1|-1|11|11|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-halign|C.>|<cwith|1|-1|1|1|cell-lborder|0>|<table|<row|<cell|x>|<cell|0.1>|<cell|0.2>|<cell|0.3>|<cell|0.4>|<cell|0.5>|<cell|0.6>|<cell|0.7>|<cell|0.8>|<cell|0.9>|<cell|1.0>>|<row|<cell|<math|y<rsub|E>>>|<cell|1.1>|<cell|1.1918>|<cell|1.2774>|<cell|1.3582>|<cell|1.4351>|<cell|1.5090>|<cell|1.5803>|<cell|1.6498>|<cell|1.7178>|<cell|1.7848>>|<row|<cell|<math|y<rsub|G>>>|<cell|1.0959>|<cell|1.1841>|<cell|1.2662>|<cell|1.3434>|<cell|1.4164>|<cell|1.4860>|<cell|1.5525>|<cell|1.6165>|<cell|1.6782>|<cell|1.7379>>|<row|<cell|<math|y<rsub|T>>>|<cell|1.0957>|<cell|1.1836>|<cell|1.2654>|<cell|1.3423>|<cell|1.4151>|<cell|1.4843>|<cell|1.5504>|<cell|1.6139>|<cell|1.6751>|<cell|1.7342>>>>>
  |>

  (2)

  <\equation*>
    <around*|{|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<table|<row|<cell|y<rprime|'>=x*y<rsup|2>>>|<row|<cell|y<around|(|0|)>=1>>>>>|\<nobracket\>>
  </equation*>

  \<#89E3\>:

  \<#8BA1\>\<#7B97\>\<#7ED3\>\<#679C\>\<#5982\>\<#4E0B\>\<#8868\>

  <big-table| <block*|<tformat|<cwith|1|-1|11|11|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-halign|C.>|<cwith|1|-1|1|1|cell-lborder|0>|<table|<row|<cell|x>|<cell|0.1>|<cell|0.2>|<cell|0.3>|<cell|0.4>|<cell|0.5>|<cell|0.6>|<cell|0.7>|<cell|0.8>|<cell|0.9>|<cell|1.0>>|<row|<cell|<math|y<rsub|E>>>|<cell|1.000>|<cell|1.0100>|<cell|1.0304>|<cell|1.0623>|<cell|1.1074>|<cell|1.1687>|<cell|1.2507>|<cell|1.3601>|<cell|1.5081>|<cell|1.7129>>|<row|<cell|<math|y<rsub|G>>>|<cell|1.005>|<cell|1.0204>|<cell|1.0470>|<cell|1.0868>|<cell|1.1426>|<cell|1.2190>|<cell|1.3234>|<cell|1.4684>|<cell|1.6758>|<cell|1.9881>>|<row|<cell|<math|y<rsub|T>>>|<cell|1.0051>|<cell|1.0205>|<cell|1.0474>|<cell|1.0875>|<cell|1.1439>|<cell|1.2213>|<cell|1.3277>|<cell|1.4766>|<cell|1.6926>|<cell|2.0264>>>>>
  |>

  <\algorithm>
    % \<#6539\>\<#8FDB\>\<#6B27\>\<#62C9\>\<#6CD5\>

    function [x,y] = Euler_G(dyfun,xsapn,y0,h)

    \ \ \ \ \ \ \ \ x = xsapn(1):h:xsapn(2);

    \ \ \ \ \ \ \ \ y(1) = y0;

    \ \ \ \ \ \ \ \ for n = 1:length(x) -1

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ k1 = feval(dyfun,x(n),y(n));

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ y(n+1) = y(n) + h*k1;

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ k2 = feval(dyfun,x(n+1),y(n+1));

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ y(n+1) = y(n) + h*(k1+k2)/2;

    \ \ \ \ \ \ \ \ end

    \ \ \ \ \ \ \ \ x = x';

    \ \ \ \ \ \ \ \ y = y';
  </algorithm>

  <\algorithm>
    % \<#68AF\>\<#5F62\>\<#6CD5\>

    function [x,y] = Euler_T(dyfun,x0,y0,h,N)

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x = zeros(1,N+1);

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ y = zeros(1,N+1);

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x1 = x(0);

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ y1 = y(0);

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for n = 1:N

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x(n+1) = x(n) + h;

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ z0 =
    y(n)+h*feval(dyfun,x(n),y(n));

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for k = 1:3

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ z1 =
    y(n)+h/2*(feval(dyfun,x(n),y(n))+feval(dyfun,x(n+1),z0));

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if
    \ \ \ \ \ abs(z1-z0) LT 1e-5

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ break;

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ end

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ z0 = z1;

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ end

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ y(n+1)=z1;

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ end
  </algorithm>

  <\indent>
    % 9.2.1

    func = @(x, y) y-2*x/y;

    [x, y] = Euler(func, 0, 1,1,0.1)

    \;

    %9.2.2

    [x, y] = Euler_G(func, [0,1], 1, 0.1)

    \;

    %9.2.3

    [x, y] = Euler_T(func, 0, 1, 0.1, 11)

    \;
  </indent>

  <section*|9.3 \<#7528\>\<#56DB\>\<#9636\>RungeKuttaEuler\<#6CD5\>\<#6C42\>\<#89E3\>\<#521D\>\<#503C\>\<#95EE\>\<#9898\>,
  h=0.1\<#7CBE\>\<#786E\>\<#5230\>\<#5C0F\>\<#6570\>\<#70B9\>\<#540E\>4\<#4F4D\>.>

  <\equation*>
    <around*|{|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<table|<row|<cell|y<rprime|'>=y<rsup|2>*e<rsup|-x>>>|<row|<cell|y<around|(|1|)>=1,x\<in\><around|[|1,2|]>>>>>>|\<nobracket\>>
  </equation*>

  <big-table|<block*|<tformat|<cwith|1|-1|11|11|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-halign|C.>|<cwith|1|-1|1|1|cell-lborder|0>|<table|<row|<cell|x>|<cell|1.1>|<cell|1.2>|<cell|1.3>|<cell|1.4>|<cell|1.5>|<cell|1.6>|<cell|1.7>|<cell|1.8>|<cell|1.9>|<cell|2.0>>|<row|<cell|y>|<cell|1.0363>|<cell|1.0714>|<cell|1.1054>|<cell|1.1380>|<cell|1.1692>|<cell|1.1990>|<cell|1.2273>|<cell|1.2540>|<cell|1.2793>|<cell|1.3030>>>>>
  |>

  <\equation*>
    <around*|{|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<table|<row|<cell|y<rprime|'>=x<rsup|2>+x<rsup|3>*y>>|<row|<cell|y<around|(|1|)>=1,x\<in\><around|[|1,2|]>>>>>>|\<nobracket\>>
  </equation*>

  <\algorithm>
    function [x, y] = RungeKuttaEuler(func, x_start, x_end, y0, h)

    x = x_start:h:x_end;

    y(1) = y0;

    for n=1:length(x)-1

    \ \ \ \ k1 = func(x(n), y(n));

    \ \ \ \ k2 = func(x(n)+h/2, y(n)+h/2*k1);

    \ \ \ \ k3 = func(x(n)+h/2, y(n)+h/2*k2);

    \ \ \ \ k4 = func(x(n+1), y(n)+h*k3);

    \ \ \ \ y(n+1) = y(n) + h*(k1+2*(k2+k3)+k4)/6;

    end

    \;

    RungeKuttaEuler(@(x, y) y^2*exp(-x), 1, 2, 1, 0.1)
  </algorithm>

  <big-table|<block*|<tformat|<cwith|1|-1|11|11|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-halign|C.>|<cwith|1|-1|1|1|cell-lborder|0>|<table|<row|<cell|x>|<cell|1.1>|<cell|1.2>|<cell|1.3>|<cell|1.4>|<cell|1.5>|<cell|1.6>|<cell|1.7>|<cell|1.8>|<cell|1.9>|<cell|2.0>>|<row|<cell|y>|<cell|1.2401>|<cell|1.5873>|<cell|2.1032>|<cell|2.8979>|<cell|4.1785>|<cell|6.3577>|<cell|10.3105>|<cell|18.0306>|<cell|34.4383>|<cell|72.8124>>>>>
  |>

  <section*|9.6 \<#7528\>\<#6B27\>\<#62C9\>\<#65B9\>\<#6CD5\>\<#548C\>\<#9884\>\<#4F30\>-\<#6821\>\<#6B63\>\<#65B9\>\<#6CD5\>\<#6C42\>\<#89E3\>\<#521D\>\<#503C\>\<#95EE\>\<#9898\>>

  <\equation*>
    <around*|{|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<table|<row|<cell|y<rprime|'>=x+y>>|<row|<cell|y<around|(|0|)>=0,x\<in\><around|[|0,1|]>>>>>>|\<nobracket\>>
  </equation*>

  h=0.1, \<#7CBE\>\<#786E\>\<#5230\>\<#5C0F\>\<#6570\>\<#70B9\>\<#540E\>5\<#4F4D\>,
  \<#5E76\>\<#4E0E\>\<#7CBE\>\<#786E\>\<#89E3\><math|y=-x-1+2*e<rsup|x>>\<#76F8\>\<#6BD4\>\<#8F83\>

  \<#89E3\>:

  \<#8BA1\>\<#7B97\>\<#7ED3\>\<#679C\>\<#5982\>\<#4E0B\>\<#8868\>

  <big-table| <block*|<tformat|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|11|11|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-halign|C.>|<table|<row|<cell|x>|<cell|0.1>|<cell|0.2>|<cell|0.3>|<cell|0.4>|<cell|0.5>|<cell|0.6>|<cell|0.7>|<cell|0.8>|<cell|0.9>|<cell|1.0>>|<row|<cell|<math|y<rsub|E*>>>|<cell|0>|<cell|0.01>|<cell|0.03100>|<cell|0.06410>|<cell|0.11051>|<cell|0.17156>|<cell|0.24872>|<cell|0.34359>|<cell|0.45795>|<cell|0.59374>>|<row|<cell|<math|y<rsub|R><rsub|\<nosymbol\>>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|\<#7CBE\>\<#786E\>\<#503C\>>|<cell|1.11034>|<cell|1.24281>|<cell|1.39972>|<cell|1.58365>|<cell|1.79744>|<cell|2.04424>|<cell|2.32751>|<cell|2.65108>|<cell|3.01921>|<cell|3.43656>>>>>
  |>
</body>

<\initial>
  <\collection>
    <associate|page-even-footer|>
    <associate|page-even-header|\<#6570\>\<#503C\>\<#5206\>\<#6790\>\<#7B2C\>\<#56DB\>\<#6B21\>\<#4E0A\>\<#673A\>\<#4F5C\>\<#4E1A\>
    13120032 \<#5218\>\<#5B87\>\<#98DE\>>
    <associate|page-odd-footer|>
    <associate|page-odd-header|\<#6570\>\<#503C\>\<#5206\>\<#6790\>\<#7B2C\>\<#56DB\>\<#6B21\>\<#4E0A\>\<#673A\>\<#4F5C\>\<#4E1A\>
    13120032 \<#5218\>\<#5B87\>\<#98DE\>>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-10|<tuple|3|3>>
    <associate|auto-11|<tuple|3|3>>
    <associate|auto-12|<tuple|3|3>>
    <associate|auto-13|<tuple|4|3>>
    <associate|auto-14|<tuple|4|3>>
    <associate|auto-15|<tuple|4|4>>
    <associate|auto-16|<tuple|4|4>>
    <associate|auto-17|<tuple|4|4>>
    <associate|auto-18|<tuple|4|5>>
    <associate|auto-19|<tuple|1|5>>
    <associate|auto-2|<tuple|?|1>>
    <associate|auto-20|<tuple|1|6>>
    <associate|auto-21|<tuple|2|6>>
    <associate|auto-22|<tuple|2|6>>
    <associate|auto-23|<tuple|3|6>>
    <associate|auto-24|<tuple|4|6>>
    <associate|auto-25|<tuple|5|6>>
    <associate|auto-26|<tuple|5|7>>
    <associate|auto-27|<tuple|6|7>>
    <associate|auto-28|<tuple|7|7>>
    <associate|auto-29|<tuple|7|7>>
    <associate|auto-3|<tuple|2|2>>
    <associate|auto-30|<tuple|8|7>>
    <associate|auto-31|<tuple|8|7>>
    <associate|auto-32|<tuple|9|7>>
    <associate|auto-4|<tuple|2|2>>
    <associate|auto-5|<tuple|2|2>>
    <associate|auto-6|<tuple|2|2>>
    <associate|auto-7|<tuple|2|2>>
    <associate|auto-8|<tuple|3|3>>
    <associate|auto-9|<tuple|3|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|table>
      <tuple|normal||<pageref|auto-19>>

      <tuple|normal||<pageref|auto-21>>

      <tuple|normal||<pageref|auto-23>>

      <tuple|normal||<pageref|auto-24>>

      <tuple|normal||<pageref|auto-26>>

      <tuple|normal||<pageref|auto-27>>

      <tuple|normal||<pageref|auto-29>>

      <tuple|normal||<pageref|auto-30>>

      <tuple|normal||<pageref|auto-32>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.1
      \<#7528\>\<#68AF\>\<#5F62\>\<#516C\>\<#5F0F\>\<#548C\>Simspon\<#516C\>\<#5F0F\>\<#6C42\>\<#4E0B\>\<#5217\>\<#79EF\>\<#5206\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|(2).<with|mode|<quote|math>|<big|int><rsub|0><rsup|1><frac|<around|(|1-e<rsup|-x>|)><rsup|<frac|1|2>>|x>*d*x,n=10>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.2.\<#7528\>\<#590D\>\<#5408\>\<#68AF\>\<#5F62\>\<#516C\>\<#5F0F\>\<#548C\>Simspon\<#516C\>\<#5F0F\>\<#6C42\>\<#4E0B\>\<#5217\>\<#79EF\>\<#5206\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|(2).<with|mode|<quote|math>|<big|int><rsub|1><rsup|2><frac|x|l*n*<around|(|1+x|)>>*d*x,n=6>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.4.\<#7528\>Romberg\<#65B9\>\<#6CD5\>\<#6C42\>\<#79EF\>,\<#4F7F\>\<#5F97\>\<#8BEF\>\<#5DEE\>\<#4E0D\>\<#8D85\>\<#8FC7\><with|mode|<quote|math>|10<rsup|-5>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|(1)<with|mode|<quote|math>|<frac|2|\<pi\>>*<big|int><rsub|0><rsup|1>e<rsup|-x<rsup|2>>*d*x>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|(3)<with|mode|<quote|math>|<big|int><rsub|0><rsup|3>x*<sqrt|1+x<rsup|2>>*d*x>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.5.\<#6C42\>\<#79EF\>\<#5206\><with|mode|<quote|math>|<big|int><rsub|0><rsup|1><frac|1|x>*d*x>,\<#5206\>\<#522B\>\<#7528\>\<#4E0B\>\<#5217\>\<#65B9\>\<#6CD5\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <with|par-left|<quote|1tab>|(1)\<#590D\>\<#5408\>\<#68AF\>\<#5F62\>\<#516C\>\<#5F0F\>,n=16
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|(2)Simpson\<#516C\>\<#5F0F\>,n=4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|(3)Romberg\<#7B97\>\<#6CD5\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.6.\<#7528\>Gauss\<#578B\>\<#6C42\>\<#79EF\>\<#516C\>\<#5F0F\>\<#6C42\><with|mode|<quote|math>|<big|int><rsub|-1><rsup|1><frac|x<rsup|2>|<sqrt|1-x<rsup|2>>>*d*x>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.7\<#63A8\>\<#5BFC\>\<#4E0B\>\<#5217\>\<#4E09\>\<#79CD\>\<#77E9\>\<#5F62\>\<#516C\>\<#5F0F\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <with|par-left|<quote|1tab>|(1)<with|mode|<quote|math>|<big|int><rsub|a><rsup|b>f<around|(|x|)>=<around|(|b-a|)>*f<around|(|a|)>+<frac|f<rprime|'><around|(|\<eta\>|)>|2>*<around|(|b-a|)><rsup|2>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|(2)<with|mode|<quote|math>|<big|int><rsub|a><rsup|b>f<around|(|x|)>=<around|(|b-a|)>*f<around|(|b|)>-<frac|f<rprime|'><around|(|\<eta\>|)>|2>*<around|(|b-a|)><rsup|2>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.11
      \<#6784\>\<#9020\>Gauss\<#578B\>\<#6C42\>\<#79EF\>\<#516C\>\<#5F0F\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.12
      \<#6784\>\<#9020\>Gauss\<#578B\>\<#6C42\>\<#79EF\>\<#516C\>\<#5F0F\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8.1>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8.2
      \<#5229\>\<#7528\>\<#4E0B\>\<#8868\>,
      \<#6C42\><with|mode|<quote|math>|x=0.6>\<#5904\>\<#7684\>\<#5BFC\>\<#6570\>.>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9.1
      \<#5728\>\<#533A\>\<#95F4\>[0, 1]\<#4E0A\>\<#4F7F\>\<#7528\>\<#6B27\>\<#62C9\>\<#6CD5\>\<#89E3\>\<#4E0B\>\<#5217\>\<#521D\>\<#503C\>\<#95EE\>\<#9898\>,
      \<#53D6\>\<#6B65\>\<#957F\>h=0.1, \<#4FDD\>\<#7559\>\<#5230\>\<#5C0F\>\<#6570\>\<#70B9\>\<#540E\>4\<#4F4D\>.>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9.2\<#5728\>\<#533A\>\<#95F4\>[0,
      1]\<#4E0A\>\<#7528\>\<#6B27\>\<#62C9\>\<#65B9\>\<#6CD5\>,
      \<#6539\>\<#8FDB\>\<#7684\>\<#6B27\>\<#62C9\>\<#65B9\>\<#6CD5\>\<#548C\>\<#68AF\>\<#5F62\>\<#6CD5\>\<#89E3\>\<#521D\>\<#503C\>\<#95EE\>\<#9898\>,
      \<#53D6\>\<#6B65\>\<#957F\>\<#4E3A\>h=0.1,
      \<#7CBE\>\<#786E\>\<#5230\>\<#5C0F\>\<#6570\>\<#70B9\>\<#540E\>4\<#4F4D\>,
      \<#5E76\>\<#6BD4\>\<#8F83\>\<#4E09\>\<#79CD\>\<#7B97\>\<#6CD5\>\<#7ED3\>\<#679C\>\<#7684\>\<#8BEF\>\<#5DEE\>.>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9.3
      \<#7528\>\<#56DB\>\<#9636\>RungeKuttaEuler\<#6CD5\>\<#6C42\>\<#89E3\>\<#521D\>\<#503C\>\<#95EE\>\<#9898\>,
      h=0.1\<#7CBE\>\<#786E\>\<#5230\>\<#5C0F\>\<#6570\>\<#70B9\>\<#540E\>4\<#4F4D\>.>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9.6
      \<#7528\>\<#6B27\>\<#62C9\>\<#65B9\>\<#6CD5\>\<#548C\>\<#9884\>\<#4F30\>-\<#6821\>\<#6B63\>\<#65B9\>\<#6CD5\>\<#6C42\>\<#89E3\>\<#521D\>\<#503C\>\<#95EE\>\<#9898\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>