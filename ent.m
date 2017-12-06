function y = ent(x)
%计算一个样本集的信息熵
% x就是样本集，一行是一个样本，，最后一列是标签

t1 = x(:, end);
t2 = unique(t1);
t3 = length(t2);

t4 = []; %每一类的样本数量
for i = 1:t3
   t4(i) = sum(t1==t2(i)); 
end

t5 = t4/length(t1); %每一类的概率
t6 = -t5.*log2(t5);
y = sum(t6);






