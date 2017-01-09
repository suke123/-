# 課題9レポート「メディアンフィルタと先鋭化」

カメの画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．
```matlab
ORG = imread('../images/molmot.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
```
によって，原画像を読み込み，白黒濃淡画像に変換し，表示した結果を図１に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C9/images/kame0.png)  
図1 原画像(カメ)

原画像にノイズを添付させる．
```matlab
ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付
```
原画像にノイズを添付した結果を図２に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C9/images/kame_after1.png)  
図2 ノイズ添付後画像(カメ)

画素ごとの濃度値の細かな変動を無くし，滑らかな画像にする処理である「平滑化」を行う．
```matlab
IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去
```
平滑化フィルタによるノイズ除去の結果を図３に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C9/images/kame_after2.png)  
図3 平滑化フィルタによるノイズ除去の結果(カメ)

次に，図2の画像に対して，変換後の濃度値を着目画素の近傍画素の濃度値の平均値とするのではなく，それらの画素濃度の中央値とする方法である「メディアンフィルタ法」を行う．
```matlab
IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去
```
メディアンフィルタ法によるノイズ除去の結果を図4に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C9/images/kame_after3.png)  
図4 メディアンフィルタ法によるノイズ除去の結果(カメ)

図2の画像に対して，変換後の濃度値を着目画素の近傍画素の濃度値の平均値とするのではなく，それらの画素濃度の中央値とする方法である「メディアンフィルタ法」を行う．
```matlab
IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去
```
メディアンフィルタ法によるノイズ除去の結果を図4に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C9/images/kame_after3.png)  
図4 メディアンフィルタ法によるノイズ除去の結果(カメ)

次に，モルモットの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot0.png)  
図8 原画像

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot1.png)  
図9 1/2サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot2.png)  
図10 1/4サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot3.png)  
図11 1/8サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot4.png)  
図12 1/16サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot5.png)  
図13 1/32サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot6.png)  
図14 1/64サンプリング

###[ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/kadai1.m)

###考察

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生することが確認できる．
また，今回使用した画像では1/16サンプリングまでは画像が亀であることが確認できる．しかし，1/32サンプリング以降はサンプリング歪みが非常に大きいため，元の画像を識別することが困難であることが分かる．
モルモットと亀の画像を比較すると，画素数が少ない亀の画像は1/64サンプリングすると元の画像の判別が困難であるが，画素数が多いモルモットの画像は1/64サンプリング後も多少は識別が可能であることが分かる．
