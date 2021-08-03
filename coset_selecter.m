function coset= coset_selecter(data1,data2,data3)
%A000-A111的子集编号为1-8，B000-B111的子集编号为9-16
x=[data1,data2];
y=[0 0 0;0 0 1;0 1 0;0 1 1;1 0 0;1 0 1;1 1 0;1 1 1];
if data3==1%1代表A集合，0代表B集合
    if all(x==y(1,:))
        coset=1;%A000子集
    end
    if all(x==y(2,:))
        coset=2;%A001子集
    end
    if all(x==y(3,:))
        coset=3;%A010
    end
    if all(x==y(4,:))
        coset=4;%A011
    end
    if all(x==y(5,:))
        coset=5;%A100
    end
    if all(x==y(6,:))
        coset=6;%A101
    end
    if all(x==y(7,:))
        coset=7;%A110
    end
    if all(x==y(8,:))
        coset=8;%A111
    end
else
    if all(x==y(1,:))
        coset=9;%B000
    end
    if all(x==y(2,:))
        coset=10;%B001
    end
    if all(x==y(3,:))
        coset=11;%B010
    end
    if all(x==y(4,:))
        coset=12;%B011
    end
    if all(x==y(5,:))
        coset=13;%B100
    end
    if all(x==y(6,:))
        coset=14;%B101
    end  
    if all(x==y(7,:))
        coset=15;%B110
    end
    if all(x==y(8,:))
        coset=16;%B111
    end
     
end

