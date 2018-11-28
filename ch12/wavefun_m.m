clear all;
close all;
clc;
%% 观察母小波sym4的尺度函数、小波函数及滤波器
[phi, psi, xval] = wavefun('sym4',10);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
subplot(121);plot(xval, phi, 'k');
axis([0 8 -0.5 1.3]);
axis square;
subplot(122);plot(xval, psi, 'k');
axis([0 8 -1.5 1.6]);
axis square;
[lo_d, hi_d, lo_r, hi_r] = wfilters('sym4');
figure;
subplot(121), stem(lo_d, '.k');
subplot(122), stem(hi_d, '.k');
figure;
subplot(121), stem(lo_r, '.k');
subplot(122), stem(hi_r, '.k');
