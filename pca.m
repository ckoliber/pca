# Load dataset and preprocessing
load faces;
Images = im2double(ff);

# Show images before PCA
show(1, Images, 'Main Images');

# Find mean image and subtract
MeanImage = mean(Images,2);
Images = Images - repmat(MeanImage, 1, size(Images)(2));

# Show mean image
show(2, MeanImage, 'Mean Image');

# Show meanless images before PCA
show(3, Images, 'Meanless Images');

# Run PCA
[U D V] = svd(Images, 0);
PC1 = U(:,1)';
Compressed = PC1 * Images;
Result = PC1' * Compressed + repmat(MeanImage, 1, size(Images)(2));

# Show images after PCA
show(4, Result, 'Decompressed Images');