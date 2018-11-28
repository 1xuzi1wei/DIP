close all;
clear all;
clc;
%% 二值图像的黑白点噪声滤波
l = imread('coins.png');
J = imnoise(l, 'salt & pepper', 0.02);
h = ones(3, 3) / 5;
h(1, 1) = 0;
h(1, 3) = 0;
h(3, 1) = 0;
h(3, 3) = 0;
k = imfilter(J, h);
figure;
subplot(131);imshow(l);
subplot(132);imshow(J);
subplot(133);imshow(k);