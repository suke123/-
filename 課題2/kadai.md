# 課題2レポート「階調数と疑似輪郭」
亀の画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．

`ORG=imread('../images/elephant.jpg'); % 原画像の入力`  
`ORG = rgb2gray(ORG); %イメージをグレースケールイメージに変換する`  
`colormap(gray);`  
`colorbar;`  
`imagesc(ORG);  
axis image; % 画像の表示` 

によって，原画像を読み込み，表示した結果を図１に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C2/images/motoimage.png)  
図1 原画像

原画像を2階調にするには，元の256階調のうち、0から127は0，128から255は1とする．そのようにすることにより，白黒の2階調で表された画像が生成される．
`IMG = ORG>128;`  
`imagesc(IMG);`  

2階調の結果を図２に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C2/images/2kaityou.png)  
図2 2階調画像  
同様に原画像を4階調画像にするためには，256階調を4等分する．つまり，0-63，64-127，128-191，192-255の4つに分割する．
`IMG0 = ORG>64;`  
`IMG1 = ORG>128;`  
`IMG2 = ORG>192;`  
`IMG = IMG0 + IMG1 + IMG2;`  
`imagesc(IMG);`  
とする．4階調の結果を図３に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C2/images/4kaityou.png)  
図3 4階調画像  
1/8から1/64ンプリングは，

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

を繰り返す．サンプリングの結果を図４～７に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/kame1-8.png)  
図4 1/8サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/kame1-16.png)  
図5 1/16サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/kame1-32.png)  
図6 1/32サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/kame1-64.png)  
図7 1/64サンプリング

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

**###考察**
このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生することが確認できる．
また，今回使用した画像では1/16サンプリングまでは画像が亀であることが確認できる．しかし，1/32サンプリング以降はサンプリング歪みが非常に大きいため，元の画像を識別することが困難であることが分かる．
モルモットと亀の画像を比較すると，
