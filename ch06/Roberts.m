close all;
clear all;
clc;
%% 采用Roberts算子进行图像的边缘检测
% 定位精度较高，但容易丢失一部分边缘，
% 同时因为图像没有经过平滑处理，因此不具备能抑制噪声的能力。

l = imread('rice.png');
l = im2double(l);
[J, thresh] = edge(l, 'roberts', 35/255);
figure;
subplot(121); imshow(l);
subplot(122); imshow(J);