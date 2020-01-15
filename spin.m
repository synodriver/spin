clc; clear;close; %Àÿ÷ »˝¡¨
filename = 'TIMÕº∆¨20200115142509.gif';
im={};
A=imread('TIMÕº∆¨20200115142509.jpg');
%%%≤√ºÙ
test=imrotate(A,0);
figure(1);
imshow(test)
% test=imcrop(test,[70 140 130 130]);
% figure(2);
% imshow(test);
%%%%%%%%%%
for i=1:4
    im=[im,imrotate(test,90*i-90)];
end
for i=1:4
    [a,map] = rgb2ind(im{i},256);
    if i==1
        imwrite(a,map,filename,'gif','LoopCount',Inf,'DelayTime',0.1);
    else
        imwrite(a,map,filename,'gif','WriteMode','append','DelayTime',0.1);
    end
end




