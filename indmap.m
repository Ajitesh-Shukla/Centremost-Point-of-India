img2 = imread('india map.png');
img1 = rgb2gray(img2);
img=imbinarize(img1);
img=~img;
%for getting centroid
x=0;
y=0;
a=size(img,1);
b=size(img,2);
m=1;
for c= 1:a
    for d= 1:b
        if img(c,d)==1
            x=(x*m+d)/(m+1);
            m=m+1;
        end
    end
end
m=1;
for c= 1:b
    for d= 1:a
        if img(d,c)==1
            y=(y*m+d)/(m+1);
            m=m+1;
        end
    end
end
%for determoning extreme points
a=size(img,1);
b=size(img,2);
n=zeros(1,2);
for c= 1:a
    for d= 1:b
        if img(c,d)==1
           n(1,1)=c;
           n(1,2)=d;
           break
        end
    end
end
m=zeros(1,2);
for c= 1:b
    for d= 1:a
        if img(d,c)==1
           m(1,1)=d; m(1,2)=c;
           break
        end
    end
end
%westmost    102,334                       68.1941E   23.626N  
%southmost  288 , 662                     77.5523 E   8.0689N
%centre 324.4291, 345.5365                 79.388E     23.0788N
            
