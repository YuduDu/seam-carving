function [im_overlay]=MarkSeam(im,rlist,clist,color,varargin)
%------------------------------------------------------------
%  USAGE: [im_overlay]=MarkSeam(im,rlist,clist,[0 0 1],[0 1]);
      

if (isempty(varargin))
   mix_ratio=[0 1];
else
   mix_ratio=double(varargin{1});
   mix_ratio=mix_ratio/sum(mix_ratio);
end

[rows,cols,channels]=size(im);
mark=zeros(rows,cols);
ind=sub2ind(size(mark),rlist,clist);
mark(ind)=1;
im_overlay=markcontours(im,mark,color,mix_ratio);
      
