clear all;
close all;
clc;
%% ��ͼ��������ͺ͸�ʴ����Ҷ�ͼ���Ե
bw1 = imread('rice.png');
se = strel('disk', 2);
bw2 = imerode(bw1, se);
bw3 = imdilate(bw1, se);
bw4 = bw3 - bw2;
figure;
subplot(121); imshow(bw1);
subplot(122); imshow(bw4);