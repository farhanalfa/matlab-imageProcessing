% Program         : Pengolahan Image Rotation pada Matlab
% Tanggal         : 30 November 2018
% Author          : Farhan Alfariqi
% Tugas           : Study Group MM

% Membaca data Gambar
image1 = imread('nature.jpg');
% Memutar Gambar senilai 30 Derajat
image2 = imrotate(image1, 30, 'bilinear');
% Memutar Gambar senilai 90 Derajat
image3 = imrotate(image1, 90, 'bilinear');
% Memutar Gambar senilai 180 Derajat
image4 = imrotate(image1, 180, 'bilinear');
subplot(1,4,1), imshow(image1), title('Original');
subplot(1,4,2), imshow(image2), title('30 Degrees Rotate');
subplot(1,4,3), imshow(image3), title('90 Degrees Rotate');
subplot(1,4,4), imshow(image4), title('180 Degrees Rotate');


