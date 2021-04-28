function [base2] = binaryConverter(base10)
n = 1+fix(log2(base10));
I = nan(1,n);
y = fix(base10);
for k = n:-1:1
    I(k) = fix(mod(y,2));
    y = fix(y/2);
end
% Fractional part:
n = 12; % places after the radix point.
F = nan(1,n);
y = mod(base10,1);
for k = 1:n
    F(k) = fix(2*y);
    y = mod(2*y,1);
end
% Output:
base2 = char([I,-2,F]+'0')

end
