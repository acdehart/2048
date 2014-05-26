global B
clc
disp '2048'
clc

%TO DO LIST:
%Color code numbers?

%Intro Sound
cf = 523.5;                  % carrier frequency (Hz)
sf = 22050;                 % sample frequency (Hz)
d =0.1;                     % duration (s)
n = sf * d;                 % number of samples
s = (1:n) / sf;             % sound data preparation
s = sin(2 * pi * cf * s);   % sinusoidal modulation
sound(s, sf);               % sound presentation
%pause(d + 0.2);             % waiting for sound end
clc
disp '2048'

cf = 659.25;                   % carrier frequency (Hz)
sf = 22050;                 % sample frequency (Hz)
d =0.1;                     % duration (s)
n = sf * d;                 % number of samples
s = (1:n) / sf;             % sound data preparation
s = sin(2 * pi * cf * s);   % sinusoidal modulation
sound(s, sf);               % sound presentation
%pause(d + 0.2);             % waiting for sound end
clc
disp '2048'

cf = 783.99;                   % carrier frequency (Hz)
sf = 22050;                 % sample frequency (Hz)
d =0.5;                     % duration (s)
n = sf * d;                 % number of samples
s = (1:n) / sf;             % sound data preparation
s = sin(2 * pi * cf * s);   % sinusoidal modulation
clc
sound(s, sf);               % sound presentation
disp '2048'
pause(d + 0.2);             % waiting for sound end

%Game Sound
cf = 310;                  % carrier frequency (Hz)
sf = 22050;                 % sample frequency (Hz)
d =0.1;                     % duration (s)
n = sf * d;                 % number of samples
s = (1:n) / sf;             % sound data preparation
s = sin(2 * pi * cf * s);   % sinusoidal modulation


A=zeros(4,4);
RandNum
RandNum
pause(.5)
disp 'Use W,S,A,D and RETURN'
while max(max(A))<2048
    B=zeros(4,4);
    C=A;
    II=0;
    usr=input('...','s');
    switch usr
        case 'w'
            A=Up(A)
            sound(s, sf);
        case 's'
            A=Down(A)
            sound(s, sf);
        case 'd'
            A=Right(A)
            sound(s, sf);
        case 'a'
            A=Left(A)
            sound(s, sf);
        otherwise
            disp 'Invalid Input'
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