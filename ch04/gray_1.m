close all;
clear all;
clc;
%% ��ȡ�Ҷ�ͼ���ֱ��ͼ
l = imread('pout.tif');
[M, N] = size(l);
J = zeros(1, 256);
for i = 1 : M
    for j = 1 : N
        k = l(i, j);
% ͳ�Ƹ����Ҷ�ֵ��������    
        J(k+1) = J(k+1) + 1;
    end
end
figure;
subplot(121),imshow(l);
subplot(122),bar(J);
axis tight;
        