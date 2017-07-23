
[X, Y] = processMNISTdata("t10k-images-idx3-ubyte", "t10k-labels-idx1-ubyte");

% ========= plot data with PCA =======
[X_norm, mu, sigma] = featureNormalize(X);

% PCA and project the data to 2D
[U, S] = pca_1(X_norm);
Z = projectData(X_norm, U, 2);
gscatter(Z(:,1), Z(:,2), Y)

pause;
% ========= plot data with t-SNE =======

Y2 = tsne(X, 'Algorithm', 'barneshut', 'NumPCAComponents', 50);
% print("processing...");
figure
gscatter(Y2(:,1), Y2(:,2), Y)