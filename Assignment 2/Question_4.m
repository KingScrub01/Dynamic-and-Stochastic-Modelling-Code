lambda = 4;
mu = 6;
rho = lambda/mu;
N = 8;
c = 2;

P0 = P0_Finite_Source(rho, c, N);
P1 = Pn_Finite_Source(rho, P0, c, N, 1);
Lq = Lq_Finite_Source(rho, P0, c, N);
Ls = Ls_Finite_Source(rho, P0, c, N, Lq);

fprintf('P0 = %f\n', P0)
fprintf('P1 = %f\n', P1)
fprintf('Lq = %f\n', Lq)
fprintf('Ls = %f\n', Ls)