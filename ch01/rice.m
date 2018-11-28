close all;
clear all;
clc;
%% 将灰度图像转为二值图像
l = imread('rice.png');
bw1 = im2bw(l, 0.4);
bw2 = im2bw(l, 0.6);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(131), imshow(l);
subplot(132), imshow(bw1);
subplot(133), imshow(bw2);