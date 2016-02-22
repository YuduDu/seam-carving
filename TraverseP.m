function [rlist,clist]=TraverseP(P,r0,c0)
% P: path matrix computed as above
% r0,c0: first point of the optimal seam (location of minimum M value in last
% row when you remove columns and minimum value in last column when you
% remove rows).
% rlist,clist: coordinates of the points to be removed from the image

[m,n] = size(P);   
rlist = zeros(m,1);
clist = zeros(m,1);

rlist(1,1)=r0;
clist(1,1) = c0;
for i = 2:m
    rlist(i) = m-i+1;
    clist(i) = clist(i-1) + P(rlist(i-1),clist(i-1));
end

