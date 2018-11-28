clear all;
close all;
clc;
%% ���ú���FSPECIAL��IMFILTER��ȡͼ��ı�Ե
% ǿ��ͻ�䣬��������
% ������˹���ӣ���ԭʼͼ���������˹ͼ�������һ��
% �����񻯴����Ч�������ܸ�ԭ������Ϣ��
% ��˹-������˹���ӣ��Ѹ�˹ƽ������������˹�񻯽��������
% ��ƽ�����������ٽ��б�Ե���
l = imread('cameraman.tif');
l = im2double(l);
h = fspecial('laplacian');
J = imfilter(l, h, 'replicate');
k = im2bw(J, 80/255);
figure;
subplot(121); imshow(J);
subplot(122); imshow(k);