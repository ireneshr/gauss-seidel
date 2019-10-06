%Builds the matrix with the given border conditions
function a = borderMatrix
  %Initialize the matrix 
  a = zeros(11);
  %Grid increase counter
  y=0;
  for i=1:11,
    %Sets the values for column 2 ^ 10 using the border condition equation
    a(i, [1,11])= y*(1-y);
    y+=0.1;
  end;
endfunction