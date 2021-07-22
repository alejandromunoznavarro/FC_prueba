clear;
clc;

im = imread('playa.jpg');
figure(1);
imshow(im);
figure(2);
imhist(im);

[h v]=imhist(im);
tam = (size(im,1) * size(im,2));
h = h/tam;

T = zeros(size(h));
T(1) = h(1);
for k = 1:(size(h)-1)
    T(k+1)=T(k)+h(k+1);
end
figure(3)
plot(1:size(h),T);

im2=T(im);
im2 = uint8(im2*255);
figure(4)
imshow(im2);
figure(5);
imhist(im2);

desv1=std2(im);
desv2=std2(im2);