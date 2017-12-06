function y = lbTrans(x)
%用于将标签数值化
%x是一个元胞，用字符串表示每个标签，每个元素就是标签
%y是数值型的数组

t1 = unique(x);

[~, y] = ismember(x, t1);

% t2 = length(t1);
% t3 = 1:t2;
% 
% [t6, t7] = size(x);
% t8 = zeros(t6, t7);
% 
% for i = 1:t2
%    t4 = t1(i);
%    t5 = find(x==t4);
%    t8(t5) = t3(i);
% end
% 
% y = t8;