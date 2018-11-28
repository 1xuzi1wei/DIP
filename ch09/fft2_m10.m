clear all;
close all;
clc;
%% ���ú���dctmtx()ͼ��Ķ�ά��ɢ���ұ任
l = imread('cameraman.tif');
l = im2double(l);
[M, N] = size(l);
p = dctmtx(M);
q = dctmtx(N);
J = p * l * q';
k = dct2(l);
e = J - k;
find(abs(e) > 0.000001)
figure;
subplot(121);imshow(J);
subplot(122);imshow(k);
