close all;
clear all;
clc;
%% 灰度图像变为索引图像
% 读取灰度图像信息
l = imread('cameraman.tif');
% 实现灰度图像向索引图像的转换，N取8
[x, map] = gray2ind(l, 8);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure, imshow(l);
figure, imshow(x, map)