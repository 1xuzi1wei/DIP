close all;
clear all;
clc;
%% ���һ��hsvͼ���ͼ������
rgb = reshape(ones(64, 1) * reshape(jet(64), 1, 192), [64, 64, 3]);
hsv = rgb2hsv(rgb);
h = hsv(:, :, 1);
s = hsv(:, :, 2);
v = hsv(:, :, 3);
figure;
subplot(121), imshow(h);
subplot(122), imshow(s);
figure;
subplot(121), imshow(v);
subplot(122), imshow(rgb);