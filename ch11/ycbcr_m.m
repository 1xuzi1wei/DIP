close all;
clear all;
clc;
%% 将rgb模型转换为YCBCR模型
rgb = imread('board.tif');
ycbcr = rgb2ycbcr(rgb);
figure;
subplot(121), imshow(rgb);
subplot(122), imshow(ycbcr);