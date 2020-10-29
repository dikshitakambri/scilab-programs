//Program Title: Study Carrier Modulation Techniques using ASK 

clear;
clc;
close;
t = 0:0.01:1; // One symbol period 
f = 2; // Carrier cycles per symbol period 
I=[0,0,1,0,1,1,0,0]; //data stream 

//Generation of ASK Waveform 

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

 

    subplot(3,1,3) //ASK Waveform Plot 

        a=gca(); 

        a.data_bounds=[0,-1.5;length(I),1.5]; //set the boundary values for the x-y coordinates. 

        a.x_location="bottom"; 

        a.grid=[1,-1]; 

        title('ASK Waveform') 

            plot((t+z),(sin(2*%pi*f*t))*(I(n))); 

    z=z+1; 

end 
