# MECH105-Algorithms
These are the algorithms I created for MECH105 using different numerical methods


## Binary Converter
This code converts a base10 number into a base2 number. The input is a simple base10 number, the output is a binary number string
### Code
' function [base2] = binaryConverter(base10)
%binary A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary
basenum=2
remainder=0 
k=1
base2=0
while base10>0
    remainder=mod(base10, basenum)
    base10=floor(base10/basenum);
    base2(k)=remainder
    k=k+1
end
base2=flip(base2)
end '
## False Postion 
This algorithm uses the False postion numerical method to find the root of a given function and its two guesses
### Inputs:
func - the function being evaluated
 - the lower guess
 - the upper guess
es - the desired relative error (should default to 0.0001%)
maxit - the maximum number of iterations to use (should default to 200)
varargin, . . . - any additional parameters used by the function
### Outputs:
root - the estimated root location
fx - the function evaluated at the root location
ea - the approximate relative error (%)
iter - how many iterations were performed
### code 
' function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
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
end ' 

## Linear Algebra
This algorithm 
##

##

##

##
