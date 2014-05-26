global A
clc
[row col]=find(A==0);   %make a list of all zeros locations
i=randi([1 length(row)]); %select one zero location at random 

%Put new number in matrix
j=randi([1 5]);%decide if 2 or 4
if j==5
    A(row(i),col(i))=4;
else
    A(row(i),col(i))=2;
end
A