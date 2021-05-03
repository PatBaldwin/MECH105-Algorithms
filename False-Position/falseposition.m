function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
if nargin<3
    error('please input a function, lower limit, upper limit, relative error, max iteration')
elseif  nargin<4
    es=0.000001;
    maxit=200;
elseif nargin<5
    maxit=200;
else
end
iter=1;
ea=100
lastxr=0
while iter<maxit && ea>es
fxu=func(xu);
fxl=func(xl);
root=(xu-(fxu*(xl-xu))/(fxl-fxu))
fxr=func(root);
if fxu==0
    root=xu;
    fxr=0;
    fx=fxr;
    ea=0;
    break
elseif fxl==0
    root=xl
    fxr=0;
    fx=fxr;
    ea=0;
    break
elseif fxr==0
    ea=0;
    fx=fxr;
   break
else
end
ea=abs(root-lastxr)/abs(root)
if ea>es
if fxr*fxu>0 && fxr*fxl<0 
    lastxr=root
    xu=root;
elseif fxr*fxu<0 && fxr*fxl>0 
    lastxr=root
    xl=root;
end
iter=iter+1
else 
    break
end
end
fx=fxr;
end
