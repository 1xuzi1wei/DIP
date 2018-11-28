close all;
clear all;
clc;
a = imread('office_2.jpg');
J1 = imrotate(a, 30);
J2 = imrotate(a, -30);
J3 = imrotate(a, 30, 'bicubic', 'crop');
J4 = imrotate(a, 30, 'bicubic', 'loose');
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(J1);
subplot(122), imshow(J2);
figure;
subplot(121), imshow(J3);
subplot(122), imshow(J4);