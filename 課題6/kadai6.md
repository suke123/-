# 課題6レポート「画像の二値化」

カメの画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．
```matlab
ORG=imread('../images/giraffe.jpg'); % 原画像の入力       
ORG = rgb2gray(ORG);       
imagesc(ORG); colormap(gray); colorbar; % 画像の表示        
```
によって，原画像を読み込み，表示した結果を図１に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/images/kame0.png)  
図1 原画像(カメ)

原画像の各画素の濃度を128を閾値として二値化するには，128より明るい画素を白に，暗い画素を黒にする．     
```matlab
IMG = ORG>128; % 128による二値化         
imagesc(IMG); colormap(gray); colorbar; % 画像の表示           
```
二値化の結果を図２に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/images/kame_after1.png)  
図2 二値化画像(カメ)

次に，原画像の各画素の濃度値を画素位置によりあらかじめ定められたディザマトリックスの値と比較し，sの大小関係で出力画素の濃度値を決定するディザ法による二値化を行う．        
```matlab
IMG = dither(ORG); % ディザ法による二値化         
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
```
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

### [ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C6/kadai6.m)

### 考察
ディザ法とは，各画素の濃度を閾値と比較し，その大小で出力画像の濃度を決定する方法である．
図3，6，9はディザ法を用いているため各画素について濃度の大小を比較していて，単に128を閾値として二値化している画像と比べると，より原画像に近い画像を得られることが分かる．また，各画素ごとに濃度が決定されるため，原画像の濃淡を白黒で描画される．暗い箇所は黒が多く，明るい箇所は白が多く描かれていることが分かる．
