clear all;
close all;
clc;
%% 利用图像乘法运算实现图像局部显示
a = imread('ipexroundness_04.png');
b = imread('ipexroundness_01.png');
c = immultiply(a, b);
a1 = im2double(a);
b1 = im2double(b);
c1 = immultiply(a1, b1);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(a), axis on;
subplot(122), imshow(b), axis on;
figure;
subplot(121), imshow(c), axis on;
subplot(122), imshow(c1), axis on;