%% RGB图像转化为索引图像
% 读取原图像信息
RGB = imread('football.jpg');
% 将RGB图像变为索引图像,颜色种类是64种
[x1, map1] = rgb2ind(RGB, 64);
[x2, map2] = rgb2ind(RGB, 0.2);
% 创建一个指定颜色数目的RGB颜色映射表
map3 = colorcube(128);
x3 = rgb2ind(RGB, map3);
% 修改图形图像位置的默认设置
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% 修改图形背景颜色的设置
set(0, 'defaultFigureColor', [1 1 1]);
figure;
% 显示用最小方差法转换后的索引图像
subplot(131), imshow(x1, map1);
% 显示用均匀量化法转换后索引图像
subplot(132), imshow(x2, map2);
% 显示用颜色近似法转换后索引图像
subplot(133), imshow(x3, map3);



