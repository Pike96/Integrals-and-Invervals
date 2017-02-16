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
disp(['The statistical confidence interval is: [',...
    num2str(CI(1)),',   ',num2str(CI(2)),']']);

% Bootstrap confidence interval
b = sort(bootstrp(n, @mean, x));
disp(['The bootstrap confidence interval is: [',...
    num2str(b(ceil(n*0.025))),',    ',num2str(b(floor(n*0.975))),']']);
