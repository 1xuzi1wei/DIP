clear all;
close all;
clc;
%% ���ú���Denoise()�۲���Ӵ�������������������ִ�е�ʱ���Ӱ��
rgb = imread('eight.tif');
M1 = 3;
[bw1, running1] = Denoise(rgb, M1);
M2 = 9;
[bw2, running2] = Denoise(rgb, M2);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(bw1);
subplot(122), imshow(bw2);
disp('����4������ʱ��')
running1
disp('����10������ʱ��')
running2