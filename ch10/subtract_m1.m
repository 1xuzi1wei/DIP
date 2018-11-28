clear all;
close all;
clc;
%% 利用图像减法运算实现混合图像分离
a = imread('tire.tif');
[m, n] = size(a);
b = imread('eight.tif');
% [m1, n1] = size(b);
c = b;
a = im2double(a);
b = im2double(b);
c = im2double(c);
for i = 1 : m
    for j = 1 : n
        c(i, j) = b(i, j) + a(i, j);
    end 
end
% 求出叠加后图像c和b的差异，赋值给d
d = imabsdiff(c, b);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(a);
subplot(122), imshow(b);
figure;
subplot(121), imshow(c);
subplot(122), imshow(d);