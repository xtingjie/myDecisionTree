function y = ent(x)
%����һ������������Ϣ��
% x������������һ����һ�������������һ���Ǳ�ǩ

t1 = x(:, end);
t2 = unique(t1);
t3 = length(t2);

t4 = []; %ÿһ�����������
for i = 1:t3
   t4(i) = sum(t1==t2(i)); 
end

t5 = t4/length(t1); %ÿһ��ĸ���
t6 = -t5.*log2(t5);
y = sum(t6);






