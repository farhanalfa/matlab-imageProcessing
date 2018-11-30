% Program         : Menampilkan Image di Matlab
% Tanggal         : 30 November 2018
% Author          : Farhan Alfariqi
% Tugas           : Study Group MM

% Membaca data Gambar Pertama dan Kedua
image1 = imread('nature.jpg');
image2 = imread('manhattan.jpg');

% Menampilkan Gambar Pertama dan Kedua
subplot(1,2,1), imshow(image1), title('Nature');
subplot(1,2,2), imshow(image2), title('Manhattan City');