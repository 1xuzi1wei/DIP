clear all;
close all;
clc;
%% 创建图像，并进行膨胀操作
bw = zeros(9, 9);
bw(3 : 5, 4 : 6) = 1
se = strel('square', 3);
bw2 = imdilate(bw, se)
figure;
subplot(121); imshow(bw);
subplot(122); imshow(bw2);

