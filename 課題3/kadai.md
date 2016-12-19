# 課題３レポート「閾値処理」

亀の画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．      
`ORG=imread('../images/kame.png'); % 原画像の入力`     
`imagesc(ORG); axis image; % 画像の表示`   
によって，原画像を読み込み，表示した結果を図１に示す．       

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/kame1-1.png)       
図1 原画像       

原画像を輝度値64を閾値として，輝度値が64以上の画素を1，64以下の画素を0に変換する．             
`IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換`                
`imagesc(IMG); colormap(gray); colorbar;`            
輝度値の閾値を64に設定し，生成した結果を図2に示す．      

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/kido64.png)       
図2 輝度値64        

同様に輝度値の閾値を96に設定する．               
`IMG = ORG > 96;% 輝度値が96以上の画素を1，その他を0に変換`                 
`imagesc(IMG); colormap(gray); colorbar;`                    

とする．輝度値の閾値を96に設定し，生成した結果を図3に示す．      

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/kido96.png)       
図3 輝度値96               

1/8から1/64ンプリングは，

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

を繰り返す．サンプリングの結果を図４～７に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/kido128.png)  
図4 1/8サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/kido192%5D.png)  
図5 1/16サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/kame1-32.png)  
図6 1/32サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/kame1-64.png)  
図7 1/64サンプリング

次に，モルモットの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot0.png)  
図8 原画像

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot1.png)  
図9 1/2サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot2.png)  
図10 1/4サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot3.png)  
図11 1/8サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot4.png)  
図12 1/16サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot5.png)  
図13 1/32サンプリング

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C1/images/molmot6.png)  
図14 1/64サンプリング

###[ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/kadai3.m)   

**###考察**
このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生することが確認できる．
また，今回使用した画像では1/16サンプリングまでは画像が亀であることが確認できる．しかし，1/32サンプリング以降はサンプリング歪みが非常に大きいため，元の画像を識別することが困難であることが分かる．
モルモットと亀の画像を比較すると，
