clear all;
close all;
clc;
%% �ԻҶ�ͼ���������
bw = imread('cameraman.tif');
se = strel('ball', 11, 90);
bw2 = imdilate(bw, se);
figure;
subplot(121); imshow(bw);
subplot(122); imshow(bw2);