clear all;
close all;
clc;
%% 通过函数imdivide()完成图像除法运算
l = imread('office_1.jpg');
J = imread('office_2.jpg');
lp = imdivide(J, l);
k = imdivide(J, 0.5);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(l), axis on;
subplot(122), imshow(J), axis on;
figure;
subplot(121), imshow(lp), axis on;
subplot(122), imshow(k), axis on;