% Program         : Pengolahan Image Enhancement pada Matlab
% Tanggal         : 30 November 2018
% Author          : Farhan Alfariqi
% Tugas           : Study Group MM

% Membaca data Gambar
image1 = imread('nature.jpg');
image2 = rgb2gray(image1);
image3 = graythresh(image2);
image4 = im2bw(image2,image3);
% Menampilkan Gambar berformat Grayscale dan Biner
subplot(1,2,1), imshow(image2), title('Gambar Grayscale');
subplot(1,2,2), imshow(image4), title('Gambar Biner');

% Menambahkan noise pada Gambar Asli
image1 = imread('manhattan.jpg');
image2 = imnoise(image1, 'salt & pepper');
image3 = imnoise(image1, 'gaussian');
% Menampilkan Noise format Salt & Pepper dan Gaussian
subplot(1,2,1), imshow(image2), title('Salt & Pepper');
subplot(1,2,2), imshow(image3), title('Gaussian');

% Menampilkan Histogram
image1 = imread('nature.jpg');
image1 = rgb2gray(image1);
image2 = imread('manhattan.jpg');
image2 = rgb2gray(image2);
subplot(1,2,1), imhist(image1), title('Histogram Nature');
subplot(1,2,2), imhist(image2), title('Histogram Manhattan');

% Perubahan Kontras Warna
image = imread('nature.jpg');
% Ubah gambar menjadi format grayscale
image = rgb2gray(image);
image_imadjust    = imadjust(image);
image_histeq      = histeq(image);
image_adapthisteq = adapthisteq(image);
% Menampilkan Gambar Asli dan Tiga Hasil Perubahan Kontras
montage({image, image_imadjust, image_histeq, image_adapthisteq}, 'Size',[1 4])
title('Original Image and Enhanced Images using imadjust, histeq, and adapthisteq');
