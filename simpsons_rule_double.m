function s = simpsons_rule_double(f,a,b,c,d,n,m)
%input is # points minus 1
hx = (b-a)/n;
hy = (d-c)/m;
s = 0;
for i = 0:n
    if (i == 0 || i == n)
        p = 1;
    elseif (rem(i,2) ~= 0)
        p = 4;
    else 
        p = 2;
    end
    for j = 0:m
        if (j == 0 || j == m)
            q = 1;
        elseif (rem(j,2)~= 0)
            q = 4;
        else 
            q = 2;
        end
        x = a + i*hx;
        y = c + j*hy;
        s = s + p*q*f(x,y);
    end
end
s = (hx*hy)/9 * s;
end