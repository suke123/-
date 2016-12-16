% èª²é¡?0 ç”»åƒã?ã‚¨ãƒ?‚¸æŠ½å‡º 
% æ¬¡ã®ãƒ—ãƒ­ã‚°ãƒ©ãƒ?‚’å‚è?ã«ã—ã¦?Œã‚¨ãƒ?‚¸æŠ½å‡ºã‚’ä½“é¨“ã›ã‚ˆï¼?
% å???ŒLennaä»¥å¤–ã?ç”»åƒã‚’ç”¨ã?‚ˆ??
% ä¾?

ORG = imread('../images/kame.png'); % åŸç”»åƒã?å…¥åŠ?
ORG = rgb2gray(ORG); %ã‚«ãƒ©ãƒ¼ã‹ã‚‰ã‚°ãƒ¬ã‚¤ã¸ã®å¤‰æ›
imagesc(ORG); colormap('gray'); colorbar;% ç”»åƒè¡¨ç¤º
pause; % ä¸?™‚åœæ­¢

IMG = edge(ORG,'prewitt'); % ã‚¨ãƒ?‚¸æŠ½å‡º?ˆã?ãƒ¬ã‚¦ã‚£ãƒ?ƒˆæ³•ï¼?
imagesc(IMG); colormap('gray'); colorbar;% ç”»åƒè¡¨ç¤º
pause; % ä¸?™‚åœæ­¢

IMG = edge(ORG,'sobel'); % ã‚¨ãƒ?‚¸æŠ½å‡º?ˆã‚½ãƒ™ãƒ«æ³•ï¼?
imagesc(IMG); colormap('gray'); colorbar;% ç”»åƒè¡¨ç¤º
pause; % ä¸?™‚åœæ­¢

IMG = edge(ORG,'canny'); % ã‚¨ãƒ?‚¸æŠ½å‡º?ˆã‚­ãƒ£ãƒ‹ã?æ³•ï¼?
imagesc(IMG); colormap('gray'); colorbar;% ç”»åƒè¡¨ç¤º
pause; % ä¸?™‚åœæ­¢



