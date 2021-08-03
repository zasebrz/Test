function m = leech_decoder(data)
temp1=zeros(1,24);
temp2=zeros(1,24);
A000_1=(-15:8:9);A000_2=(-9:8:15);
A001_1=(-11:8:13);A001_2=(-13:8:11);
A010_1=(-13:8:11);A010_2=(-11:8:13);
A011_1=(-9:8:15);A011_2=(-15:8:9);
A100_1=(-13:8:11);A100_2=(-15:8:9);
A101_1=(-9:8:15);A101_2=(-11:8:13);
A110_1=(-11:8:13);A110_2=(-9:8:15);
A111_1=(-15:8:9);A111_2=(-13:8:11);
B000_1=(-13:8:11);B000_2=(-9:8:15);
B001_1=(-9:8:15);B001_2=(-13:8:11);
B010_1=(-11:8:13);B010_2=(-11:8:13);
B011_1=(-15:8:9);B011_2=(-15:8:9);
B100_1=(-11:8:13);B100_2=(-15:8:9);
B101_1=(-15:8:9);B101_2=(-11:8:13);
B110_1=(-9:8:15);B110_2=(-9:8:15);
B111_1=(-13:8:11);B111_2=(-13:8:11);
data_length=size(data,1);
c_matrix=load('c_matrix.txt');
for k=1:data_length
    data1=data(k,:);
    for j=1:12
        for p=1:4
            for q=1:4
              c1(p,q,j)=(real(data1(j))-A000_1(p))^2+(imag(data1(j))-A000_2(q))^2;
              c2(p,q,j)=(real(data1(j))-A001_1(p))^2+(imag(data1(j))-A001_2(q))^2;
              c3(p,q,j)=(real(data1(j))-A010_1(p))^2+(imag(data1(j))-A010_2(q))^2;
              c4(p,q,j)=(real(data1(j))-A011_1(p))^2+(imag(data1(j))-A011_2(q))^2;
              c5(p,q,j)=(real(data1(j))-A100_1(p))^2+(imag(data1(j))-A100_2(q))^2;
              c6(p,q,j)=(real(data1(j))-A101_1(p))^2+(imag(data1(j))-A101_2(q))^2;
              c7(p,q,j)=(real(data1(j))-A110_1(p))^2+(imag(data1(j))-A110_2(q))^2;
              c8(p,q,j)=(real(data1(j))-A111_1(p))^2+(imag(data1(j))-A111_2(q))^2;
              d1(p,q,j)=(real(data1(j))-B000_1(p))^2+(imag(data1(j))-B000_2(q))^2;
              d2(p,q,j)=(real(data1(j))-B001_1(p))^2+(imag(data1(j))-B001_2(q))^2;
              d3(p,q,j)=(real(data1(j))-B010_1(p))^2+(imag(data1(j))-B010_2(q))^2;
              d4(p,q,j)=(real(data1(j))-B011_1(p))^2+(imag(data1(j))-B011_2(q))^2;
              d5(p,q,j)=(real(data1(j))-B100_1(p))^2+(imag(data1(j))-B100_2(q))^2;
              d6(p,q,j)=(real(data1(j))-B101_1(p))^2+(imag(data1(j))-B101_2(q))^2;
              d7(p,q,j)=(real(data1(j))-B110_1(p))^2+(imag(data1(j))-B110_2(q))^2;
              d8(p,q,j)=(real(data1(j))-B111_1(p))^2+(imag(data1(j))-B111_2(q))^2;
            end
        end
        d_a(j,1)=min(min(c1(:,:,j)));
        d_a(j,2)=min(min(c2(:,:,j)));
        d_a(j,3)=min(min(c3(:,:,j)));
        d_a(j,4)=min(min(c4(:,:,j)));       
        d_a(j,5)=min(min(c5(:,:,j)));      
        d_a(j,6)=min(min(c6(:,:,j)));      
        d_a(j,7)=min(min(c7(:,:,j)));
        d_a(j,8)=min(min(c8(:,:,j)));     
        d_b(j,1)=min(min(d1(:,:,j)));  
        d_b(j,2)=min(min(d2(:,:,j)));      
        d_b(j,3)=min(min(d3(:,:,j)));      
        d_b(j,4)=min(min(d4(:,:,j)));      
        d_b(j,5)=min(min(d5(:,:,j)));
        d_b(j,6)=min(min(d6(:,:,j)));   
        d_b(j,7)=min(min(d7(:,:,j)));     
        d_b(j,8)=min(min(d8(:,:,j)));
        d_a1(j,1)=min(d_a(j,1),d_a(j,2));
        d_b1(j,1)=min(d_b(j,1),d_b(j,2));
        d_a2(j,1)=abs(d_a(j,1)-d_a(j,2));
        d_b2(j,1)=abs(d_b(j,1)-d_b(j,2));
        if d_a1(j,1)==d_a(j,1)
            p_a(j,1)=0;
        end
        if d_a1(j,1)==d_a(j,2)
            p_a(j,1)=1;
        end
        if d_b1(j,1)==d_b(j,1)
            p_b(j,1)=0;
        end
        if d_b1(j,1)==d_b(j,2)
            p_b(j,1)=1;
        end
        d_a1(j,2)=min(d_a(j,3),d_a(j,4));
        d_a2(j,2)=abs(d_a(j,3)-d_a(j,4));
        d_b1(j,2)=min(d_b(j,3),d_b(j,4));
        d_b2(j,2)=abs(d_b(j,3)-d_b(j,4));
        if d_a1(j,2)==d_a(j,3)
            p_a(j,2)=0;
        end
        if d_a1(j,2)==d_a(j,4)
            p_a(j,2)=1;
        end
        if d_b1(j,2)==d_b(j,3)
            p_b(j,2)=0;
        end
        if d_b1(j,2)==d_b(j,4)
            p_b(j,2)=1;
        end
        d_a1(j,3)=min(d_a(j,5),d_a(j,6));
        d_a2(j,3)=abs(d_a(j,5)-d_a(j,6));
        d_b1(j,3)=min(d_b(j,5),d_b(j,6));
        d_b2(j,3)=abs(d_b(j,5)-d_b(j,6));
        if d_a1(j,3)==d_a(j,5)
            p_a(j,3)=0;
        end
        if d_a1(j,3)==d_a(j,6)
            p_a(j,3)=1;
        end
        if d_b1(j,3)==d_b(j,5)
            p_b(j,3)=0;
        end
        if d_b1(j,3)==d_b(j,6)
            p_b(j,3)=1;
        end
        d_a1(j,4)=min(d_a(j,7),d_a(j,8));
        d_a2(j,4)=abs(d_a(j,7)-d_a(j,8));
        d_b1(j,4)=min(d_b(j,7),d_b(j,8));
        d_b2(j,4)=abs(d_b(j,7)-d_b(j,8));
        if d_a1(j,4)==d_a(j,7)
            p_a(j,4)=0;
        end
        if d_a1(j,4)==d_a(j,8)
            p_a(j,4)=1;
        end
        if d_b1(j,4)==d_b(j,7)
            p_b(j,4)=0;
        end
        if d_b1(j,4)==d_b(j,8)
            p_b(j,4)=1;
        end
    end
    D_a(:,1)=d_a1(:,1)-d_a1(:,4);
    D_a(:,2)=d_a1(:,2)-d_a1(:,3);
    D_a(:,3)=-D_a(:,2);
    D_a(:,4)=-D_a(:,1);
    O_a(:,1)=d_a1(:,1)+d_a1(:,4);
    O_a(:,2)=d_a1(:,2)+d_a1(:,3);
    O_a(:,3)=O_a(:,2);
    O_a(:,4)=O_a(:,1);
    for v=1:3
        O_a1(v,:)=O_a(4*v-3,:)+O_a(4*v-2,:)+O_a(4*v-1,:)+O_a(4*v,:);
        D_a1(v,:)=D_a(4*v-3,:)+D_a(4*v-2,:)+D_a(4*v-1,:)+D_a(4*v,:);
    end
    sgnc_v=sign(D_a1);
    D_a2=abs(D_a1);
