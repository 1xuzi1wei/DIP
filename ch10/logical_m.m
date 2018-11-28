clear all;
close all;
clc;
%% ʵ��ͼ��Ļ�Ǻ��������
l = imread('airfield.bmp');
J = imread('lena.bmp');
l1 = im2bw(l);
J1 = im2bw(J);
H = ~(l1 | J1);
G = ~(l1 & J1);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(l1), axis on;
subplot(122), imshow(J1), axis on;
figure;
subplot(121), imshow(H), axis on;
subplot(122), imshow(G), axis on;