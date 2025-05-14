function Plot_Node( NodeCoord )
% This function plots nodes and numbers them
% -----------------------------------------------------------------------
% Meaning of variables
% NodeCoord: Matrix contains coordinates of nodes, the rows of the matrix 
% is index of the nodes 
% -----------------------------------------------------------------------
for i=1:size(NodeCoord,1);
 plot(NodeCoord(i,1),NodeCoord(i,2),NodeCoord(i,3), 'o');
 text(NodeCoord(i,1),NodeCoord(i,2),NodeCoord(i,3),num2str(i),'Color','b','VerticalAlignment','bottom','HorizontalAlignment','right');
 hold on;
end;
end