%     for j=1:3
%         for k=1:4
%             if(sgnc_v(j,k)<=0)
%                 c_mv=c_matrix(
    [min_a,index1]=min(d_a1,[],2);
%     [~,index11]=min(d_a2,[],2);
    [min_b,index2]=min(d_b1,[],2);
%     [~,index22]=min(d_b2,[],2);
    for j=1:12
        switch index1(j)
            case 1
                switch p_a(j,index1(j))
                    case 0
                        [x,y]=find(c1(:,:,j)==min_a(j));
                        leech_demodulated_symbol_temp(j)=A000_1(x)+1i*A000_2(y);
                    case 1
                        [x1,y1]=find(c2(:,:,j)==min_a(j));
                        leech_demodulated_symbol_temp(j)=A001_1(x1)+1i*A001_2(y1);
                end
            case 2
                switch p_a(j,index1(j))
                    case 0
                        [x2,y2]=find(c3(:,:,j)==min_a(j));
                        leech_demodulated_symbol_temp(j)=A010_1(x2)+1i*A010_2(y2);
                    case 1
                        [x3,y3]=find(c4(:,:,j)==min_a(j));
                        leech_demodulated_symbol_temp(j)=A011_1(x3)+1i*A011_2(y3);
                end
            case 3
                switch p_a(j,index1(j))
                    case 0
                        [x4,y4]=find(c5(:,:,j)==min_a(j));
                        leech_demodulated_symbol_temp(j)=A100_1(x4)+1i*A100_2(y4);
                    case 1
                        [x5,y5]=find(c6(:,:,j)==min_a(j));
                        leech_demodulated_symbol_temp(j)=A101_1(x5)+1i*A101_2(y5);
                end
            case 4
                switch p_a(j,index1(j))
                    case 0
                        [x6,y6]=find(c7(:,:,j)==min_a(j));
                        leech_demodulated_symbol_temp(j)=A110_1(x6)+1i*A110_2(y6);
                    case 1
                        [x7,y7]=find(c8(:,:,j)==min_a(j));
                        leech_demodulated_symbol_temp(j)=A111_1(x7)+1i*A111_2(y7);
                end
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
    data_atemp=reshape(leech_demodulated_data',48,1);
    data_a=data_atemp';
    data_a2=Repetition_Encoder(1);
    for j=1:12
        switch index2(j)
            case 1
                switch p_b(j,index2(j))
                    case 0
                        [x8,y8]=find(d1(:,:,j)==min_b(j));
                        leech_demodulated_symbol_temp1(j)=B000_1(x8)+1i*B000_2(y8);
                    case 1
                        [x9,y9]=find(d2(:,:,j)==min_b(j));
                        leech_demodulated_symbol_temp1(j)=B001_1(x9)+1i*B001_2(y9);
                end
            case 2
                switch p_b(j,index2(j))
                    case 0
                        [x10,y10]=find(d3(:,:,j)==min_b(j));
                        leech_demodulated_symbol_temp1(j)=B010_1(x10)+1i*B010_2(y10);
                    case 1
                        [x11,y11]=find(d4(:,:,j)==min_b(j));
                        leech_demodulated_symbol_temp1(j)=B011_1(x11)+1i*B011_2(y11);
                end
            case 3
                switch p_b(j,index2(j))
                    case 0
                        [x12,y12]=find(d5(:,:,j)==min_b(j));
                        leech_demodulated_symbol_temp1(j)=B100_1(x12)+1i*B100_2(y12);
                    case 1
                        [x13,y13]=find(d6(:,:,j)==min_b(j));
                        leech_demodulated_symbol_temp1(j)=B101_1(x13)+1i*B101_2(y13);
                end
            case 4
                switch p_b(j,index2(j))
                    case 0
                        [x14,y14]=find(d7(:,:,j)==min_b(j));
                        leech_demodulated_symbol_temp1(j)=B110_1(x14)+1i*B110_2(y14);
                    case 1
                        [x15,y15]=find(d8(:,:,j)==min_b(j));
                        leech_demodulated_symbol_temp1(j)=B111_1(x15)+1i*B111_2(y15);
                end
        end
        switch leech_demodulated_symbol_temp1(j)
            case {-15-15i,-15-13i,-15-11i,-15-9i,-13-15i,-13-13i,-13-11i,-13-9i,-11-15i,-11-13i,-11-11i,-11-9i,-9-15i,-9-13i,-9-11i,-9-9i}
                leech_demodulated_data1(j,:)=[0 0 0 0];
            case {-15-7i,-15-5i,-15-3i,-15-1i,-13-7i,-13-5i,-13-3i,-13-1i,-11-7i,-11-5i,-11-3i,-11-1i,-9-7i,-9-5i,-9-3i,-9-1i}
                leech_demodulated_data1(j,:)=[0 0 0 1];
            case {-15+1i,-15+3i,-15+5i,-15+7i,-13+1i,-13+3i,-13+5i,-13+7i,-11+1i,-11+3i,-11+5i,-11+7i,-9+1i,-9+3i,-9+5i,-9+7i}
                leech_demodulated_data1(j,:)=[0 0 1 1];
            case {-15+9i,-15+11i,-15+13i,-15+15i,-13+9i,-13+11i,-13+13i,-13+15i,-11+9i,-11+11i,-11+13i,-11+15i,-9+9i,-9+11i,-9+13i,-9+15i}
                leech_demodulated_data1(j,:)=[0 0 1 0];
            case {-7-15i,-7-13i,-7-11i,-7-9i,-5-15i,-5-13i,-5-11i,-5-9i,-3-15i,-3-13i,-3-11i,-3-9i,-1-15i,-1-13i,-1-11i,-1-9i}
                leech_demodulated_data1(j,:)=[0 1 0 0];
            case {-7-7i,-7-5i,-7-3i,-7-1i,-5-7i,-5-5i,-5-3i,-5-1i,-3-7i,-3-5i,-3-3i,-3-1i,-1-7i,-1-5i,-1-3i,-1-1i}
                leech_demodulated_data(j,:)=[0 1 0 1];
            case {-7+1i,-7+3i,-7+5i,-7+7i,-5+1i,-5+3i,-5+5i,-5+7i,-3+1i,-3+3i,-3+5i,-3+7i,-1+1i,-1+3i,-1+5i,-1+7i}
                leech_demodulated_data1(j,:)=[0 1 1 1];
            case {-7+9i,-7+11i,-7+13i,-7+15i,-5+9i,-5+11i,-5+13i,-5+15i,-3+9i,-3+11i,-3+13i,-3+15i,-1+9i,-1+11i,-1+13i,-1+15i}
                leech_demodulated_data1(j,:)=[0 1 1 0];
            case {1-15i,1-13i,1-11i,1-9i,3-15i,3-13i,3-11i,3-9i,5-15i,5-13i,5-11i,5-9i,7-15i,7-13i,7-11i,7-9i}
                leech_demodulated_data1(j,:)=[1 1 0 0];
            case {1-7i,1-5i,1-3i,1-1i,3-7i,3-5i,3-3i,3-1i,5-7i,5-5i,5-3i,5-1i,7-7i,7-5i,7-3i,7-1i}
                leech_demodulated_data1(j,:)=[1 1 0 1];
            case {1+1i,1+3i,1+5i,1+7i,3+1i,3+3i,3+5i,3+7i,5+1i,5+3i,5+5i,5+7i,7+1i,7+3i,7+5i,7+7i}
                leech_demodulated_data1(j,:)=[1 1 1 1];
            case {1+9i,1+11i,1+13i,1+15i,3+9i,3+11i,3+13i,3+15i,5+9i,5+11i,5+13i,5+15i,7+9i,7+11i,7+13i,7+15i}
                leech_demodulated_data1(j,:)=[1 1 1 0];
            case {9-15i,9-13i,9-11i,9-9i,11-15i,11-13i,11-11i,11-9i,13-15i,13-13i,13-11i,13-9i,15-15i,15-13i,15-11i,15-9i}
                leech_demodulated_data1(j,:)=[1 0 0 0];
            case {9-7i,9-5i,9-3i,9-1i,11-7i,11-5i,11-3i,11-1i,13-7i,13-5i,13-3i,13-1i,15-7i,15-5i,15-3i,15-1i}
                leech_demodulated_data1(j,:)=[1 0 0 1];
            case {9+1i,9+3i,9+5i,9+7i,11+1i,11+3i,11+5i,11+7i,13+1i,13+3i,13+5i,13+7i,15+1i,15+3i,15+5i,15+7i}
                leech_demodulated_data1(j,:)=[1 0 1 1];
            case {9+9i,9+11i,9+13i,9+15i,11+9i,11+11i,11+13i,11+15i,13+9i,13+11i,13+13i,13+15i,15+9i,15+11i,15+13i,15+15i}
                leech_demodulated_data1(j,:)=[1 0 1 0];
        end
    end
    data_btemp=reshape(leech_demodulated_data1',48,1);
    data_b=data_btemp';
    data_b2=Repetition_Encoder(0);
   for n=1:12
      a(n)=p_a(n,index1(n));
      b(n)=p_b(n,index2(n));
   end
   if(mod(sum(a),2)==0)
       for n=1:12
           switch index1(n)
               case 1
                   temp1(1,2*n-1:2*n)=[0 0];
               case 2
                   temp1(1,2*n-1:2*n)=[0 1];
               case 3
                   temp1(1,2*n-1:2*n)=[1 0];
               case 4
                   temp1(1,2*n-1:2*n)=[1 1];
           end
       end
       d_asum=sum(min_a);
   else
       for j=1:12
           d_aerror(j)=d_a2(j,index1(j));
       end
       [d_aerrormin,aerror_index]=min(d_aerror);
       A=a(aerror_index)+1;
       a(aerror_index)=mod(A,2);
       d_asum=sum(min_a)+d_aerrormin;
   end
   m1=[temp1,a,data_a2,data_a];
   if(mod(sum(b),2)==1)
       for n=1:12
           switch index2(n)
               case 1
                   temp2(1,2*n-1:2*n)=[0 0];
               case 2
                   temp2(1,2*n-1:2*n)=[0 1];
               case 3
                   temp2(1,2*n-1:2*n)=[1 0];
               case 4
                   temp2(1,2*n-1:2*n)=[1 1];
           end
       end
       d_bsum=sum(min_b);
   else
       for j=1:12
           d_berror(j)=d_b2(j,index2(j));
       end
       [d_berrormin,berror_index]=min(d_berror);
       B=b(berror_index)+1;
       b(berror_index)=mod(B,2);
       d_bsum=sum(min_b)+d_berrormin;
   end
   m2=[temp2,b,data_b2,data_b];
   if(d_asum>d_bsum)
       m(k,:)=m2;
   else
       m(k,:)=m1;
   end
end
end

