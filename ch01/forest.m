close all;
clear all;
clc;
%% 将索引图像变为灰度图像
[x, map] = imread('forest.tif');
l = ind2gray(x, map);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure, imshow(x, map)
figure, imshow(l);