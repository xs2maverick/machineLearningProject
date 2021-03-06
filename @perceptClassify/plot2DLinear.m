function plot2DLinear(obj, Xtrain, Ytrain)
% plot2DLinear(obj, Xtrain,Ytrain)
%   plot a linear classifier (data and decision boundary) when features Xtrain are 2-dim
%   wts are 1x3,  wts(0)+wts(2)*X(1)+wts(3)*X(2)
%
  [n,d] = size(Xtrain);
  if (d~=2) error('Sorry -- plot2DLinear only works on 2D data...'); end;

  wts = obj.wts;  % parameters of the linear classifier:
  % yhat = sign(  wts(1) + x1 * wts(2) + x2 * wts(3) )

  % TODO: Plot each class in a different color
  %   along with the linear decision boundary of the predictor
  hold off;
  gscatter(Xtrain(:,1),Xtrain(:,2),Ytrain); hold on;
  ax = axis;
  X1 = linspace(ax(1),ax(2));
  X2 = X1 * (wts(2) / -wts(3)) + wts(1)/-wts(3);
  plot(X1,X2);
  drawnow;  % ensures plot is updated immediately 

