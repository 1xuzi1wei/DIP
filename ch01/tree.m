%% ������ɫӳ������ɻҶ�ͼ��
%��ȡԭͼ����Ϣ��x��������ɫֵ map��ɫ�� imread������������ʽ����
[x, map] = imread('trees.tif');
%����ɫ��ɫӳ���ת��Ϊ�Ҷ���ɫӳ���
newmap = rgb2gray(map);
%�޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition',[100, 100, 1000, 500]);
%�޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor',[1 1 1]);
%��ʾԭͼ��
figure,imshow(x, map);
%��ʾת����Ҷ�ͼ��
figure,imshow(x, newmap);
