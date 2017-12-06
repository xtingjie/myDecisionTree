function [gain, threshold] = infoGain(x, n)
%用于求样本集x在某个特征作为分支节点时，它的信息增益，n表示特征的序号
%特征的取值是连续的，所以先要找到信息增益最大的特征的划分阈值
%返回最好的信息增益，以及相应的划分阈值
t1 = x(:, n); %x中该特征所有的取值
t2 = sort(t1); %从小到大排序
t3 = length(t1);
t11 = ent(x); % x的信息熵
t12 = size(x ,1); % x的样本数量

allGain = [];%记录所有的增益
allThre = [];%记录所有的阈值
for i = 1:(t3-1)
   
    t4 = (t2(i)+t2(i+1))/2; %假设的划分点
    t5 = x(t1<=t4, :); %左子集
    t6 = x(t1>t4, :); %右子集
    t7 = size(t5, 1); %左子集样本数量
    t8 = size(t6, 1); %右自己样本数量
    t9 = ent(t5); %左子集的信息熵
    t10 = ent(t6); %右子集的信息熵
    t13 = t11 - t7/t12*t9 - t8/t12*t10; %信息增益
    allGain = [allGain, t13];
    allThre = [allThre, t4];
    
end

[gain, t15] = max(allGain);
threshold = allThre(t15);





