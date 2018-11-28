clear all;
close all;
clc;
%% 采用函数FSPECIAL和IMFILTER提取图像的边缘
% 强调突变，弱化慢变
% 拉普拉斯算子：将原始图像和拉普拉斯图像叠加在一起，
% 保持锐化处理的效果，又能复原背景信息。
% 高斯-拉普拉斯算子：把高斯平滑器好拉普拉斯锐化结合起来，
% 先平滑掉噪声，再进行边缘检测
l = imread('cameraman.tif');
l = im2double(l);
h = fspecial('laplacian');
J = imfilter(l, h, 'replicate');
k = im2bw(J, 80/255);
figure;
subplot(121); imshow(J);
subplot(122); imshow(k);