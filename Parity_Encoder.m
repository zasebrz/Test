function m = Parity_Encoder(data,x)
 l=length(data);
 sum=0;
 for k=1:l
     sum=data(k)+sum;
 end
 if x==1%żУ��
   if mod(sum,2)==0
      m=[data,0];
   else
      m=[data,1];
   end
 else%��У��
     if mod(sum,2)==0
      m=[data,1];
   else
      m=[data,0];
     end
 end
end

