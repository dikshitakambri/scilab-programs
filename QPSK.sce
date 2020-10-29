clear;
clc;
close;
T=2;//One symbol period
t=0:0.01:T;//sampling matrix for one symbol period
f=1;//carrier frequency(cycles per period)
I=[0,0,1,0,1,1,0,0];
I_PNRZ=[]
for n=1:length(I)
    if I(n)==0 then
        I_PNRZ=[I_PNRZ,-1]
    else
        I_PNRZ=[I_PNRZ,1]
        end
end
I_Carrier=sqrt(2/T)*sin(2*%pi*f*t);
Q_Carrier=sqrt(2/T)*cos(2*%pi*f*t);
z=0;
for n=1:2:length(I_PNRZ)
    I_Bit=I_PNRZ(n)
    Q_Bit=I_PNRZ(n+1)
    subplot(3,1,1)
    a=gca();
    a.data_bounds=[0,-1.5;length(I_PNRZ),1.5];
    a.x_location="origin";
    a.grid=[1,1];
    title('I data and I PSK')
    plot((t+z),I_Carrier*I_Bit);
    plot((t+z),I_Bit,'r');
    subplot(3,1,2)
    a=gca();
    a.data_bounds=[0,-1.5;length(I_PNRZ),1.5];
    a.x_location="origin";
    a.grid=[1,1];
    title('Q data and Q PSK')
    plot((t+z),Q_Carrier*Q_Bit);
    plot((t+z),Q_Bit,'r');
    subplot(3,1,3) 
    a=gca();
    a.data_bounds=[0,-1.5;length(I_PNRZ),1.5];
    a.x_location="origin";
    a.grid=[1,1];  
    title('QPSK and I Csrrier') 
    plot((t+z),(I_Carrier*I_Bit)+(Q_Carrier*Q_Bit));
    z=z+2;
   end

