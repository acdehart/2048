global B
clc
disp '2048'
pause(1)
clc

%Stop move if you can't slide or combine in that direction
%Notify user if ilegal move
%Test if no moves possible & define/display endgame
%Color code numbers?

A=zeros(4,4);
RandNum
RandNum
while max(max(A))<2048
    B=zeros(4,4);
    C=A;
    II=0;
    usr=input('...','s');
    switch usr
        case 'w'
            A=Up(A)
        case 's'
            A=Down(A)
        case 'd'
            A=Right(A)
        case 'a'
            A=Left(A)
        otherwise
            disp 'Invalid input'
            pause(1)
            clc
            A
            II=1;
    end
    if isequal(C,A)
        if II==0
            disp 'Illegal Move'
            pause(1)
        end
        clc
        A
    else
        RandNum
        B=zeros(4,4);
        clc
        if isequal(Left(A),Right(A),Up(A),Down(A)) && numel(find(A))==16
            disp 'Game Over...'
            break;
        end
        A
    end
    
        
end