function  [M,P]=ComputeMinEnergy(e)
% e: edge energy. Matrix of size (rows x col)
% M: min energy matrix. Matrix of size (rows x col)
% P: path matrix. Matrix of size (rows x col),
% values: -1: left, 0: up, +1:right
%
% M should be updated recursively as described in lecture notes
% Try to vectorize the update function, try to avoid looping over each
% and every pixel. Hint: M(i,j), depends on
% e(i,j), M(i-1,j-1),M(i-1,j),M(i-1,j+1)

P = zeros(size(e));

e = padarray(e, [0 1], realmax('double')); 
[m,n] = size(e);

M = zeros(size(e));
M(1,:)=e(1,:);
M(:,1) = Inf;
M(:,n) = Inf;
 for i = 2 : m
   tmp = min(M(i-1,1:n-2),M(i-1,2:n-1));
   M(i,2:n-1)=e(i,2:n-1)+min(tmp,M(i-1,3:n));
 end
 

 
    
 [val, indJ] = min(e(m, :));
    for i = m : -1 : 2
        for j = 2:(n-1)

        neighbors = [M(i - 1, j - 1) M(i - 1, j) M(i - 1, j + 1)];
        [val, indIncr] = min(neighbors);
        P(i, j-1) = indIncr-2;

    end
    
    
    end
    M = M(:,2:n-1);
end


