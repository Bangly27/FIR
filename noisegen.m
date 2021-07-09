function [ y ] = noisegen(filename)
len = 1024;

y = randn(len,1)/4;
plot(y)
h = [1651,9,5000,1,400,2];  %  dat TI header
dlmwrite(filename,h, ' ');
dlmwrite(filename,y, 'delimiter','\n', '-append');
end