%�T�����
clear;                            %�M���ù����
clc;
img=imread('cat.jpg');     %Ū�J"cat.jpg"�v���s�J�ܼ�f��
[R,C,V] = size(img);                %�N�x�}�j�p��JROW,COL,VALUE��

img_r(:,:,1) = img(:,:,1);  %���X����
img_r(:,:,2:3) = 0;

img_g(:,:,2) = img(:,:,2);  %���X���
img_g(:,:,1) = 0; 
img_g(:,:,3) = 0;  

img_b(:,:,3) = img(:,:,3);  %���X�Ŧ�
img_b(:,:,1:2) = 0;


figure, imshow(img);
figure, imshow(img_r);
figure, imshow(img_g);
figure, imshow(img_b);

%�T��X��
img_m(:,:,1) = img_b(:,:,3);
img_m(:,:,2) = img_r(:,:,1);
img_m(:,:,3) = img_g(:,:,2);

figure, imshow(img_m);