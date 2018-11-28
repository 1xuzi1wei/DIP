clear all;
close all;
clc;
%% 通过函数imcomplement()实现图像矩阵和数据矩阵的求补运算
J = imread('rice.png');
J1 = im2bw(J);
J2 = imcomplement(J);
J3 = imcomplement(J1);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(131), imshow(J1);
subplot(132), imshow(J2);
subplot(133), imshow(J3);