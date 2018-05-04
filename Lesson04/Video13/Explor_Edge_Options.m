% Explore edge options
pkg load image;

%% Load an image
img = imread('fall-leaves.png');  % also available: peppers.png, mandrill.png
imshow(img);

%% TODO: Create a Gaussian filter
gaussian_size = 21;
gaussian_sigma = 3;
gaussian_filter = fspecial('gaussian', gaussian_size, gaussian_sigma);

%% TODO: Apply it, specifying an edge parameter (try different parameters)
smoothed = imfilter(img, gaussian_filter, 'circular');
imshow(smoothed);

%% Boundary Options: https://www.mathworks.com/help/images/ref/imfilter.html