close all;
clear all;
clc;
%% 通过函数imhist()计算和显示灰度图像的直方图
l = imread('pout.tif');
figure;
subplot(121),imshow(l);
subplot(122),imhist(l);