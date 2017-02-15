clear;

n = 10;     % number of samples
k = 4;
for i = 1:n
    X(i) = sum(randn(1,k).^2);
end

X = sort(X);
figure(1)
stairs(X,1/n:1/n:1,'b','linewidth',2);
hold on
grid on
plot(chi2cdf(1:n,k),'r--','linewidth',2);
hold off
legend('Empirical cdf','Theoretical cdf','Location','southeast');
ylim([0 1.05]);
title('Chi-squared distribution of k=4');
xlabel('x');
ylabel('F(x)');