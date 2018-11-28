clear all;
close all;
clc;
%% 对灰度图像进行腐蚀
bw = imread('circles.png');
se = strel('disk', 11);
bw2 = imerode(bw, se);
figure;
subplot(121); imshow(bw);
subplot(122); imshow(bw2);