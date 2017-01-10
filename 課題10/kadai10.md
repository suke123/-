# 課題10レポート「画像のエッジ抽出」

亀の画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．
```matlab
ORG = imread('../images/kame.png'); % 原画像の入力
ORG = rgb2gray(ORG); %カラーからグレイへの変換
imagesc(ORG); colormap('gray'); colorbar;% 画像表示
```
によって，原画像を読み込み，グレースケールに変換し，表示した結果を図1に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C10/images/kame0.png)  
図1 グレースケール変換後の原画像(カメ)

まず，図1の画像に対してプレウィット法を用いてエッジ抽出を行う．

```matlab
IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）
```

結果を図2に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C10/images/kame1.png)  
図2 プレウィット法を用いたエッジ抽出結果(カメ)

次に，図1の画像に対してソベル法を用いてエッジ抽出を行う．

```matlab
IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）
```

結果を図3に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C10/images/kame2.png)  
図3 ソベル法を用いたエッジ抽出結果(カメ)

次に，図1の画像に対してキャニー法を用いてエッジ抽出を行う．

```matlab
IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）
```

結果を図4に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C10/images/kame3.png)  
図4 キャニー法を用いたエッジ抽出結果(カメ)

次に，キリンの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C10/images/giraffe0.png)  
図5 グレースケール変換後の原画像(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C10/images/giraffe1.png)  
図6 プレウィット法を用いたエッジ抽出結果(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C10/images/giraffe2.png)  
図7 ソベル法を用いたエッジ抽出結果(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C10/images/giraffe3.png)  
図8 キャニー法を用いたエッジ抽出結果(キリン)

次に，モルモットの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C10/images/molmot0.png)  
図9 グレースケール変換後の原画像(モルモット)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C10/images/molmot1.png)  
図10 プレウィット法を用いたエッジ抽出結果(モルモット)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C10/images/molmot2.png)  
図11 ソベル法を用いたエッジ抽出結果(モルモット)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C10/images/molmot3.png)  
図12 キャニー法を用いたエッジ抽出結果(モルモット)

### [ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/kadai1.m)

### 考察

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生することが確認できる．
また，今回使用した画像では1/16サンプリングまでは画像が亀であることが確認できる．しかし，1/32サンプリング以降はサンプリング歪みが非常に大きいため，元の画像を識別することが困難であることが分かる．
モルモットと亀の画像を比較すると，画素数が少ない亀の画像は1/64サンプリングすると元の画像の判別が困難であるが，画素数が多いモルモットの画像は1/64サンプリング後も多少は識別が可能であることが分かる．
