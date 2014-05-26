function A=RCombine(A)
global B
clc
[r,c]=find(A);
%Combine Tiles
for n=numel(r):-1:1
    if c(n)+1~=5 && A(r(n),c(n)+1)==A(r(n),c(n)) && B(r(n),c(n))==0;
        B(r(n),c(n)+1)=1;
        A(r(n),c(n)+1)=A(r(n),c(n))*2;
        A(r(n),c(n))=0;
    end
end