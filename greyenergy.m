function [ res ] = greyenergy( I )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    res = abs(imfilter(I, [-1,0,1],'replicate'))+ abs(imfilter(I, [-1;0;1], 'replicate'));
    

end

