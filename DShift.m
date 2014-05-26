function A=DShift(A)
clc
[r,c]=find(A);

%Shift Tiles
for m=1:3
    for n=1:numel(r)
        if r(n)+1~=5 && A(r(n)+1,c(n))==0
            A(r(n)+1,c(n))=A(r(n),c(n));
            A(r(n),c(n))=0;
            r(n)=r(n)+1;
        end
    end
    clc
end
