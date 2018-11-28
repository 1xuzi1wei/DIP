clear all;
close all;
clc;
%% 对二值图像进行细化
bw = imread('text.png');
bw2 = bwmorph(bw, 'thin', Inf);
figure;
subplot(121); imshow(bw);
subplot(122); imshow(bw2);