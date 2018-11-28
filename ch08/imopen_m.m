clear all;
close all;
clc;
%% 对图像进行开运算
bw = imread('snowflakes.png');
se = strel('disk', 10);
bw2 = imopen(bw, se);
figure;
subplot(121); imshow(bw);
subplot(122); imshow(bw2, []);