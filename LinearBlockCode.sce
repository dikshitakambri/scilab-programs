clear();
clc();
m = [0 0 0;0 0 01;0 1 0;0 1 1;1 0 0;1 0 1;1 1 0;1 1 1]
p = [1 1 0;0 1 1;1 0 1]
I = [1 0 0;0 1 0;0 0 1];
G = [I p];
c = [0 0 0 0 0 0];
for i = 1:8
    c(i,:)=m(i,:)*G;
    c(i,:)=modulo(c(i,:),2)
    wt(i)=c(i,:)*[1;1;1;1;1;1];
end
dmin = min(wt(wt>0));
errd= dmin-1;
errc =(dmin-1)/2;
disp(m,"Data bits")
disp(I,"Identity Matrix")
disp(G,"Generator matrix")
disp(c,"Codeword")
disp(dmin,"Minimum hamming distance")
disp(errd,"Erroe detection capability")
disp(errc,"Error correction capability")
