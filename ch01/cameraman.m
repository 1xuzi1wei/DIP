close all;
clear all;
clc;
%% �Ҷ�ͼ���Ϊ����ͼ��
% ��ȡ�Ҷ�ͼ����Ϣ
l = imread('cameraman.tif');
% ʵ�ֻҶ�ͼ��������ͼ���ת����Nȡ8
[x, map] = gray2ind(l, 8);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure, imshow(l);
figure, imshow(x, map)