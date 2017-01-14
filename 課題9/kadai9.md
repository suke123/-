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

相関結果の中央値としてフィルタを通す．
```matlab
f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計
IMG = filter2(f,IMG,'same'); % フィルタの適用
```
結果を図5に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C9/images/kame_after4.png)  
図5 設計したフィルタを適用した画像(カメ)

次に，キリンの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C9/images/giraffe0.png)  
図6 原画像(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C9/images/giraffe_after1.png)  
図7 ノイズ添付後画像(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C9/images/giraffe_after2.png)  
図8 平滑化フィルタによるノイズ除去の結果(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C9/images/giraffe_after3.png)  
図9 メディアンフィルタ法によるノイズ除去の結果(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C9/images/giraffe_after4.png)  
図10 設計したフィルタを適用した画像(キリン)

### [ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C9/kadai9.m)

### 考察
平滑フィルタを通すことで，着目画素の濃度値をその周囲の画素の平均値にする．これによって，画像に含まれるノイズを除去することができる．しかし，この方法ではノイズの近傍画素の濃度を平均化するため，図3や図8のように画像中の対象物の輪郭部がぼけてしまう．そこで，メディアンフィルタ法を用いる．メディアンフィルタ法を用いると，濃度値を近傍画素の平均値とするのではなく，画素濃度の中央値とすることで対象物の輪郭部をぼかすことなくノイズを除去することが可能となる．図4，図9からぼけることなくノイズ除去ができていることが確認できる．
