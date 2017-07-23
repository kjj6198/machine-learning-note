function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

mu = nanmean(X);
X_norm = bsxfun(@minus, X, mu);

sigma = nanstd(X_norm);
X_norm = X_norm ./ sigma;
X_norm(isnan(X_norm)) = 0;


% ============================================================

end
