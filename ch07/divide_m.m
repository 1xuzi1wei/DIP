clear all;
close all;
clc;
%% ���ú���im2bw���в�ɫͼ��ָ�
[x, map] = imread('trees.tif');
J = ind2gray(x, map);
k = im2bw(x, map, 0.4);
figure;
subplot(121); imshow(J);
subplot(122); imshow(k);
