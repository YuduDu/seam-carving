tic
pic = imread('seam.jpg');
pic=double(pic)/255;
figure; imshow(pic);
e = InitializeEdgeEnergy(pic);
for i=1:200

[m,p] = ComputeMinEnergy(e);
[val,loc] = min(m(600,:));
[r,c] = TraverseP(p,600,loc);
%tmp = MarkSeam(pic,r,c,[0 0 1],[0 1]);
%figure;imshow(tmp);
pic = RemoveSeam(pic,r,c);
e = RemoveSeam(e,r,c);
end
figure; imshow(pic);
toc