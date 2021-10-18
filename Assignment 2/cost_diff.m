function [P0, Lq, Ls, diff] = cost_diff(rho, Ls_prev, c)
%UNTITLED Finds change in items in service
%   Used in Q2
P0_sum = 0;
for n=0:c-1
    P0_sum = P0_sum + rho^n / factorial(n);
end
P0 = (rho^c/(factorial(c)*(1-rho/c)) + P0_sum)^(-1);
Lq = rho^c*P0/factorial(c) * (rho/c) / (1-rho/c)^2;
Ls = Lq + rho;
diff = Ls_prev - Ls;
end

