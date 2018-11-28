close all;
clear all;
clc;
%% 采用CANNY算子对含有噪声的图像进行边缘检测
l = imread('rice.png');
l = im2double(l);
k = imnoise(l, 'gaussian', 0, 0.01);
[J, thresh] = edge(k, 'canny');
figure;
subplot(121); imshow(k);
subplot(122); imshow(J);