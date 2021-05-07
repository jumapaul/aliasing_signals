%this is the matlab code for aliasing of a signal

clc 
f = 100;
tmin = -0.05;%the mimimum time
tmax = 0.05;% the maximum time
t = linspace(tmin, tmax, 400);% this returns a row vector with 400 linearly 
%spaced points in the intervals [tmin. tmax]
x = cos(2*pi*100*t) + cos(2*pi*6000*t);
subplot(5,1,1)
plot(t,x)
xlabel('t (seconds)')
ylabel('(amplitude)')

%sampling frequency of 4000Hz
T = 1/4000;
nmin = ceil(tmin/T); %this basically round off to the upper limit
nmax = floor(tmax/T);% round off to the lower limit
n = nmin:nmax;
x1 = cos(2*pi*100*n*T) + cos(2*pi*100*n*T);
hold on

plot(n*T, x1, 'r')
subplot(5,1,2)
hold off

%sampling frequency
T = 1 /2000;]
nmin = ceil(tmin/T); %this basically round off to the upper limit
nmax = floor(tmax/T);% round off to the lower limit
n = nmin:nmax;
x1 = cos(2*pi*100*n*T) + cos(2*pi*100*n*T);
plot(t,x)
hold on

plot(n*T, x1, 'ro')
subplot(5,1,3)
hold off

%sampling frequency 1000Hz
T = 1 /1000;
nmin = ceil(tmin/T); %this basically round off to the upper limit
nmax = floor(tmax/T);% round off to the lower limit
n = nmin:nmax;
x1 = cos(2*pi*100*n*T) + cos(2*pi*100*n*T);
plot(t,x)
hold on

plot(n*T, x1, 'ro')
subplot(5,1,4)
hold off

%sampling frequency 500Hz
T = 1 /500;
nmin = ceil(tmin/T); %this basically round off to the upper limit
nmax = floor(tmax/T);% round off to the lower limit
n = nmin:nmax;
x1 = cos(2*pi*100*n*T) + cos(2*pi*100*n*T);
plot(t,x)
hold on

plot(n*T, x1, 'ro')
subplot(5,1,5)
hold off

%sampling frequency 500Hz
T = 1 /500;
x = cos(2*pi*100*t) + cos(2*pi*6000*t);
nmin = ceil(tmin/T); %this basically round off to the upper limit
nmax = floor(tmax/T);% round off to the lower limit
n = nmin:nmax;
x1 = cos(2*pi*100*n*T) + cos(2*pi*100*n*T);
plot(t,x)
hold on

plot(n*T, x1, 'r')
hold off



