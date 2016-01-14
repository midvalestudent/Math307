I=imread("goat.tif");
I=sparse(I);
[u s v]=svds(I,100);
I=u*s*v';
I=round(I);
I=full(I);
imagesc(I);
