%% RGBͼ��ת��Ϊ����ͼ��
% ��ȡԭͼ����Ϣ
RGB = imread('football.jpg');
% ��RGBͼ���Ϊ����ͼ��,��ɫ������64��
[x1, map1] = rgb2ind(RGB, 64);
[x2, map2] = rgb2ind(RGB, 0.2);
% ����һ��ָ����ɫ��Ŀ��RGB��ɫӳ���
map3 = colorcube(128);
x3 = rgb2ind(RGB, map3);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
% ��ʾ����С���ת���������ͼ��
subplot(131), imshow(x1, map1);
% ��ʾ�þ���������ת��������ͼ��
subplot(132), imshow(x2, map2);
% ��ʾ����ɫ���Ʒ�ת��������ͼ��
subplot(133), imshow(x3, map3);



