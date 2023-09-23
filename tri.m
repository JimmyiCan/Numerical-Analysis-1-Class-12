function area = tri(S)
% S = stlread("file name");
pts = S.Points; % n by 3 marix
tris = S.ConnectivityList;
trisurf(S)

l = size(tris);
lth = l(1);
area = 0;
for i = 1:lth
    t1 = tris(i,1);
    t2 = tris(i,2);
    t3 = tris(i,3);
    p = [pts(t1,1)-pts(t2,1); pts(t1,2)-pts(t2,2);pts(t1,3)-pts(t2,3)];
    q = [pts(t1,1)-pts(t3,1); pts(t1,2)-pts(t3,2);pts(t1,3)-pts(t3,3)];
    a(i) = 0.5*norm(cross(p,q));
    area = area + a(i);
end