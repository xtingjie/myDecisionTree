function myTree = genTree(x, nodeSet)
% 用于产生决策树
% x是数据集，最后一列是标签，nodeSet是可选的节点（特征）
% tree是生成的决策树，用一个结构体表示：
% tree:{node, thre, leftTree, RightTree, cls}
% node表示选取的划分节点，
% thre是该节点的划分阈值，leftTree、rightTree又是一个决策树
% 当这棵树不可分的时候就是叶节点，此时cls表示该分支的类别

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









