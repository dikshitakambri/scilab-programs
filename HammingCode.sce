clc();
clear();
R = input('Enter the received codeword=");
P = [1 1 0;0 1 1;1 1 1;1 0 1]
I = [1 0 0 ;0 1 0 ;0 0 1]
H = [P' I]
H1 = H'
S = R*H1
S = modulo(S,2)
disp(S,'Syndrome')
if S==[0 0 0] then
    disp('','No error in received code')
    disp(R,'Corrected code')
else
    disp('','Error is present in ewceived code')
end
for i =1:7
    if S==H1(i,:) then
        mprintf('%i bit is in error',i)
        corrected_code = R
        corrected_code(i)=bitxor(1,R(i))
        disp(corrected_code,'Corected code is','')
    end
end
