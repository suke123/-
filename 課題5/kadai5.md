# 課題5レポート「判別分析法」

亀の画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．

ORG=imread('../images/molmot.jpg'); % 原画像の入力        
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換       
imagesc(ORG); colormap(gray); colorbar;

によって，原画像を読み込み，白黒濃淡画像に変換した表示した結果を図１に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/images/molmot0.png)  
図1 原画像

原画像を，判別分析法を用いて二値化するには，画像数や平均値，分散を算出し．なお，拡大する際には，単純補間するために「box」オプションを設定する．

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

1/2サンプリングの結果を図２に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/images/molmot_after.png)  
図2 1/2サンプリング

同様に原画像を1/4サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．すなわち，

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,4,'box'); % 画像の拡大

とする．1/4サンプリングの結果を図３に示す．

次に，モルモットの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/images/zebra0.png)  
図3 1/4サンプリング

1/8から1/64ンプリングは，

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,8,'box'); % 画像の拡大

を繰り返す．サンプリングの結果を図４～７に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/images/zebra_after.png)  
図4 1/8サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/images/zou0.png)  
図5 1/16サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/images/zou_after.png)  
図6 1/32サンプリング

###[ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/kadai5.m)

###考察

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生することが確認できる．
また，今回使用した画像では1/16サンプリングまでは画像が亀であることが確認できる．しかし，1/32サンプリング以降はサンプリング歪みが非常に大きいため，元の画像を識別することが困難であることが分かる．
モルモットと亀の画像を比較すると，画素数が少ない亀の画像は1/64サンプリングすると元の画像の判別が困難であるが，画素数が多いモルモットの画像は1/64サンプリング後も多少は識別が可能であることが分かる．
