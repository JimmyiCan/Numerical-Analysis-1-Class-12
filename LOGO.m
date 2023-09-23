function z = LOGO()
N=101;
s = linspace(-1, 1, N); 
[x, y] = meshgrid(s, s);
z = membrane(1, (N-1)/2);
surf(x, y, z)