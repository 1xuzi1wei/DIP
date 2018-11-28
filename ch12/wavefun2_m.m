clear all;
close all;
clc;
%% 利用函数wavefun2()计算并显示二维小波函数和尺度函数
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
iter = 4;
wav1 = 'db4';
wav2 = 'bior1.3';
[s, w1, w2, w3, xyval] = wavefun2(wav1, iter, 'plot');
[s1, w11, w21, w31, xyval1] = wavefun2(wav2, iter, 'plot');
