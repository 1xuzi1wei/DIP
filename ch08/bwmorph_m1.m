clear all;
close all;
clc;
%% �Զ�ֵͼ�����ϸ��
bw = imread('circbw.tif');
bw2 = bwmorph(bw, 'skel', Inf);
figure;
subplot(121); imshow(bw);
subplot(122); imshow(bw2);