clear all;
close all;
clc;
%% ʵ��rgbͼ�񵽻Ҷ�ͼ���ת��
[x, map] = imread('trees.tif');
r = map(x+1, 1);r = reshape(r, size(x));
g = map(x+1, 2);g = reshape(g, size(x));
b = map(x+1, 3);b = reshape(b, size(x));
xrgb = 0.299 * r + 0.587 * g + 0.114 * b;
n = 64;
x1 = round(xrgb * (n - 1)) + 1;
map2 = gray(n);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
image(x1);
colormap(map2);