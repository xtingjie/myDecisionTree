clear 
load fisheriris.mat

t1 = lbTrans(species);
t2 = [meas, t1];
[t3, t4] = size(t2(:, 1:(end-1)));

nodeSet = 1:t4; % 节点集合
myTree = genTree(t2, nodeSet);




