function [ y ] = singen(Fsin, filename)
len = 1024;
Fsamp = 48000;              % sampling freuency
A = 0.4;                    % must be less than 1 -  Q15!
t = 0:1/Fsamp:(len-1)/Fsamp;
y = A*sin(2*pi*Fsin*t);     % conversion to  Q15
h = [1651,9,5000,1,400,2];  %  dat TI header
plot(y);
dlmwrite(filename,h, ' ');
dlmwrite(filename,y, 'delimiter','\n', '-append');
end