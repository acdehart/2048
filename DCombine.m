function A=DCombine(A)
global B
clc
[r,c]=find(A);
%Combine Tiles
for n=numel(r):-1:1
    if r(n)+1~=5 && A(r(n)+1,c(n))==A(r(n),c(n)) && B(r(n),c(n))==0
        B(r(n)+1,c(n))=1;
        A(r(n)+1,c(n))=A(r(n),c(n))*2;
        A(r(n),c(n))=0;        
    end
end