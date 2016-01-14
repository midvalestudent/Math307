function lightningplot(n,I)
% For an n by n resistor grid, and for a vector, I, of length
% 2*n*(n-1), representing the currents along each edge, the
% function plots the grid with larger currents represented by
% thicker lines.  (The ordering of the edges is that given in
% the problem set).
% Thanks to Harry Yau (Fall 2010) for code to speed up the plotting

  Imax = max(max(abs(I)));
  m = 1;
  for i=1:n
    for j=1:n-1
      x(1,m) = i;
      x(2,m) = i;
      y(1,m) = j;
      y(2,m) = j+1;
      current(m) = round(20*abs(I((n-1)*(i-1)+j))/Imax)/2+0.5;
      m = m+1;
    end
  end
  for i=1:n-1
    for j=1:n
      x(1,m) = i;
      x(2,m) = i+1;
      y(1,m) = j;
      y(2,m) = j;
      current(m) = round(20*abs(I((n-1)*n+n*(i-1)+j))/Imax)/2+0.5;
      m = m+1;
    end
  end
  
  h1 = plot(y,n-x, 'color', 'b');
  axis equal
  axis([0 n+1 -1 n]);
  for i=1:length(current)
      set(h1(i), 'LineWidth', current(i))
  end
end
