function s = IntegralLOGO()
N = 101;
z = membrane(1, (N-1)/2);
a = -1;
b = 1;
c = -1;
d = 1;
n = 101;
m = 101;


hx = (b-a)/(n-1);
hy = (d-c)/(m-1);
s = 0;
for i = 1:n
    if (i == 1 || i == n)
        p = 1;
    elseif (rem(i,2) ~= 0)
        p = 2;
    else 
        p = 4;
    end
    for j = 1:m
        if (j == 1 || j == m)
            q = 1;
        elseif (rem(j,2)~= 0)
            q = 2;
        else 
            q = 4;
        end
        s = s + p*q*z(j,i);
    end
end
format long
s = (hx*hy)/9 * s;


