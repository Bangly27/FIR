function [t,y]=chirpgen_new(filename)
h = [1651,9,5000,1,400,2];
fs = 1024;
t=0:1/fs:2-1/fs;
f1=20;
f2=200;
t2=5;
y=0.6*chirp(t,f1,t2,f2)
figure
plot(t,y);

dlmwrite(filename,h, ' ');
dlmwrite(filename,y, 'delimiter','\n', '-append');

end