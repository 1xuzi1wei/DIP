clear all;
close all;
clc;
%% 对图像进行二维离散余弦变换
bw = imread('coins.png');
bw = im2double(bw);
bw2 = log(abs(dct2(bw)));
figure;
subplot(121); imshow(bw);
subplot(122); imshow(bw2,[]);