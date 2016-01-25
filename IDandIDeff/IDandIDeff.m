%Plot current-voltage Drain formula for approximately and accurately.
% s.yang Microelectronic Device page 245   equation 9-36&9-37 

%define typical constant
K=2*10^-5;
syms VD;
q=1.6*10^-19;
Ks=11.68*8.85*10^-12;
Ee0=8.85*10^-12;
VG=4;
FiMs=4.25*q;
FiSi=4.6*q;
C0=2.9*10^-4;
VD=0:.1:4;
Na=10^17;
VT=.7;
Q0=(2*q*Ks*Ee0*Na*FiSi)^.5;
%define  equations
ID=K*((VG-VT)*VD-.5*(VD).^2);
IDeff=K*((VG-FiMs-FiSi+(Q0/C0)-VD/2).*VD-2/3*((2*q*Ks*Ee0*Na).^.5/C0)*((VD+FiSi).^1.5-(FiSi).^1.5));
%plot
plot(VD,ID,VD,IDeff,'--');
title('ID & IDeff(--)')
xlabel('VD ');
ylabel('ID ');







