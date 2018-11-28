clear all;
close all;
clc;
%% 对图像进行闭运算
bw = imread('circles.png');
se = strel('disk', 10);
bw2 = imclose(bw, se);
figure;
subplot(121); imshow(bw);
subplot(122); imshow(bw2, []);