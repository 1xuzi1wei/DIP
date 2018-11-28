close all;
clear all;
clc;
%% 利用阈值法将灰度图像转为索引图像
l = imread('coins.png');
x = grayslice(l, 32);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure, imshow(l);
% jet(M)是相当于colormap,是一个M x 3的数组
figure, imshow(x, jet(32))