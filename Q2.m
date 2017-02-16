clear;

n = input('Please enter the number of samples: ');     % number of samples
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

F10x = 1/n:1/n:1;
Fx = chi2cdf(X(1:n),k);
disp(['The lower bound is: ', ...
    num2str(max(F10x - Fx))]);

disp(['25th percentile: ' num2str(X(floor(0.25*n))), ...
    '   Theretical: ', num2str(chi2inv(0.25,4))]);
disp(['50th percentile: ' num2str(X(floor(0.50*n))), ...
    '   Theretical: ', num2str(chi2inv(0.50,4))]);
disp(['95th percentile: ' num2str(X(floor(0.95*n))), ...
    '   Theretical: ', num2str(chi2inv(0.95,4))]);
