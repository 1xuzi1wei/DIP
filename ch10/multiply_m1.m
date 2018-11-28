clear all;
close all;
clc;
%% 利用图像乘法运算实现图像亮度的控制
a = imread('house.jpg');
b = immultiply(a, 1.5);
c = immultiply(a, 0.5);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(b), axis on;
subplot(122), imshow(c), axis on;