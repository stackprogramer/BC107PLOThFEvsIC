clc 
clear
syms y x w beta
m=1;
for i=.8712*10e12:10e10:2.43*10e12

[solx,soly]=vpasolve(-tan(sqrt((.11*10^-16*y^2)*3.45^2-x^2)*10^-7)+((sqrt(x^2-(.11*10^-16*y^2)*1^2)/sqrt((.11*10^-16*y^2)*3.45^2-x^2))*(3.45)^2+sqrt(x^2-(.11*10^-16*y^2)*1.5^2)/sqrt((.11*10^-16*y^2)*3.45^2-x^2)*(3.45/1.5)^2)*(1-((sqrt(x^2-(.11*10^-16*y^2)*1^2)*sqrt(x^2-(.11*10^-16*y^2)*1.5^2))/(y^2-(.11*10^-16*x^2)*1^2))*(3.45^2/1*1.5)^2) == 0,x== i,'20001206562610440.68137792103943388');
result=soly;
%if(result>0 && result>176 && result<214)
if(result>0 )
    disp(result);
 beta(m)=i;
 w(m)=result;
 m=m+1;
 
end



end
plot(beta,w);
