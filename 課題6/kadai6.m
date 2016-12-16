% 課題６�?画像�?二�?�?
% 下記�?プログラ�?��参�?にして画像を二�?化せよ�?
% 下記�?サンプルプログラ�?��ある??
% 課題作�?にあたっては「Lenna」以外�?画像を用�?��??

clear; % 変数のオールクリア
ORG=imread('../images/giraffe.jpg'); % 原画像�?入�?
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; % 画像�?表示
pause; % �?��停止


IMG = ORG>128; % 128による二�?�?
imagesc(IMG); colormap(gray); colorbar; % 画像�?表示
pause;

IMG = dither(ORG); % �?��ザ法による二�?�?
imagesc(IMG); colormap(gray); colorbar; % 画像�?表示

