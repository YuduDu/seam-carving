function  [im2] =RemoveSeam(im,rlist,clist)
% im: input image color or gray scale. Matrix of size (rows x col x channels)
% rlist,clist: coordinates of the points to be removed from the image
% im2: carved image color or gray scale. Matrix of size (rows-1 x col xchannels) or (rows x cols-1 x channels)
[m n d]=size(im);

[a,b]=size(rlist);

for i = 1:a
    im(i,clist(i):end-1,:)=im(i,clist(i)+1:end,:);
end

im(:,end,:)=[];
im2 = im;
end

