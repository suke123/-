# 課題7レポート「ダイナミックレンジの拡大」

カメの画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．

```matlab
ORG = imread('../images/giraffe.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
```

によって，原画像を読み込み，白黒濃淡画像に変換した結果を図１に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/images/kame0.png)  
図1 白黒濃淡画像(カメ)

図1の濃度ヒストグラムを生成する．結果を図2に示す．

```matlab
imhist(ORG); % 濃度ヒストグラムを生成、表示
```

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/images/kame_after1.png)  
図2 濃度ヒストグラム(カメ)

図2より図1の濃度は128までしかないことが分かる．次に，現画像をダイナミックレンジ拡大する．その結果を図3に示す．

```matlab
ORG = double(ORG);
mn = min(ORG(:)); % 濃度値の最小値を算出
mx = max(ORG(:)); % 濃度値の最大値を算出
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
```

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/images/kame_after2.png)  
図3 ダイナミックレンジ拡大後の画像(カメ)

図3の濃度ヒストグラムを生成する．結果を図4に示す．

```matlab
ORG = uint8(ORG); % この行について考察せよ
imhist(ORG); % 濃度ヒストグラムを生成、表示
```
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/images/kame_after3.png)  
図4 ダイナミックレンジ拡大後の画像の濃度ヒストグラム(カメ)

次に，ゾウの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/images/elephant0.png)  
図5 白黒濃淡画像(ゾウ)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/images/elephant_after1.png)  
図6 濃度ヒストグラム(ゾウ)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/images/elephant_after2.png)  
図7 ダイナミックレンジ拡大後の画像(ゾウ)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/images/elephant_after3.png)  
図8 ダイナミックレンジ拡大後の画像の濃度ヒストグラム(ゾウ)

次に，キリンの画像を原画像として同様の処理を行う．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/images/giraffe0.png)  
図5 白黒濃淡画像(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/images/giraffe_after1.png)  
図6 濃度ヒストグラム(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/images/giraffe_after2.png)  
図7 ダイナミックレンジ拡大後の画像(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/images/giraffe_after3.png)  
図8 ダイナミックレンジ拡大後の画像の濃度ヒストグラム(キリン)

### [ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C7/kadai7.m)

### 考察
画像の最高濃度と最低濃度の差が小さい場合，コントラストの低い見難い画像となってしまう．そこで，画像信号のダイナミックレンジを拡大することで，全濃度範囲を使用するように濃度変換する．その結果，128までしか濃度ヒストグラムを示さない画像が全濃度範囲を使用する画像に変換されていることが分かる．

```matlab
ORG = uint8(ORG);
```
は濃度を8ビット符号なし整数に変換する．これによって，0から255まで濃度範囲を拡大することができる．これにより，ヒストグラムで全濃度範囲を使用することが可能となる．
