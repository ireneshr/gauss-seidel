%Executes Gauss-Seidel iterative method
function [a, err, k] = gauss_seidelMethod(a, err, tol, Ny, Nx)
  %Increase counter
  k=0;
  %Copy of the original matrix
  a2=a;
  %Iteration of Gauss-Seidel method until convergence
  while err > tol
    k+=1;
    
    %Loop throught the computational nodes
    for j=2:Ny-1,
      for i=2:Nx-1,
        %Values of the iteration are saved in the original matrix
        a2(j, i)= 0.25*(a2(j+1,i)+ a2(j,i+1)+a2(j-1,i)+ a2(j,i-1));
      end
    end
    
    %Error calculation
    err = sqrt(sum(sum((a2-a).^2)));
    
    %Matrix update
    a=a2;
  end
endfunction
