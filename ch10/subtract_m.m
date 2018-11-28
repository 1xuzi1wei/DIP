clear all;
close all;
clc;
%% 利用图像减法运算实现DSA减影
a = imread('cameraman.tif');
b = imread('testpat1.png');
c = imsubtract(a, b);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(c);
subplot(122), imshow(255 - c);