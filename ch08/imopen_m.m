clear all;
close all;
clc;
%% ��ͼ����п�����
bw = imread('snowflakes.png');
se = strel('disk', 10);
bw2 = imopen(bw, se);
figure;
subplot(121); imshow(bw);
subplot(122); imshow(bw2, []);