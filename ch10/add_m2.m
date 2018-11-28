clear all;
close all;
clc;
%% 使用加法运算消除一幅图像的附加噪声
rgb = imread('eight.tif');
a = imnoise(rgb, 'gaussian', 0, 0.05);
l = a;
l = im2double(l);
rgb = im2double(rgb);
M = 3;
for i = 1 : M
    l = imadd(l, rgb);
end
avg = l / (M + 1);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(a);
subplot(122), imshow(avg);