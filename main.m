%Clear workspace
clear
clc

%Variables
Nx= 11;     %Number of nodes in X axis
Ny= 11;     %Number of nodes in Y axis
tol = 1d-6; %Tolerance
err = 1;    %Error

%Program execution
bm = borderMatrix;
aMatrix = aMatrix;
bVector = bVector(bm([2:10],[1]));
[Jm, Jerr, Jiter] = jacobiMethod(bm, err, tol, Ny, Nx);
[GSm, GSerr, GSiter] = gauss_seidelMethod(bm, err, tol, Ny, Nx);
Gm = gaussMethod(aMatrix, bVector, bm);
surf(Gm);
%surf(GSm);
%surf(Jm);
