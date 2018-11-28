function OutImage = mirror(InImage, n)
% mirror����ʵ��ͼ����任����
% ����nΪ1ʱ��ʵ��ˮƽ����任
% ����nΪ2ʱ��ʵ�ִ�ֱ����任
% ����nΪ3ʱ��ʵ��ˮƽ��ֱ����任
l = InImage;
% ��ȡ����ͼ��l�Ĵ�С
[M, N, G] = size(l);
% ��ͼ����������ת��Ϊ˫����
l = im2double(l);
% ��ʼ����ͼ�����ȫΪ1����С��ͼ����ͬ
J = ones(M, N, G);
if(n == 1)
    for i = 1 : M
        for j = 1 : N
% n=1,ˮƽ����        
            J(i, j, :) = l(M-i+1, j, :);
        end
    end
    imshow(J);
else if(n == 2)
     for i = 1 : M
        for j = 1 : N
% n=2,��ֱ����
            J(i, j, :) = l(i, N-j+1, :);
        end
     end 
    else if(n == 3)
       for i = 1 : M
        for j = 1 : N
% n=3,ˮƽ��ֱ���� 
            J(i, j, :) = l(M-i+1, N-j+1, :);
        end
       end 
        else
% �������ʱ��ʾ
            error('����n���벻��ȷ��nȡֵ1��2��3');
        end
    end
end
  OutImage = J;
end
