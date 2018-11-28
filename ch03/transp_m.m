close all;
clear all;
clc;
l = imread('lena.bmp');
J = transp(l);

% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);

figure,imshow(J);