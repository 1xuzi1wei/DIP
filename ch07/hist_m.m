clear all;
close all;
clc;
%% 获取灰度图像的直方图
l = imread('rice.png');
figure;
subplot(121); imshow(l);
subplot(122); imhist(l, 200);