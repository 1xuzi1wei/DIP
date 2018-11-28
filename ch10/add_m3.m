clear all;
close all;
clc;
%% 调用函数Denoise()观察叠加次数对消除噪声及程序执行的时间的影响
rgb = imread('eight.tif');
M1 = 3;
[bw1, running1] = Denoise(rgb, M1);
M2 = 9;
[bw2, running2] = Denoise(rgb, M2);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(bw1);
subplot(122), imshow(bw2);
disp('叠加4次运行时间')
running1
disp('叠加10次运行时间')
running2