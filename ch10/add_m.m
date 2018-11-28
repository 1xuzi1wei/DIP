clear all;
close all;
clc;
%% 使用加法操作将两幅图像叠加在一起
l = imread('rice.png');
J = imread('cameraman.tif');
k = imadd(l, J);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(131), imshow(l);
subplot(132), imshow(J);
subplot(133), imshow(k);