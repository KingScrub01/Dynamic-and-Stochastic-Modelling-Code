% Solving a system of equations for Q5
% x,y,z are Lambda[A,B,C] respectively
syms x y z
eqn1 = x - 0.2*y == 8;
eqn2 = 0.1*x - y + 0.5*z == -4;
eqn3 = 0.2*x + 0.3*y - z == -5;

[A,B] = equationsToMatrix([eqn1, eqn2, eqn3], [x, y, z]);

X = linsolve(A,B);

disp(X)