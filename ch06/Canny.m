close all;
clear all;
clc;
%% ����CANNY���ӶԺ���������ͼ����б�Ե���
l = imread('rice.png');
l = im2double(l);
k = imnoise(l, 'gaussian', 0, 0.01);
[J, thresh] = edge(k, 'canny');
figure;
subplot(121); imshow(k);
subplot(122); imshow(J);