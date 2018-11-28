clear all;
close all;
clc;
%% ��ͼ����и�ʴ������
bw1 = imread('circbw.tif');
se = strel('rectangle', [40, 30]);
bw2 = imerode(bw1, se);
bw3 = imdilate(bw2, se);
figure;
subplot(131); imshow(bw1);
subplot(132); imshow(bw2);
subplot(133); imshow(bw3);