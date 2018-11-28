function J = move1(l, a, b)
% 定义一个函数名字为move，l表示输入图像，a和b描述l图像沿着x轴和y轴移动的距离
% 考虑平移后，图像溢出情况，采用扩大显示区域的方法
% 输入图像l的大小
[M, N, G] = size(l);
% 将图像数据类型转换为双精度
l = im2double(l);
% 初始化新图像矩阵全为1,大小根据考虑x轴和y轴的平移范围
J = ones(M + abs(a), N + abs(b), G);
for i = 1 : M
    for j = 1 : N
% 如果进行右下移动，对新图像矩阵进行赋值
        if(a<0 && b<0);
            J(i, j, :) = l(i, j, :);
% 如果进行右上移动，对新图像矩阵进行赋值           
        else if(a>0 && b>0);               
            J(i+a, j+b, :) = l(i, j, :);
% 如果进行左上移动，对新图像矩阵进行赋值 
        else if(a>0 && b<0);              
            J(i+a, j, :) = l(i, j, :);
% 如果进行左下移动，对新图像矩阵进行赋值             
        else
            J(i, j+b, :) = l(i, j, :);
            end
            end
        end
    end
end    
                
