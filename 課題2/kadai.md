# 課題2レポート「階調数と疑似輪郭」
亀の画像を原画像とする．この画像は縦244画像，横326画素によるディジタルカラー画像である．

`ORG=imread('../images/elephant.jpg'); % 原画像の入力`  
`ORG = rgb2gray(ORG); %イメージをグレースケールイメージに変換する`  
`colormap(gray);`  
`colorbar;`  
`imagesc(ORG);`  
`axis image; % 画像の表示`  

によって，原画像を読み込み，表示した結果を図１に示す．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C2/images/motoimage.png)  
図1 原画像

原画像を2階調にするには，元の256階調のうち、0から127は0，128から255は1とする．そのようにすることにより，白黒の2階調で表された画像が生成される．  
`IMG = ORG>128;`        
`imagesc(IMG);`  

2階調の結果を図２に示す．  
![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C2/images/2kaityou.png)  
図2 2階調画像  

同様に原画像を4階調画像にするためには，256階調を4等分する．つまり，0-63，64-127，128-191，192-255の4つに分割する．  
`IMG0 = ORG>64;`  
`IMG1 = ORG>128;`  
`IMG2 = ORG>192;`  
`IMG = IMG0 + IMG1 + IMG2;`  
`imagesc(IMG);`  
とする．4階調の結果を図３に示す．  

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C2/images/4kaityou.png)  
図3 4階調画像  

8階調は，256階調を8等分する．つまり，0-31，32-63，64-95，96-127，128-159，160-191，192-223，224-255の8つに分割する.
`IMG0 = ORG>32;`     
`IMG1 = ORG>64;`     
`IMG2 = ORG>96;`     
`IMG3 = ORG>128;`    
`IMG4 = ORG>160;`    
`IMG5 = ORG>192;`     
`IMG6 = ORG>224;`     
`IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;`    
`imagesc(IMG);`     
とする．8階調の結果を図４に示す．    

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C2/images/8kaityou.png)  
図4 8階調画像

次に，キリンの画像を原画像として同様の処理を行った．この画像は縦1066画像，横1600画素によるディジタルカラー画像である．

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C2/images/giraffe0.png)  
図5 原画像

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C2/images/giraffe1.png)  
図6 2階調画像  

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C2/images/giraffe2.png)  
図7 4階調画像  

![原画像](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C2/images/giraffe3.png)  
図8 8階調画像  

###[ソースコード](https://github.com/suke123/matlab_image_processing/blob/master/%E8%AA%B2%E9%A1%8C2/kadai2.m)  

###考察  
2階調では，白黒で表現された画像が階調数が大きくなるほど，グレースケールになる．つまり，階調数が大きくなるほど原画像に近くなることが分かる．原画像の色が濃い部分は2階調で表現すると，黒になり，色が淡い部分は白になる．2つの画像を見ると，被写体である動物は黒が多く，背景は白が多いことが分かる．
