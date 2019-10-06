%Executes Gauss method
function  a = gaussMethod(a, b, bm)
  %Expanded matrix
  eMatrix = [a b];
  %Row and column values
  [Ny, Nx] = size(eMatrix);
  %Iterations to get the upper triangular matrix
  for j=1:Ny-1,
    for i=j+1:Ny,
      eMatrix(i,j:Nx) = eMatrix(i,j:Nx)-eMatrix(i,j)/ eMatrix(j,j)*eMatrix(j,j:Nx);
    end 
  end
  %Initializes the solution vector
  x = zeros(Ny,1);
  x(Ny)= eMatrix(Ny,Nx)/eMatrix(Ny,Ny);
  %Calculates and assign the solution to the x vector
  for i= Ny-1:-1:1,
    x(i) = (eMatrix(i,Nx)-eMatrix(i,i+1:Ny)*x(i+1:Ny))/eMatrix(i,i);
  end
  %Builds the solution matrix from the border Matrix and the x vector
  a= matrixSolution(bm, x);  
endfunction

function bm = matrixSolution(bm, b)
  [Ny,Nx] = size(bm);
  t=1;
  %Loop throught the nodes to assign the solutions obtained previously to the border matrix
  for j=2:Ny-1,
    for i=2:Nx-1,
      bm(j, i)= b(t);
      t+=1;
    end
  end
endfunction