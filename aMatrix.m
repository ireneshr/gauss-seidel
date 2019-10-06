%Builds the coefficient matrix for the linear system
function a = aMatrix
  %Initialize the matrix 
  a= zeros(81);
  %Increase counter
  k=1;
  %Mid-lower and Mid-upper diagonal repetitive values
  diag = [1 1 1 1 1 1 1 1 0];
  
  for j=1:81,
    for i=1:81,
      if (j==i),
        %Sets up -4 values in the main diagonal
        a(j, i)= -4;
      end;
    endfor
    if j<81,
      %Mid-lower diagonal
      a(j+1,j)= diag(k);
      %Mid-upper diagonal 
      a(j,j+1)= diag(k);
    end;
    %Restart the iteration over the vector "diag"
    if k==9,
      k=0;
    end;
    k+=1;
  endfor
  
  %Upper and Lower diagonal
  for y=1:72,
    a(y,y+9) = 1;
    a(y+9,y) = 1;
  endfor
endfunction