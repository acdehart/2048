function A=LShift(A)
clc
[r,c]=find(A);

%Shift Tiles
for m=1:3
    for n=1:numel(r)
        if c(n)-1~=0 && A(r(n),c(n)-1)==0
            A(r(n),c(n)-1)=A(r(n),c(n));
            A(r(n),c(n))=0;
            c(n)=c(n)-1;
        end
    end
    clc
end
