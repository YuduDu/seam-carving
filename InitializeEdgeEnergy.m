function [ e ] = InitializeEdgeEnergy( im )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    e = greyenergy(im(:, :, 1)) + greyenergy(im(:, :, 2)) + greyenergy(im(:, :, 3));
end


