% 課�?0 画像�?エ�?��抽出 
% 次のプログラ�?��参�?にして?�エ�?��抽出を体験せよ�?
% �???�Lenna以外�?画像を用�?��??
% �?

ORG = imread('../images/kame.png'); % 原画像�?入�?
ORG = rgb2gray(ORG); %カラーからグレイへの変換
imagesc(ORG); colormap('gray'); colorbar;% 画像表示
pause; % �?��停止

IMG = edge(ORG,'prewitt'); % エ�?��抽出?��?レウィ�?��法�?
imagesc(IMG); colormap('gray'); colorbar;% 画像表示
pause; % �?��停止

IMG = edge(ORG,'sobel'); % エ�?��抽出?�ソベル法�?
imagesc(IMG); colormap('gray'); colorbar;% 画像表示
pause; % �?��停止

IMG = edge(ORG,'canny'); % エ�?��抽出?�キャニ�?法�?
imagesc(IMG); colormap('gray'); colorbar;% 画像表示
pause; % �?��停止



