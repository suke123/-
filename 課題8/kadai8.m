% 課題�?ラベリング
% 二�?化された画像�?連結�?�?��ラベルをつけよ??
% 下記�?サンプルプログラ�?��ある??
% 課題作�?にあたっては「Lenna」以外�?画像を用�?��??
% �?

ORG = imread('../images/zebra.jpg'); % 画像�?読み込み
ORG = rgb2gray(ORG); % 白黒�?��画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像�?表示
pause;
IMG = ORG > 128; % 閾値128で二�?�?
imagesc(IMG); colormap(gray); colorbar; % 画像�?表示
pause;
IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; % 画像�?表示
pause;
