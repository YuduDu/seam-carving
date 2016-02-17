tic
pic = imread('seam.jpg');
e = InitializeEdgeEnergy(pic);
[m,p] = ComputeMinEnergy(e);
[val,loc] = min(m(600,:))
[r,c] = TraverseP(p,600,loc);
tmp = MarkSeam(pic,r,c,[0 0 1],[0 1]);
figure; imshow(tmp);
tmp2 = RemoveSeam(pic,r,c)
figure; imshow(tmp2);
toc