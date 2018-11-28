close all;
clear all;
clc;

l = imread('cameraman.tif');
J1 = mirror(l, 1);
J2 = mirror(l, 2);
J3 = mirror(l, 3);

% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);

figure;
subplot(121), imshow(l);
subplot(122), imshow(J1);
figure;
subplot(121), imshow(J2);
subplot(122), imshow(J3);