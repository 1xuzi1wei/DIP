clear all;
close all;
clc;
%% ����ͼ���������ʵ�ֻ��ͼ�����
a = imread('tire.tif');
[m, n] = size(a);
b = imread('eight.tif');
% [m1, n1] = size(b);
c = b;
a = im2double(a);
b = im2double(b);
c = im2double(c);
for i = 1 : m
    for j = 1 : n
        c(i, j) = b(i, j) + a(i, j);
    end 
end
% ������Ӻ�ͼ��c��b�Ĳ��죬��ֵ��d
d = imabsdiff(c, b);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(a);
subplot(122), imshow(b);
figure;
subplot(121), imshow(c);
subplot(122), imshow(d);