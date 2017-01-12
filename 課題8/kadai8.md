# 課題8レポート「ラベリング」

カメの画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．

```matlab
ORG = imread('../images/zebra.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
```

によって，原画像を読み込み，白黒濃淡画像に変換した結果を図１に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C8/images/kame0.png)  
図1 白黒濃淡画像(カメ)

図1の画像を，閾値を128として二値化する．
```matlab
IMG = ORG > 128; % 閾値128で二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
```
結果を図２に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C8/images/kame_after1.png)  
図2 二値化画像(カメ)

同じ連結成分に属する画素に同一番号を，異なる連結成分に異なる番号を与える処理である「ラベリング」を行った結果を図3に示す．
```matlab
IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; % 画像の表示
```

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C8/images/kame_after2.png)  
図3 ラベリングの結果(カメ)


次に，モルモットの画像を原画像として同様の処理を行う．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C8/images/molmot0.png)  
図4 白黒濃淡画像(モルモット)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C8/images/molmot_after1.png)  
図5 二値化画像(モルモット)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C8/images/molmot_after2.png)  
図6 ラベリングの結果(モルモット)

次に，2つの顔が描かれている画像を原画像として同様の処理を行う．この画像は縦580画像，横939画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C8/images/labeling0.png)  
図7 白黒濃淡画像(顔画像)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C8/images/labeling_after1.png)  
図8 二値化画像(顔画像)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C8/images/labeling_after2.png)  
図9 ラベリングの結果(顔画像)

### [ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C8/kadai8.m)

### 考察
「ラベリング」とは，同じ連結成分に属する画素に同一番号を，異なる連結成分に異なる番号を与える処理である．
