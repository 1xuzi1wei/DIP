%% 输入颜色映射表，生成灰度图像
%读取原图像信息，x是像素颜色值 map是色谱 imread函数的索引形式读入
[x, map] = imread('trees.tif');
%将彩色颜色映射表转换为灰度颜色映射表
newmap = rgb2gray(map);
%修改图形图像位置的默认设置
set(0, 'defaultFigurePosition',[100, 100, 1000, 500]);
%修改图形背景颜色的设置
set(0, 'defaultFigureColor',[1 1 1]);
%显示原图像
figure,imshow(x, map);
%显示转换后灰度图像
figure,imshow(x, newmap);
