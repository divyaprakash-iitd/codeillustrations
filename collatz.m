clear; clc; close all;

% Decription: Implementation of the Collatz conjecture

n = randi(1e5);

h = animatedline;
hold on
title(sprintf('Seed = %d',n))
xlabel('Iterations')
ylabel('Value')
grid on
iter = 1;
while n ~= 1
    addpoints(h,iter,n);
    set(gca,'YScale','log')
    drawnow
    iter = iter + 1;
    if mod(n,2) == 0
        n = n/2;
    else
        n = 3*n + 1;
    end
end