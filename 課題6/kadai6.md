# 課題6レポート「画像の二値化」

の画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．

ORG=imread('../images/giraffe.jpg'); % 原画像の入力       
ORG = rgb2gray(ORG);       
imagesc(ORG); colormap(gray); colorbar; % 画像の表示        

によって，原画像を読み込み，表示した結果を図１に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/images/kame0.png)  
図1 原画像(カメ)

原画像の各画素の濃度を128を閾値として二値化するには，128より明るい画素を白に，暗い画素を黒にする．      
IMG = ORG>128; % 128による二値化         
imagesc(IMG); colormap(gray); colorbar; % 画像の表示           

二値化の結果を図２に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/images/kame_after1.png)  
図2 二値化画像(カメ)

次に，原画像の各画素の濃度値を画素位置によりあらかじめ定められたディザマトリックスの値と比較し，sの大小関係で出力画素の濃度値を決定するディザ法による二値化を行う．        
IMG = dither(ORG); % ディザ法による二値化         
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

とする．ディザ法による二値化の結果を図３に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/images/kame_after2.png)  
図3 ディザ法による二値化画像(カメ)

次に，モルモットの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/images/molmot0.png)  
図4 原画像(モルモット)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/images/molmot_after1.png)  
図5 二値化画像(モルモット)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/images/molmot_after2.png)  
図6 ディザ法による二値化画像(モルモット)

次に，キリンの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/images/giraffe0.png)  
図7 原画像(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/images/giraffe_after1.png)  
図8 二値化画像(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/images/giraffe_after2.png)  
図9 ディザ法による二値化画像(キリン)

###[ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/kadai6.m)

###考察

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生することが確認できる．
また，今回使用した画像では1/16サンプリングまでは画像が亀であることが確認できる．しかし，1/32サンプリング以降はサンプリング歪みが非常に大きいため，元の画像を識別することが困難であることが分かる．
モルモットと亀の画像を比較すると，画素数が少ない亀の画像は1/64サンプリングすると元の画像の判別が困難であるが，画素数が多いモルモットの画像は1/64サンプリング後も多少は識別が可能であることが分かる．
