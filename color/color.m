%三色分離
clear;                            %清除螢幕資料
clc;
img=imread('cat.jpg');     %讀入"cat.jpg"影像存入變數f中
[R,C,V] = size(img);                %將矩陣大小放入ROW,COL,VALUE中

img_r(:,:,1) = img(:,:,1);  %取出紅色
img_r(:,:,2:3) = 0;

img_g(:,:,2) = img(:,:,2);  %取出綠色
img_g(:,:,1) = 0; 
img_g(:,:,3) = 0;  

img_b(:,:,3) = img(:,:,3);  %取出藍色
img_b(:,:,1:2) = 0;


figure, imshow(img);
figure, imshow(img_r);
figure, imshow(img_g);
figure, imshow(img_b);

%三色合併
img_m(:,:,1) = img_b(:,:,3);
img_m(:,:,2) = img_r(:,:,1);
img_m(:,:,3) = img_g(:,:,2);

figure, imshow(img_m);