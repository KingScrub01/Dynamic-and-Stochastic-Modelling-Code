function [Ls] = Ls_Finite_Source(rho, P0, c, N, Lq)
%LS_FINITE_SOURCE Ls of Finite Source
%   Returns the number of items serviced (Used in Q3&Q4)
sum_Pn = 0;
for n=0:c-1
    Pn = Pn_Finite_Source(rho, P0, c, N, n);
    sum_Pn = sum_Pn + Pn;
end

sum_nPn = 0;
for n=0:c-1
    Pn = Pn_Finite_Source(rho, P0, c, N, n);
    sum_nPn = sum_nPn + n*Pn;
end

Ls = c * (1 - sum_Pn) + Lq + sum_nPn;
end

