lambda = 20;
mu = 12;
cs = 1;
cw = 5;
rho = lambda/mu;

tol = cs/cw;
Ls_prev = inf;
diff = inf;
c = 2;
while diff > tol
    [P0, Lq, Ls, diff] = cost_diff(rho, Ls_prev, c);
    fprintf('c = %g\n', c)
    fprintf('P0 = %f\n', P0)
    fprintf('Lq = %f\n', Lq)
    fprintf('Ls = %f\n', Ls)
    fprintf('Diff = %f\n\n', diff)
    c = c + 1;
    Ls_prev = Ls;
end
