function [ tree] = maxspantree(  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


W=importdata('/Users/veenac/Downloads/graph.data');
% for i=1:17
%     for j=1:17
%      W(i,j)=-W(i,j); 
%     end
% end
w=[];
for i=1:17
   w=[w,W(i,:)]; 
end
w;
a=[];
for i=1:17
   a=[a,ones(1,17)*i]; 
end

b=[];
for i=1:17
   b=[b,1:17]; 
end

G=sparse(a,b,w);
UG=tril(G+G');
UG

[tree,pred]=graphminspantree(UG,'Method','Kruskal');
view(biograph(tree,[],'ShowArrows','off','ShowWeights','on'))
end

