function J = costFunctionJ(X, y, Theta)
  %% X     : is the "design matrix" (column of ones left-attached to matrix of features)
  %% y     : is the array of targets
  %% Theta : the array of parameters to evaluate

  m = size(X,1);               % number of training examples.
  h = X*Theta;                 % array of hypothesis. Each hyp. is T0 + T1*x1 + T2*x2 + T3*x3...
  sqErrors = (h-y).^2;         % squared errors.
  J = 1/(2*m) * sum(sqErrors); % half of the average of the addition of all sqErrors.
