# 課題4　ヒストグラム

亀の画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．

ORG=imread('../images/giraffe.jpg'); % 原画像の入力      
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換     
imagesc(ORG); colormap(gray); colorbar;

によって，原画像を読み込み，表示した結果を図１に示す．
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/images/kame1-1.png)  
図1 原画像

原画像のヒストグラムを表示するためには以下のようにする．        
imhist(ORG); % ヒストグラムの表示       

ヒストグラムの結果を図２に示す．        
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/images/kame_after.png)  　   
図2 カメ画像のヒストグラム   

次に，モルモットの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．      
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/images/molmot0.png)  　  
図3 原画像  　 

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/images/molmot_after.png)  　  
図4 モルモット画像のヒストグラム  　 

次に，キリンの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．    
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/images/giraffe0.png)      
図5 原画象     

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/images/giraffe_after.png)     
図6 キリン画像のヒストグラム    

###[ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C4/kadai4.m)   

###考察
このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生することが確認できる．
また，今回使用した画像では1/16サンプリングまでは画像が亀であることが確認できる．しかし，1/32サンプリング以降はサンプリング歪みが非常に大きいため，元の画像を識別することが困難であることが分かる．
モルモットと亀の画像を比較すると，
