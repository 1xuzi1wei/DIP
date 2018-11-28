clear all;
close all;
clc;
%% 实现图像的或非和与非运算
l = imread('airfield.bmp');
J = imread('lena.bmp');
l1 = im2bw(l);
J1 = im2bw(J);
H = ~(l1 | J1);
G = ~(l1 & J1);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(l1), axis on;
subplot(122), imshow(J1), axis on;
figure;
subplot(121), imshow(H), axis on;
subplot(122), imshow(G), axis on;