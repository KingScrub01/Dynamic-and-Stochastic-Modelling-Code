function [P0] = P0_Finite_Source(rho,c, N)
%P0_FINITE_SOURCE P0 of Finite Source
%   Returns the probability of P0 (Used in Q3&Q4)
pre_sum = 0;
for n=0:c-1
    pre_sum = pre_sum + nchoosek(N,n) * rho^n;
end

post_sum = 0;
for n=c:N
    fact = (factorial(n)*rho^n) / (factorial(c) * c^(n-c));
    post_sum = post_sum + nchoosek(N,n) * fact;
end

P0 = (pre_sum + post_sum)^(-1);
end

