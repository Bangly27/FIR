function [t,y]=chirpgen(filename)

Fs=1000; % sample rate 
tf=2; % 2 seconds
t=0:1/Fs:tf-1/Fs;
f1=10;
f2=20; % start @ 100 Hz, go up to 400Hz
semi_t=0:1/Fs:(tf/2-1/Fs);
sl=2*(f2-f1/2);
f1=f1*semi_t+(sl.*semi_t/2);
f2=f1(end)+f2*semi_t-sl.*semi_t/2;
f=[f1 f2];
y=0.8*sin(2*pi*f.*t);
plot(t,y)
h = [1651,9,5000,1,400,2];
dlmwrite(filename,h, ' ');
dlmwrite(filename,y, 'delimiter','\n', '-append');
end