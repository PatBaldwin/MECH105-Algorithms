function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
[n,m]=size(A);
if n~=m
    error('need square matrix')
    return
else
end
U=A;
L=zeros(n,m);
P=zeros(n,m);
almostU=A;
for j=1:1:n
    P(j,j)=1;
end
for k=2:n
[a,z]=max(abs(U(k-1:n,k-1)));
z=z+k-2;
if abs(U(k-1,k-1))<abs(U(z,k-1))
    damn=U(k-1,:);
    U(k-1,:)=U(z,:);
    U(z,:)=damn;
    nexip=P(k-1,:);
    P(k-1,:)=P(z,:);
    P(z,:)=nexip;
    damt=L(k-1,:);
    L(k-1,:)=L(z,:);
    L(z,:)=damt;
end 
for j=k:n  %down the row cancellation 
rip=U(j,k-1)/U(k-1,k-1)
L(j,k-1)=rip;
almostU(k-1,:)=U(k-1,:)*rip;
U(j,:)=(U(j,:))-almostU(k-1,:);
end
end
for j=1:1:n
    L(j,j)=1;
end
