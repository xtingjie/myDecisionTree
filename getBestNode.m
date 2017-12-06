function [n, thre] = getBestNode(x, feaSet)
% 用于找到最好的特征来作为分支节点
% x是样本集，最后一列是标签,feaSet是可选的特征的序号
% n是最好的节点的序号，thre是相应的划分阈值

t1 = length(feaSet);

allGain = [];
allThre = [];
for i = 1:t1
    [t2, t3] = infoGain(x, feaSet(i));
    allGain = [allGain, t2];
    allThre = [allThre, t3];
end

[~, t4] = max(allGain);
n = feaSet(t4);
thre = allThre(t4);




