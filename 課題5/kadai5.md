# 課題5レポート「判別分析法」

モルモットの画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．
```matlab
ORG=imread('../images/molmot.jpg'); % 原画像の入力        
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換       
imagesc(ORG); colormap(gray); colorbar;
```
によって，原画像を読み込み，白黒濃淡画像に変換した表示した結果を図１に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/images/molmot0.png)  
図1 原画像(モルモット)

原画像を，判別分析法を用いて二値化するには，画像数や平均値，分散を算出し．クラス内分散とクラス間分散を求める必要がある．
```matlab
H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納        
myu_T = mean(H);      
max_val = 0;        
max_thres = 1;       
for i=1:255      
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける      
C2 = H(i+1:256);           
n1 = sum(C1); %画素数の算出        
n2 = sum(C2);        
myu1 = mean(C1); %平均値の算出       
myu2 = mean(C2);       
sigma1 = var(C1); %分散の算出       
sigma2 = var(C2);      
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出      
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出         
if max_val<sigma_B/sigma_w        
max_val = sigma_B/sigma_w;        
max_thres =i;       
end;      
end;     

IMG = ORG > max_thres;        
imagesc(IMG);      
```
判別分析法用いた二値化の結果を図２に示す．    

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/images/molmot_after.png)  
図2 判別分析法用いた二値化の結果(モルモット)

次に，シマウマの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/images/zebra0.png)  
図3 原画象(シマウマ)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/images/zebra_after.png)  
図4 判別分析法用いた二値化の結果(シマウマ)

次に，ゾウの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/images/zou0.png)  
図5 原画象(ゾウ)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/images/zou_after.png)  
図6 判別分析法用いた二値化の結果(ゾウ)

### [ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C5/kadai5.m)

### 考察

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生することが確認できる．
また，今回使用した画像では1/16サンプリングまでは画像が亀であることが確認できる．しかし，1/32サンプリング以降はサンプリング歪みが非常に大きいため，元の画像を識別することが困難であることが分かる．
モルモットと亀の画像を比較すると，画素数が少ない亀の画像は1/64サンプリングすると元の画像の判別が困難であるが，画素数が多いモルモットの画像は1/64サンプリング後も多少は識別が可能であることが分かる．
