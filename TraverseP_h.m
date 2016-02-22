function [rlist,clist]=TraverseP_h(P,r0,c0)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[m,n] = size(P);
rlist = zeros(n,1);
clist = zeros(n,1);

rlist(1,1)=r0;
clist(1,1) = c0;
for i = 2:n
    clist(i)=n-i+1;
    rlist(i)=rlist(i-1)+P(rlist(i-1),clist(i-1));
end
end

