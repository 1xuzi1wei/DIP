close all;
clear all;
clc;
%% ����Log���ӶԺ���������ͼ����б�Ե���
l = imread('cameraman.tif');
l = im2double(l);
k = imnoise(l, 'gaussian', 0, 0.005);
[J, thresh] = edge(k, 'log', [], 2.3);
figure;
subplot(121); imshow(k);
subplot(122); imshow(J);