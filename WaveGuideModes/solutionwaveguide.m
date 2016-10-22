%Programmed By R.Borumandi
clc
clear
k0=(2*3.14)/(1.55*10^-6);
nf=3.45;
ns=1.45;
nc=1;
m=0;
a=1e-6;
syms x ;

for m=0:1:7
    disp('entering stage m=');
    disp(m);
TE=vpasolve(k0*nf*a*cos(x)-m*pi==atan(sqrt(((sin(x))^2)-(nc/nf)^2)/cos(x))+atan(sqrt(((sin(x))^2)-(ns/nf)^2)/cos(x)),x,0.2);
teta1=(TE/3.14)*180;
if(24.85<=teta1 )
if(teta1<90 )

 disp('validating solution TE------------------');
 disp('solve for m='); 
 disp(m);
 disp('Te is');
 disp(teta1);
end 
end

disp('solve for TM mode');
TM=vpasolve(k0*nf*cos(x)-m*pi == atan(sqrt((sin(x)^2-(nc/nf)^2))/(nc/nf)^3*cos(x))+atan(sqrt((sin(x)^2-(ns/nf)^2))/(ns/nf)^3*cos(x)), x,.2);
teta2=(TM/3.14)*180;
if(24.85<=teta2 )
if(teta2<90 )
 disp('validating solution TM------------------');
 disp('solve for m='); 
 disp(m);
 disp('TM is');
 disp(teta2);
end   
end

end





