function J = transp(l)
% l��ʾ�����ԭʼͼ��
% J��ʾת�ú��ͼ��
[M, N, G] = size(l);
l = im2double(l);
J = ones(M, N, G);
for i = 1 : M
    for j = 1 : N
        J(j, i, :) = l(i, j, :);
    end
end


