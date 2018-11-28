function J = move(l, a, b)
% 定义一个函数名字move，l表示输入图像，a和b描述了l图像沿着x轴和y轴移动的距离
% 不考虑平移之后，图像溢出情况，找不到对应点的地方都赋值为1
% 获取输入图像l的大小
[M, N, G] = size(l);
% 将图像数据类型转换为双精度
l = im2double(l);
% 初始化新图像图像矩阵全为1，大小与输入图像相同
J = ones(M, N, G);
for i = 1 : M
    for j = 1 : N
% 判断平移以后行列坐标是否超出范围
        if((i+a>=1) && (i+a<=M) && (j+b>=1) && (j+b<=N));
%进行图像平移
            J(i+a, j+b) = l(i, j, :);
        end
    end
end
