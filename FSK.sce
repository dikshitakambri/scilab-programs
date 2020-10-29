clear;
clc;
close;
t = 0:0.01:1; // One symbol period
f1=2; // Carrier cycles per symbol period
f2=4; // Carrier cycles per symbol period
I=[0,0,1,0,1,1,0,0]; //data stream

//Generation of FSK Waveform

z=0;
for n=1:length(I)
    subplot(4,1,1) //Carrier 1 Plot
        a=gca();
        a.data_bounds=[0,-1.5;length(I),1.5]; //set the boundary values for the x-y coordinates.
        a.x_location="bottom";
        a.grid=[1,-1];
        title('Carrier 1')
            plot((t+z),sin(2*%pi*f1*t));
      
    subplot(4,1,2) //Carrier 2 Plot
        a=gca();
        a.data_bounds=[0,-1.5;length(I),1.5]; //set the boundary values for the x-y coordinates.
        a.x_location="bottom";
        a.grid=[1,-1];
        title('Carrier 2')
            plot((t+z),sin(2*%pi*f2*t));

    subplot(4,1,3) //Data Plot
        a=gca();
        a.data_bounds=[0,-1.5;length(I),1.5]; //set the boundary values for the x-y coordinates.
        a.x_location="bottom";
        a.grid=[1,-1];
        title('Data')
           plot((t+z),I(n)^(t+1));

        
    subplot(4,1,4) //FSK Waveform Plot
        a=gca();
        a.data_bounds=[0,-1.5;length(I),1.5]; //set the boundary values for the x-y coordinates.
        a.x_location="bottom";
        a.grid=[1,-1];
        title('FSK Waveform')
            if (I(n)==0)
                plot((t+z),sin(2*%pi*f1*t));
            elseif (I(n)==1)
                plot((t+z),sin(2*%pi*f2*t));
            end 
    z=z+1;
end
