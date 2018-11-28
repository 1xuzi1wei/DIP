close all;
clear all;
clc;
%% 
% 先做了加权平滑处理，再做微分运算，平滑部分的权值有些差异，
% 对噪声有一定的抑制能力，但是不能排除虚假边缘。
% 虽然Sobel 和Prewitt算子边缘定位效果不错，但是检测的边缘容易出现多像素宽度。

l = imread('cameraman.tif');
l = im2double(l);
[J, thresh] = edge(l, 'Prewitt', [], 'both');
figure;
subplot(121); imshow(l);
subplot(122); imshow(J);