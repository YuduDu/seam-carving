tic
pic = imread('seam.jpg');
pic=double(pic)/255;
figure; imshow(pic);

e = InitializeEdgeEnergy(pic);
for i=1:200
i
[m,p] = ComputeMinEnergy_h(e);
[val,loc] = min(m(:,896));
[r,c] = TraverseP_h(p,loc,896);
%tmp = MarkSeam(pic,r,c,[0 0 1],[0 1]);
%figure;imshow(tmp);
pic = RemoveSeam_h(pic,r,c);
e = RemoveSeam_h(e,r,c);
end

figure; imshow(pic);
toc