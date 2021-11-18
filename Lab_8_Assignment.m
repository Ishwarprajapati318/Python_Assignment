clc
clear all
close all

%%
% sol 1
n=-10:100;
z=zeros(size(n));
del=z;
unit=z;
ramp=z;
del(n==0)=1;
unit(n>=0)=1;
ramp=n.*unit;
figure
stem(n,del,'.r');
ylim([0 2])
figure
stem(n,unit,'.g');
ylim([0 2])
figure
stem(n,ramp,'.b');

%%
%sol 2
u1=z;
u2=z;
u3=z;
u1(n>=0)=1;
u2(n>=10)=1;
u3(n>=20)=1;

f1=n.*(u1-u2);
f2=10*(exp(n)).^(-0.03*(n-10)).*(u2-u3);
f=f1+f2;
stem(n,f,'.r');
ylim([0 13])

%%
% sol 3
t=0:0.01:2;
sig=sin(2*pi*t);
plot(t,sig);
ylim([-2 2])
grid on
%%
% sol 4
n1=0:0.05:2;
sampsig=sin(2*pi*n1);
stem(n1,sampsig)
ylim([-2 2])
%%
%sol 5
z1=zeros(size(n1));
unit1=z1;
unit2=z1;
unit1(15:end)=1;
unit2(25:end)=1;
rect=unit1-unit2;
partsampsig=rect.*sampsig;
stem(n1,partsampsig,'.b');
ylim([-1.2 1.2])

%%
%sol 6
a=0.5;
x=u1;
h=(a.^n).*u1;
y=conv(x,h);
%%
%sol 7




