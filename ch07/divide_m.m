clear all;
close all;
clc;
%% 采用函数im2bw进行彩色图像分割
[x, map] = imread('trees.tif');
J = ind2gray(x, map);
k = im2bw(x, map, 0.4);
figure;
subplot(121); imshow(J);
subplot(122); imshow(k);
