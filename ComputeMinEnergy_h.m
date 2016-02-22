function  [M,P]=ComputeMinEnergy_h(e)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

e = e';
[m,p] = ComputeMinEnergy(e);
M=m';
P=p';

end

