clear all;
close all;
clc;
%% ��ͼ����б�����
bw = imread('circles.png');
se = strel('disk', 10);
bw2 = imclose(bw, se);
figure;
subplot(121); imshow(bw);
subplot(122); imshow(bw2, []);