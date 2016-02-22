tic
pic = imread('seam.jpg');
pic=double(pic)/255;
%figure; imshow(pic);
%pic_t=imrotate(pic,-90);
e = InitializeEdgeEnergy(pic);

[m,p] = ComputeMinEnergy_h(e);
[val,loc] = min(m(:,896));
[r,c] = TraverseP_h(p,loc,896);
tmp = MarkSeam(pic,r,c,[0 0 1],[0 1]);
pic = RemoveSeam_h(pic,r,c);
%e = RemoveSeam(e,r,c);
%tmp = imrotate(tmp,90);
figure;imshow(tmp);
%pic = imrotate(pic_t,90);
figure; imshow(pic);
toc