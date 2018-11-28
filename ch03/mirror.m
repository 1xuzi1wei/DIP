function OutImage = mirror(InImage, n)
% mirror函数实现图像镜像变换功能
% 参数n为1时，实现水平镜像变换
% 参数n为2时，实现垂直镜像变换
% 参数n为3时，实现水平垂直镜像变换
l = InImage;
% 获取输入图像l的大小
[M, N, G] = size(l);
% 将图像数据类型转换为双精度
l = im2double(l);
% 初始化新图像矩阵全为1，大小与图像相同
J = ones(M, N, G);
if(n == 1)
    for i = 1 : M
        for j = 1 : N
% n=1,水平镜像        
            J(i, j, :) = l(M-i+1, j, :);
        end
    end
    imshow(J);
else if(n == 2)
     for i = 1 : M
        for j = 1 : N
% n=2,垂直镜像
            J(i, j, :) = l(i, N-j+1, :);
        end
     end 
    else if(n == 3)
       for i = 1 : M
        for j = 1 : N
% n=3,水平垂直镜像 
            J(i, j, :) = l(M-i+1, N-j+1, :);
        end
       end 
        else
% 输入错误时提示
            error('参数n输入不正确，n取值1、2、3');
        end
    end
end
  OutImage = J;
end
