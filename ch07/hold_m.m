clear all;
close all;
clc;
%% 采用全局阈值对图像进行分割
l = imread('rice.png');
J = l > 120;
[width, height] = size(l);
for i = 1 : width
    for j = 1 : height
        if(l(i, j) > 130)
            k(i, j) = 1;
        else
            k(i, j) = 0;
        end
    end
end
figure;
subplot(121); imshow(J);
subplot(122); imshow(k);