clear all;
close all;
clc;
%% ���ú���FSPECIAL����Ԥ����ģ��
format rat;
hsobel = fspecial('sobel')
hprewitt = fspecial('prewitt')
hlaplacian = fspecial('laplacian')
hlog = fspecial('log', 3)
format short;