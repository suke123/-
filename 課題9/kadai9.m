% 課題�?メ�?��アンフィルタと先鋭�?
% メ�?��アンフィルターを適用し，ノイズ除去を体験せよ�?
% �???�Lenna以外�?画像を用�?��??
% �?

ORG = imread('../images/molmot.jpg'); % 画像�?読み込み
ORG = rgb2gray(ORG); % 白黒�?��画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像�?表示
pause;
ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添�?
imagesc(ORG); colormap(gray); colorbar; % 画像�?表示
pause;
IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去
imagesc(IMG); colormap(gray); colorbar; % 画像�?表示
pause;
IMG = medfilt2(ORG,[3 3]); % メ�?��アンフィルタで雑音除去
imagesc(IMG); colormap(gray); colorbar; % 画像�?表示
pause;
f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設�?
IMG = filter2(f,IMG,'same'); % フィルタの適用
imagesc(IMG); colormap(gray); colorbar; % 画像�?表示
pause;
