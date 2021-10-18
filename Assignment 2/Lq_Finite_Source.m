function [Lq] = Lq_Finite_Source(rho, P0, c, N)
%LS_FINITE_SOURCE Lq of Finite Source
%   Returns the queue length (Used in Q3&Q4)
Lq = 0;
for n=c+1:N
    Pn = Pn_Finite_Source(rho, P0, c, N, n);
    Lq = Lq + (n-c)*Pn;
end
end

