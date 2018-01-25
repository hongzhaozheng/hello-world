clc;
clear;
N=10; %number of particles
xPos=zeros(1,N);
v=zeros(1,N);
E=5;
q=4;
m=10;
F=q*E;
dt=1;
Time=10000;
L=200;
vi=0;
xi=0;
a=F/m;
sum=0;


for t=0:dt:Time
    %     for i=1:N
    if t==0
        vf = vi;
    else
        vf = vi+a*dt;
    end
    sum=sum+vf;
    vAvg=sum/t;
    
    if rand() < 0.05
        vf = 0;
    end
    
%     v(i)= vf;
    %         dx=(vf^2-vi^2)/(2*a);
    dx = vf*dt;
    xf = xi+dx;
%     xPos(i)=xf;
    vi=vf;
    
    plot(t,vf,'.b',t,vAvg,'.r');
    xlabel("time");
    ylabel("velocity");
    hold on;
    pause(.001);
    
    %     end
end





