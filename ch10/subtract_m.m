clear all;
close all;
clc;
%% ����ͼ���������ʵ��DSA��Ӱ
a = imread('cameraman.tif');
b = imread('testpat1.png');
c = imsubtract(a, b);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(c);
subplot(122), imshow(255 - c);