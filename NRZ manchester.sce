//NRZ MANCHESTER FORMAT


close;
clc;
x=[0 0 1 0 1 1 0 0] //Data Stream
z=0;  //Starting value on x axis
for i=1:length(x)
    t=[z:1:z+1]  //Plot range on x-axis (One bit period)
    t=[z:0.5:z+0.5]  //Plot range on x-axis (first half bit period)
    subplot(2,1,1)
    a=gca();
    a.data_bounds=[0,-1.5;length(x),1.5]
    a.grid=[1,-1]
    title('MANCHESTER')
    if(x(i)==1)
        plot(t,1)  //Plot 1 for first half bit duration
        t=[z+0.5:0.5:z+1]  //Plot range on x-axis (second half bit period)
        plot(t,-1)  //Plot 1 for second half bit duration
    else
        plot(t,-1)  //Plot -1 for first half bit duration
        t=[z+0.5:0.5:z+1]  //Plot range on x-axis (second half bit period)
        plot(t,1)  //Plot 1 for second half bit duration
    end
    z=z+1;  //Increment starting value on x axis by one bit period
end
