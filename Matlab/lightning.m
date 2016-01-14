function I = lightning(n,a,p)

% This function calculates the currents along each edge 
% for an n × n network of nodes with a parameter value of a 
% and for a vector p (of length 2(n − 1)n) 
% that contains the probability for each edge.

  % create the incidence matrix D
  D = zeros(2*n*(n-1),n^2);
  
  % first deal with the horizontal edges
  for i=1:n
    for j=1:n-1
      D((n-1)*(i-1)+j,n*(i-1)+j)   = -1;
      D((n-1)*(i-1)+j,n*(i-1)+j+1) =  1;
    end
  end
  
  % now deal with the vertical edges
  for i=1:n-1
    for j=1:n
      D((n-1)*n+n*(i-1)+j,n*(i-1)+j) = -1;
      D((n-1)*n+n*(i-1)+j,n*i+j)     =  1;
    end
  end
  
  % find the resistance matrix according to the rule given in the
  % question
  R = diag(exp(a*p));
  
  % find the Laplacian matrix
  L = D'*R^(-1)*D;
 
  % reorder the nodes so that the first two have the prescribed
  % voltage
  L = L([1 n^2 2:n^2-1],[1 n^2 2:n^2-1]);
  
  % find the submatrices A, B and C
  A = L(1:2,1:2);
  
  B = L(3:n^2,1:2);
  
  C = L(3:n^2,3:n^2);
  
  % calculate the voltage at all the remaining nodes
  v = -C\B*[1; 0];
 
  % add in the prescribed voltages at the first and last nodes
  v = [1; v; 0];
  
  % calculate the current through each edge
  I = R^(-1)*D*v;

 