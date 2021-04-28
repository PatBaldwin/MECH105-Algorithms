function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
if length(x)~=length(y)
    error("please use same length vectors for x and y variables")
    return
else
end
set=x(2)-x(1);
for k=2:length(x)
    if set~=x(k)-x(k-1)
        error("please use equally spaced x variables")
        return
    else
    end
end
simp=zeros(1,length(x));
if length(x)==2
    warning('used trap rule')
    I=set*(y(1)+y(2))/2;
elseif mod(length(x),2)==1
for k=1:2:length(x)-2
   simp(1)=y(1);
   simp(k+1)=4*y(k+1);
    simp(k+2)=2*y(k+2);
    simp(length(x))=y(length(x))
end
    I=set/3*sum(simp)
else 
    warning('used trap rule')
    for k=1:2:length(x)-3
   simp(1)=y(1);
   simp(k+1)=4*y(k+1);
    simp(k+2)=2*y(k+2);
    simp(length(x)-1)=y(length(x)-1)
    I=set/3*sum(simp)
    I=I+(set*(y(length(x)-1)+y(length(x)))/2);
    end
end
end
