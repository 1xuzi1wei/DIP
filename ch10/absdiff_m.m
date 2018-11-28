clear all;
close all;
clc;
%% 函数imabsdiff()实现图像矩阵和数据矩阵的绝对差值
l = imread('cameraman.tif');
J = filter2(fspecial('prewitt'), l);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
k = imabsdiff(double(l), J);
figure;
subplot(131), imshow(l);
subplot(132), imshow(J, []);
subplot(133), imshow(k, []);
x = [255 10 75; 44 225 100];
y = [50 50 50; 50 50 50];
x1 = uint8([255 10 75; 44 225 100]);
y1 = uint8([50 50 50; 50 50 50]);
z = imabsdiff(x, y)
z1 = abs(x - y)
z2 = abs(x1 - y1)
disp('z和z1比较结果：'),z_z1 = (z == z1)
disp('z和z2比较结果：'),z_z2 = (z == z2)
