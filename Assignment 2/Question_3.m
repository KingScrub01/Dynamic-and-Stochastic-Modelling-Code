lambda = 60/25;
mu = 6;
rho = lambda/mu;
N = 5;
c = 1;

% This is a finite source problem, we can use the same formula for c=1 as
% for when c ~= 1. The formulae for c=1 are just presimplified.
P0 = P0_Finite_Source(rho, c, N);
P1 = Pn_Finite_Source(rho, P0, c, N, 1);
Lq = N - (lambda+mu) / lambda * (1-P0);
Ls = Ls_Finite_Source(rho, P0, c, N, Lq);

fprintf('P0 = %f\n', P0)
fprintf('P0 = %f\n', sum_)
fprintf('P1 = %f\n', P1)

fprintf('Lq = %f\n', L)
fprintf('Ls = %f\n', Ls)
