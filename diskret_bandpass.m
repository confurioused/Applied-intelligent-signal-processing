fs = 96000;
bw = 20;
wsig = 4;
N=180;
Ap = 0.01;
Ast = 80;
t= 0:1/fs:1;
%f = ifft(rectangularPulse(-bw,bw,w-wsig),w,t);
Rp = (10^(Ap/20) - 1)/(10^(Ap/20) + 1); 
Rst = 10^(-Ast/20);





NUM = firceqrip(N,bw/(fs/2),[Rp Rst],'passedge');
fvtool(NUM,'Fs',fs)
fvtool(NUM,'polezero')
NUM