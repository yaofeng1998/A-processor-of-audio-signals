[x,fs]=audioread('1.wav');
N=length(x);
n=0:N-1;
X=fft(x);
Fs=1*fs;
T=1/Fs;
f=n/N*Fs;
figure(1);
subplot(2,1,1),plot(n,x);title("ԭ��");ylabel("y");xlabel("x");
subplot(2,1,2),plot(n,abs(X));title("������");ylabel("y");xlabel("x");
sound(x,fs);
P=1.8*fs;
sound(x,P);
Q=0.5*fs;
sound(x,Q);