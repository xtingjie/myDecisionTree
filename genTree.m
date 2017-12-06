function myTree = genTree(x, nodeSet)
% ���ڲ���������
% x�����ݼ������һ���Ǳ�ǩ��nodeSet�ǿ�ѡ�Ľڵ㣨������
% tree�����ɵľ���������һ���ṹ���ʾ��
% tree:{node, thre, leftTree, RightTree, cls}
% node��ʾѡȡ�Ļ��ֽڵ㣬
% thre�Ǹýڵ�Ļ�����ֵ��leftTree��rightTree����һ��������
% ����������ɷֵ�ʱ�����Ҷ�ڵ㣬��ʱcls��ʾ�÷�֧�����

t1 = x(:, end);
t2 = unique(t1);

if isempty(nodeSet) || length(t2)==1
    myTree.node = [];
    myTree.thre = [];
    myTree.leftTree = [];
    myTree.rightTree = [];
    myTree.cls = t2;
    return;
end

[bestNode, thre] = getBestNode(x, nodeSet);
xLeft = x(x(:, bestNode)<=thre, :);
xRight = x(x(:, bestNode)>thre, :);
nodeSet1 = nodeSet(nodeSet~=bestNode);

leftTree = genTree(xLeft, nodeSet1);
rightTree = genTree(xRight, nodeSet1);

myTree.node = bestNode;
myTree.thre = thre;
myTree.leftTree = leftTree;
myTree.rightTree = rightTree;
myTree.cls = [];









