function [n, thre] = getBestNode(x, feaSet)
% �����ҵ���õ���������Ϊ��֧�ڵ�
% x�������������һ���Ǳ�ǩ,feaSet�ǿ�ѡ�����������
% n����õĽڵ����ţ�thre����Ӧ�Ļ�����ֵ

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




