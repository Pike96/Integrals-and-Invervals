clear;

% Read waiting time
data = textread('faithful.dat.txt', '%f', 272*3, 'headerlines', 26);
waiting = data(3:3:272*3);

% Statistical confidence interval
n = input('Please enter the number of samples: ');     % number of samples
x = waiting(1:n);
SEM = std(x)/sqrt(n);
ts = tinv([0.025  0.975],n-1);
CI = mean(x) + ts*SEM;
