//RZ POLAR FORMAT

clear;
close;
clc;
x=[0 0 1 0 1 1 0 0] //Data Stream
z=0;  //Starting value on x axis
for i=1:length(x)
    t=[z:z+1]  //Set of x co-ordinates for current bit duration
    t=[z:0.5:z+0.5]  //Set of x co-ordinates for first half bit duration
    subplot(2,1,1)
    a=gca();
    a.data_bounds=[0,-1.5;length(x),1.5]
    a.grid=[1,-1]
    title('POLAR RZ')
    if(x(i)==0)
        plot(t,-1)  //Plot -1 for first half bit duration
    else
        plot(t,1)  //Plot 1 for first half bit duration
    end
    t=[z+0.5:0.5:z+1]  //Set of x co-ordinates for second half bit duration
    plot(t,0)  //Plot 0 for second half bit duration
    z=z+1  //Increment starting value on x axis by one bit period
end
clear;
