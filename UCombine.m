function A=UCombine(A)
global B
clc
[r,c]=find(A);
%Combine Tiles
for n=1:1:numel(r)
    if r(n)-1~=0 && A(r(n)-1,c(n))==A(r(n),c(n)) && B(r(n),c(n))==0;
        B(r(n)-1,c(n))=1;
        A(r(n)-1,c(n))=A(r(n),c(n))*2;
        A(r(n),c(n))=0;
    end
end