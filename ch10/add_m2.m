clear all;
close all;
clc;
%% ʹ�üӷ���������һ��ͼ��ĸ�������
rgb = imread('eight.tif');
a = imnoise(rgb, 'gaussian', 0, 0.05);
l = a;
l = im2double(l);
rgb = im2double(rgb);
M = 3;
for i = 1 : M
    l = imadd(l, rgb);
end
avg = l / (M + 1);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(a);
subplot(122), imshow(avg);