//Program Title: Study Carrier Modulation Techniques using PSK 

clear;
clc;
close;
t = 0:0.01:1; // One symbol period
f=2; // Carrier cycles per symbol period
I=[0,0,1,0,1,1,0,0]; //data stream

//Generation of PSK Waveform

z=0;
for n=1:length(I)
    subplot(3,1,1) //Carrier Plot
        a=gca();
        a.data_bounds=[0,-1.5;length(I),1.5]; //set the boundary values for the x-y coordinates.
        a.x_location="bottom";
        a.grid=[1,-1];
        title('Carrier')
            plot((t+z),sin(2*%pi*f*t));
 
    subplot(3,1,2) //Data Plot
        a=gca();
        a.data_bounds=[0,-1.5;length(I),1.5]; //set the boundary values for the x-y coordinates.
        a.x_location="bottom";
        a.grid=[1,-1];
        title('Data')
            plot((t+z),I(n)^(t+1));

 
    subplot(3,1,3) //PSK Waveform Plot
        a=gca();
        a.data_bounds=[0,-1.5;length(I),1.5]; //set the boundary values for the x-y coordinates.
        a.x_location="bottom";
        a.grid=[1,-1];
        title('PSK Waveform')
            if (I(n)==1)
                plot((t+z),sin(2*%pi*f*t));
            elseif (I(n)==0)
                plot((t+z),sin((2*%pi*f*t)+%pi));
            end 
    z=z+1;
end
