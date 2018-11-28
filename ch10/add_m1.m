clear all;
close all;
clc;
%% 给图像中每个像素加一个常数改变图像亮度
l = imread('pepper.png');
J = imadd(l, 30);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(l);
subplot(122), imshow(J);