# 課題4レポート「画像のヒストグラム」   

カメの画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．
```matlab
ORG=imread('../images/giraffe.jpg'); % 原画像の入力      
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換     
imagesc(ORG); colormap(gray); colorbar;
```
によって，原画像を読み込み，表示した結果を図１に示す．
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/images/kame1-1.png)  
図1 原画像(カメ)

原画像のヒストグラムを表示するためには以下のようにする．
```matlab        
imhist(ORG); % ヒストグラムの表示       
```
ヒストグラムの結果を図２に示す．        
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/images/kame_after.png)  　   
図2 カメ画像のヒストグラム

次に，モルモットの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．      
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/images/molmot0.png)  　  
図3 原画像(モルモット)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/images/molmot_after.png)  　  
図4 モルモット画像のヒストグラム  　

次に，キリンの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．    
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/images/giraffe0.png)      
図5 原画象(キリン)

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/images/giraffe_after.png)     
図6 キリン画像のヒストグラム    

### [ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/kadai4.m)   

### 考察
図2からカメの画像は濃度レベルが150から200の間の画素数が多いことが分かる．
図3のモルモットの画像は，被写体であるモルモットは白く，その周りは暗い．そのため，図4のヒストグラムは暗い画素が多く，少し明るい画素を含んでることが分かる．
キリンの画像は空など明るい箇所が多く，木やキリンの模様は暗いことが分かる．図6からも明るい画素が多いことが分かる．また，約220の濃度レベルの画素が特に多く分布していることが確認できる．
