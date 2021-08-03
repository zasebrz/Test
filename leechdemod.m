function [leech_demodulated_symbol,leech_demodulated_matrix,leech_demodulated_bit_seq]=leechdemod(leech_symbol_receive,leech_symbol_numbol)
a=(-15:2:15);
b=(-15:2:15);
leech_demodulated_symbol_temp=zeros(numel(leech_symbol_receive),1);
leech_demodulated_matrix_temp=cell(numel(leech_symbol_receive),1);
c=zeros(16,16);
leech_demodulated_symbol=zeros(leech_symbol_numbol,12);
leech_demodulated_bit_seq=zeros(leech_symbol_numbol,96);
leech_demodulated_data1=zeros(numel(leech_symbol_receive),2);
leech_demodulated_data2=zeros(numel(leech_symbol_receive),1);
leech_demodulated_data3=zeros(numel(leech_symbol_receive),1);
leech_demodulated_data=zeros(numel(leech_symbol_receive),4);
temp=reshape(leech_symbol_receive.',numel(leech_symbol_receive),1);
for j=1:numel(temp)
        for k=1:16
            for p=1:16
               c(k,p)=(real(temp(j))-a(k))^2+(imag(temp(j))-b(p))^2;
            end
        end
        [x,y]=find(c==min(min(c)));
        leech_demodulated_symbol_temp(j)=a(x)+1i*b(y);
        switch leech_demodulated_symbol_temp(j)
            case {-15-15i,-15-7i,-15+1i,-15+9i,-7-15i,-7-7i,-7+1i,-7+9i,1-15i,1-7i,1+1i,1+9i,9-15i,9-7i,9+1i,9+9i}
                leech_demodulated_data1(j,:)=[0 1];
                leech_demodulated_data2(j)=1;
                leech_demodulated_data3(j)=0;
                leech_demodulated_matrix_temp(j)={'B011'};%B011集合
            case {-15-13i,-15-5i,-15+3i,-15+11i,-7-13i,-7-5i,-7+3i,-7+11i,1-13i,1-5i,1+3i,1+11i,9-13i,9-5i,9+3i,9+11i}
                leech_demodulated_data1(j,:)=[1 1];
                leech_demodulated_data2(j)=1;
                leech_demodulated_data3(j)=1;
                leech_demodulated_matrix_temp(j)={'A111'};%A111集合
            case {-15-11i,-15-3i,-15+5i,-15+13i,-7-11i,-7-3i,-7+5i,-7+13i,1-11i,1-3i,1+5i,1+13i,9-11i,9-3i,9+5i,9+13i}
                leech_demodulated_data1(j,:)=[1 0];
                leech_demodulated_data2(j)=1;
                leech_demodulated_data3(j)=0;
                leech_demodulated_matrix_temp(j)={'B101'};%B101集合
            case {-15-9i,-15-1i,-15+7i,-15+15i,-7-9i,-7-1i,-7+7i,-7+15i,1-9i,1-1i,1+7i,1+15i,9-9i,9-1i,9+7i,9+15i}
                leech_demodulated_data1(j,:)=[0 0];
                leech_demodulated_data2(j)=0;
                leech_demodulated_data3(j)=1;
                leech_demodulated_matrix_temp(j)={'A000'};%A000集合
            case {-13-15i,-13-7i,-13+1i,-13+9i,-5-15i,-5-7i,-5+1i,-5+9i,3-15i,3-7i,3+1i,3+9i,11-15i,11-7i,11+1i,11+9i}
                leech_demodulated_data1(j,:)=[1 0];
                leech_demodulated_data2(j)=0;
                leech_demodulated_data3(j)=1;
                leech_demodulated_matrix_temp(j)={'A100'};%A100集合
            case {-13-13i,-13-5i,-13+3i,-13+11i,-5-13i,-5-5i,-5+3i,-5+11i,3-13i,3-5i,3+3i,3+11i,11-13i,11-5i,11+3i,11+11i}
                leech_demodulated_data1(j,:)=[1 1];
                leech_demodulated_data2(j)=1;
                leech_demodulated_data3(j)=0;
                leech_demodulated_matrix_temp(j)={'B111'};%B111集合
            case {-13-11i,-13-3i,-13+5i,-13+13i,-5-11i,-5-3i,-5+5i,-5+13i,3-11i,3-3i,3+5i,3+13i,11-11i,11-3i,11+5i,11+13i}
                leech_demodulated_data1(j,:)=[0 1];
                leech_demodulated_data2(j)=0;
                leech_demodulated_data3(j)=1;
                leech_demodulated_matrix_temp(j)={'A010'};%A010集合
            case {-13-9i,-13-1i,-13+7i,-13+15i,-5-9i,-5-1i,-5+7i,-5+15i,3-9i,3-1i,3+7i,3+15i,11-9i,11-1i,11+7i,11+15i}
                leech_demodulated_data1(j,:)=[0 0];
                leech_demodulated_data2(j)=0;
                leech_demodulated_data3(j)=0;
                leech_demodulated_matrix_temp(j)={'B000'};%B000集合
            case {-11-15i,-11-7i,-11+1i,-11+9i,-3-15i,-3-7i,-3+1i,-3+9i,5-15i,5-7i,5+1i,5+9i,13-15i,13-7i,13+1i,13+9i}
                leech_demodulated_data1(j,:)=[1 0];
                leech_demodulated_data2(j)=0;
                leech_demodulated_data3(j)=0;
                leech_demodulated_matrix_temp(j)={'B100'};%B100集合
            case {-11-13i,-11-5i,-11+3i,-11+11i,-3-13i,-3-5i,-3+3i,-3+11i,5-13i,5-5i,5+3i,5+11i,13-13i,13-5i,13+3i,13+11i}
                leech_demodulated_data1(j,:)=[0 0];
                leech_demodulated_data2(j)=1;
                leech_demodulated_data3(j)=1;
                leech_demodulated_matrix_temp(j)={'A001'};%A001集合
            case {-11-11i,-11-3i,-11+5i,-11+13i,-3-11i,-3-3i,-3+5i,-3+13i,5-11i,5-3i,5+5i,5+13i,13-11i,13-3i,13+5i,13+13i}
                leech_demodulated_data1(j,:)=[0 1];
                leech_demodulated_data2(j)=0;
                leech_demodulated_data3(j)=0;
                leech_demodulated_matrix_temp(j)={'B010'};%B010集合
            case {-11-9i,-11-1i,-11+7i,-11+15i,-3-9i,-3-1i,-3+7i,-3+15i,5-9i,5-1i,5+7i,5+15i,13-9i,13-1i,13+7i,13+15i}
                leech_demodulated_data1(j,:)=[1 1];
                leech_demodulated_data2(j)=0;
                leech_demodulated_data3(j)=1;
                leech_demodulated_matrix_temp(j)={'A110'};%A110集合
            case {-9-15i,-9-7i,-9+1i,-9+9i,-1-15i,-1-7i,-1+1i,-1+9i,7-15i,7-7i,7+1i,7+9i,15-15i,15-7i,15+1i,15+9i}
                leech_demodulated_data1(j,:)=[0 1];
                leech_demodulated_data2(j)=1;
                leech_demodulated_data3(j)=1;
                leech_demodulated_matrix_temp(j)={'A011'};%A011集合
            case {-9-13i,-9-5i,-9+3i,-9+11i,-1-13i,-1-5i,-1+3i,-1+11i,7-13i,7-5i,7+3i,7+11i,15-13i,15-5i,15+3i,15+11i}
                leech_demodulated_data1(j,:)=[0 0];
                leech_demodulated_data2(j)=1;
                leech_demodulated_data3(j)=0;
                leech_demodulated_matrix_temp(j)={'B001'};%B001集合
            case {-9-11i,-9-3i,-9+5i,-9+13i,-1-11i,-1-3i,-1+5i,-1+13i,7-11i,7-3i,7+5i,7+13i,15-11i,15-3i,15+5i,15+13i}
                leech_demodulated_data1(j,:)=[1 0];
                leech_demodulated_data2(j)=1;
                leech_demodulated_data3(j)=1;
                leech_demodulated_matrix_temp(j)={'A101'};%A101集合
            case {-9-9i,-9-1i,-9+7i,-9+15i,-1-9i,-1-1i,-1+7i,-1+15i,7-9i,7-1i,7+7i,7+15i,15-9i,15-1i,15+7i,15+15i}
                leech_demodulated_data1(j,:)=[1 1];
                leech_demodulated_data2(j)=0;
                leech_demodulated_data3(j)=0;
                leech_demodulated_matrix_temp(j)={'B110'};%B110集合
        end
        switch leech_demodulated_symbol_temp(j)
            case {-15-15i,-15-13i,-15-11i,-15-9i,-13-15i,-13-13i,-13-11i,-13-9i,-11-15i,-11-13i,-11-11i,-11-9i,-9-15i,-9-13i,-9-11i,-9-9i}
                leech_demodulated_data(j,:)=[0 0 0 0];
            case {-15-7i,-15-5i,-15-3i,-15-1i,-13-7i,-13-5i,-13-3i,-13-1i,-11-7i,-11-5i,-11-3i,-11-1i,-9-7i,-9-5i,-9-3i,-9-1i}
                leech_demodulated_data(j,:)=[0 0 0 1];
            case {-15+1i,-15+3i,-15+5i,-15+7i,-13+1i,-13+3i,-13+5i,-13+7i,-11+1i,-11+3i,-11+5i,-11+7i,-9+1i,-9+3i,-9+5i,-9+7i}
                leech_demodulated_data(j,:)=[0 0 1 1];
            case {-15+9i,-15+11i,-15+13i,-15+15i,-13+9i,-13+11i,-13+13i,-13+15i,-11+9i,-11+11i,-11+13i,-11+15i,-9+9i,-9+11i,-9+13i,-9+15i}
                leech_demodulated_data(j,:)=[0 0 1 0];
            case {-7-15i,-7-13i,-7-11i,-7-9i,-5-15i,-5-13i,-5-11i,-5-9i,-3-15i,-3-13i,-3-11i,-3-9i,-1-15i,-1-13i,-1-11i,-1-9i}
                leech_demodulated_data(j,:)=[0 1 0 0];
            case {-7-7i,-7-5i,-7-3i,-7-1i,-5-7i,-5-5i,-5-3i,-5-1i,-3-7i,-3-5i,-3-3i,-3-1i,-1-7i,-1-5i,-1-3i,-1-1i}
                leech_demodulated_data(j,:)=[0 1 0 1];
            case {-7+1i,-7+3i,-7+5i,-7+7i,-5+1i,-5+3i,-5+5i,-5+7i,-3+1i,-3+3i,-3+5i,-3+7i,-1+1i,-1+3i,-1+5i,-1+7i}
                leech_demodulated_data(j,:)=[0 1 1 1];
            case {-7+9i,-7+11i,-7+13i,-7+15i,-5+9i,-5+11i,-5+13i,-5+15i,-3+9i,-3+11i,-3+13i,-3+15i,-1+9i,-1+11i,-1+13i,-1+15i}
                leech_demodulated_data(j,:)=[0 1 1 0];
            case {1-15i,1-13i,1-11i,1-9i,3-15i,3-13i,3-11i,3-9i,5-15i,5-13i,5-11i,5-9i,7-15i,7-13i,7-11i,7-9i}
                leech_demodulated_data(j,:)=[1 1 0 0];
            case {1-7i,1-5i,1-3i,1-1i,3-7i,3-5i,3-3i,3-1i,5-7i,5-5i,5-3i,5-1i,7-7i,7-5i,7-3i,7-1i}
                leech_demodulated_data(j,:)=[1 1 0 1];
            case {1+1i,1+3i,1+5i,1+7i,3+1i,3+3i,3+5i,3+7i,5+1i,5+3i,5+5i,5+7i,7+1i,7+3i,7+5i,7+7i}
                leech_demodulated_data(j,:)=[1 1 1 1];
            case {1+9i,1+11i,1+13i,1+15i,3+9i,3+11i,3+13i,3+15i,5+9i,5+11i,5+13i,5+15i,7+9i,7+11i,7+13i,7+15i}
                leech_demodulated_data(j,:)=[1 1 1 0];
            case {9-15i,9-13i,9-11i,9-9i,11-15i,11-13i,11-11i,11-9i,13-15i,13-13i,13-11i,13-9i,15-15i,15-13i,15-11i,15-9i}
                leech_demodulated_data(j,:)=[1 0 0 0];
            case {9-7i,9-5i,9-3i,9-1i,11-7i,11-5i,11-3i,11-1i,13-7i,13-5i,13-3i,13-1i,15-7i,15-5i,15-3i,15-1i}
                leech_demodulated_data(j,:)=[1 0 0 1];
            case {9+1i,9+3i,9+5i,9+7i,11+1i,11+3i,11+5i,11+7i,13+1i,13+3i,13+5i,13+7i,15+1i,15+3i,15+5i,15+7i}
                leech_demodulated_data(j,:)=[1 0 1 1];
            case {9+9i,9+11i,9+13i,9+15i,11+9i,11+11i,11+13i,11+15i,13+9i,13+11i,13+13i,13+15i,15+9i,15+11i,15+13i,15+15i}
                leech_demodulated_data(j,:)=[1 0 1 0];
        end
                
end
leech_demodulated_symbol_temp=reshape(leech_demodulated_symbol_temp,12,leech_symbol_numbol);
leech_demodulated_symbol=leech_demodulated_symbol_temp.';
leech_demodulated_matrix_temp=reshape(leech_demodulated_matrix_temp,12,leech_symbol_numbol);
leech_demodulated_matrix=leech_demodulated_matrix_temp';
data_temp=reshape(leech_demodulated_data',48,leech_symbol_numbol);
data=data_temp';
data1_temp=reshape(leech_demodulated_data1',24,leech_symbol_numbol);
data1=data1_temp';
data2_temp=reshape(leech_demodulated_data2,12,leech_symbol_numbol);
data2=data2_temp';
data3_temp=reshape(leech_demodulated_data3,12,leech_symbol_numbol);
data3=data3_temp';
leech_demodulated_bit_seq=[data1,data2,data3,data];
end


