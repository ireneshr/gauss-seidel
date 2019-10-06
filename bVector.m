%Builds the constants vector for the linear system
function b = bVector(values)
  %Increase counter
  k=1;
  %Initialize the vector
  b= zeros(1,81);
  %Load the vector b with the node calculation values obtained from the border matrix
  for t=1:9:73,
    %(a1 + 9) position
    b(t)= -values(k);
    %(a9 + 9) position
    b(t+8)= -values(k);
    k+=1;
  end;
  b=b';
endfunction