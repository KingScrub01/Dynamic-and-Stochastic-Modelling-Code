function [Pn] = Pn_Finite_Source(rho, P0, c, N, n)
%PN_FINITE_SOURCE P0 of Finite Source
%   Returns the probability of P0 (Used in Q3&Q4)
if (0<=n) && (n<=c)
   Pn = nchoosek(N,n) * rho^n * P0;
elseif (c<n) && (n<=N)
   fact = (factorial(n)*rho^n) / (factorial(c) * c^(n-c));
   Pn = nchoosek(N,n) * fact * P0;
else
    Pn = 0;
end
end

