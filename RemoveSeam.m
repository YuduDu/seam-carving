function  [im2] =RemoveSeam(im,rlist,clist)
% im: input image color or gray scale. Matrix of size (rows x col x channels)
% rlist,clist: coordinates of the points to be removed from the image
% im2: carved image color or gray scale. Matrix of size (rows-1 x col xchannels) or (rows x cols-1 x channels)
[m,n] = size(im);
im2 = zeros([m,n-1]);
for i=1:size(rlist)
    current_line = im(rlist(i),:,:);
    current_line(:, clist(i),:) = [];
    im2(rlist(i),:,:) = current_line;
end

end

