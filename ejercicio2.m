clear;
clc;

S=fspecial('gaussian',7,2);
im = rgb2ntsc(imread('gato.jpg'));

im1 = im;
im2 = im;

im1(:,:,1) = imfilter(im1(:,:,1),S,'replicate');
im2(:,:,2) = imfilter(im2(:,:,2),S,'replicate');
im2(:,:,3) = imfilter(im2(:,:,3),S,'replicate');


im1 = ntsc2rgb(im1);
im2 = ntsc2rgb(im2);
im = ntsc2rgb(im);

figure(1);
hold on, title('Modificada en Y'), imshow(uint8(im1*255)), hold off;
figure(2);
hold on, title('Modificada en IQ'), imshow(uint8(im2*255)), hold off;
figure(3);
hold on, title('Original'), imshow(uint8(im*255)), hold off;

imwrite(im1,'im1.jpg','Quality',98);
imwrite(im2,'im2.jpg','Quality',98);
