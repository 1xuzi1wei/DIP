clear all;
close all;
clc;
%% 对二值图像进行膨胀
bw = imread('text.png');
se = strel('line', 11, 90);
bw2 = imdilate(bw, se);
figure;
subplot(121); imshow(bw);
subplot(122); imshow(bw2);