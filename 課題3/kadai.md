# 課題３レポート「閾値処理」

カメの画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．      
```matlab
ORG=imread('../images/kame.png'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
```
によって，原画像を読み込み，表示した結果を図１に示す．       

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/kame1-1.png)       
図1 原画像(カメ)

原画像を輝度値64を閾値として，輝度値が64以上の画素を1，64以下の画素を0に変換する．
```matlab             
IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換                
imagesc(IMG); colormap(gray); colorbar;            
```
輝度値の閾値を64に設定し，生成した結果を図2に示す．      

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/kido64.png)      
図2 輝度値64(カメ)    

同様に輝度値の閾値を96に設定する．               
```matlab
IMG = ORG > 96;% 輝度値が96以上の画素を1，その他を0に変換                 
imagesc(IMG); colormap(gray); colorbar;                    
```
とする．輝度値の閾値を96に設定し，生成した結果を図3に示す．      

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/kido96.png)       
図3 輝度値96(カメ)         

同様に輝度値の閾値を128，192に設定するには，次のようにする．        
```matlab
IMG = ORG > 128;% 輝度値が128以上の画素を1，その他を0に変換  
imagesc(IMG); colormap(gray); colorbar;       
IMG = ORG > 192;% 輝度値が192以上の画素を1，その他を0に変換      
imagesc(IMG); colormap(gray); colorbar;         
```
生成した結果を図４，５に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/kido128.png)      
図4 輝度値128(カメ)         

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/kido192%5D.png)      
図5 輝度値192(カメ)     

次に，キリンの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/giraffe0.png)    
図6 原画像(キリン)    
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/giraffe1.png)     
図7 輝度値64(キリン)        
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/giraffe2.png)      
図8 輝度値96(キリン)      
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/giraffe3.png)       
図9 輝度値128(キリン)    
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/images/giraffe4.png)      
図10 輝度値192(キリン)     

### [ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C3/kadai3.m)   

### 考察
輝度値の閾値を上げていくほど，画像の黒い箇所が多くなることが分かる．カメ画像には，影が多いため輝度値の閾値を192にした図5では，画像のほぼ全体が黒くなっている．一方，キリン画像には影が少ないため図10では，キリンや木をはっきりと認識することが可能である．
