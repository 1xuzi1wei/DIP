close all;
clear all;
clc;

[x, map] = imread('trees.tif');
J1 = imresize(x, 0.25);
J2 = imresize(x, 3.5);
J3 = imresize(x, [64, 40]);
J4 = imresize(x, [64, NaN]);
J5 = imresize(x, 1.6, 'bilinear');
J6 = imresize(x, 1.6, 'triangle');
J7 = imresize(x, 'antialiasing',true,'Method','nearest','Colormap','original','Scale',0.15);

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
figure;
subplot(121), imshow(J5);
subplot(122), imshow(J6);
figure;
subplot(121), imshow(x);
subplot(122), imshow(J7);

