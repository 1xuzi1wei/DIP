function J = transp(l)
% l表示输入的原始图像
% J表示转置后的图像
[M, N, G] = size(l);
l = im2double(l);
J = ones(M, N, G);
for i = 1 : M
    for j = 1 : N
        J(j, i, :) = l(i, j, :);
    end
end


