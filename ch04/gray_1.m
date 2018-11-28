close all;
clear all;
clc;
%% 获取灰度图像的直方图
l = imread('pout.tif');
[M, N] = size(l);
J = zeros(1, 256);
for i = 1 : M
    for j = 1 : N
        k = l(i, j);
% 统计各个灰度值的像素数    
        J(k+1) = J(k+1) + 1;
    end
end
figure;
subplot(121),imshow(l);
subplot(122),bar(J);
axis tight;
        