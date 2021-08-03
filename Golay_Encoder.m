function m= Golay_Encoder(data)
n=23;
k=12;
p=cyclpoly(n,k,'all');
[G,H]=cyclgen(n,p(2,:));
b(1:11)=0;
b(12:23)=p(2,:);
G1=[G;b];
G1(1,:)=xor(G1(1,:),G1(12,:));
G1(2,:)=xor(G1(2,:),G1(12,:));
G1(6,:)=xor(G1(6,:),G1(12,:));
G1(7,:)=xor(G1(7,:),G1(12,:));
G1(8,:)=xor(G1(8,:),G1(12,:));
G1(10,:)=xor(G1(10,:),G1(12,:));
c=mod(data*G1,2);
m=[c,mod(sum(c,2),2)];
end

