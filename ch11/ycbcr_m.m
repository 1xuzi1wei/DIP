close all;
clear all;
clc;
%% ��rgbģ��ת��ΪYCBCRģ��
rgb = imread('board.tif');
ycbcr = rgb2ycbcr(rgb);
figure;
subplot(121), imshow(rgb);
subplot(122), imshow(ycbcr);