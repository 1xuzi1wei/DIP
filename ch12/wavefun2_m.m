clear all;
close all;
clc;
%% ���ú���wavefun2()���㲢��ʾ��άС�������ͳ߶Ⱥ���
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
iter = 4;
wav1 = 'db4';
wav2 = 'bior1.3';
[s, w1, w2, w3, xyval] = wavefun2(wav1, iter, 'plot');
[s1, w11, w21, w31, xyval1] = wavefun2(wav2, iter, 'plot');
