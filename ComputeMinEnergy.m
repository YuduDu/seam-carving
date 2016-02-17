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

e = padarray(e, [0 1], realmax('double')); % to avoid handling border elements
%figure; imshow(M);
[m,n] = size(e);
M = zeros(size(e));
M(:,1) = 255;
M(:,n) = 255;
 for i = 2 : m
        for j = 2 : (n - 1)
            neighbors = [e(i - 1, j - 1) e(i - 1, j) e(i - 1, j + 1)];
            M(i, j) = e(i, j) + min(neighbors);
        end
 end
    
 [val, indJ] = min(e(m, :));
    
    %go backward and save (i, j)
    for i = m : -1 : 2
        for j = 2:(n-1)
        %optSeam(i) = indJ - 1;
        neighbors = [M(i - 1, j - 1) M(i - 1, j) M(i - 1, j + 1)];
        [val, indIncr] = min(neighbors);
        P(i, j-1) = indIncr-2;

    end
    
    
    end
    M = M(:,2:n-1);
end


