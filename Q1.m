clear;

E = 1e6;       % Experiment times
a = -2; b=2;
for i = 1:E
    y = rand;
    x = a+(b-a)*y;
    h(i) = exp(x+x^2)*(b-a);
end
disp(['The integral of (a) is ', num2str(mean(h))]);

for i = 1:E
    y = rand;
    x1 = 1/y-1; x2 = -1/y+1;
    h(i) = exp(-x1^2)/(y^2)+exp(-x2^2)/(y^2);
end
disp(['The integral of (b) is ', num2str(mean(h))]);

for i = 1:E
    x = rand;   y = rand;
    g(i) = exp(-x^2-y^2);
end
disp(['The integral of (c) is ', num2str(mean(g))]);
