tic
pic = imread('v-200.jpg');
pic=double(pic)/255;
figure; imshow(pic);

e = InitializeEdgeEnergy(pic);
for i=1:200
i
[m,p] = ComputeMinEnergy_h(e);
[val,loc] = min(m(:,size(pic,2)));
[r,c] = TraverseP_h(p,loc,size(pic,2));
%tmp = MarkSeam(pic,r,c,[0 0 1],[0 1]);
%figure;imshow(tmp);
pic = RemoveSeam_h(pic,r,c);
e = RemoveSeam_h(e,r,c);
end

figure; imshow(pic);
toc