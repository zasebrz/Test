function [symbol_constellation,row,col] = symbol_selecter(data,coset)
temp=bi2de(data,'left-msb');
switch coset
    case 1%A000
        switch temp
            case 0
                symbol_constellation=-15-9i;%����ͼ����
                col=1;%����������
                row=4;%���������
            case 1
                symbol_constellation=-15-1i;%����ͼ����
                col=1;%����������
                row=8;%���������
            case 2
                symbol_constellation=-15+15i;%����ͼ����
                col=1;%����������
                row=16;%���������
            case 3
                symbol_constellation=-15+7i;%����ͼ����
                col=1;%����������
                row=12;%���������
            case 4
                symbol_constellation=-7-9i;%����ͼ����
                col=5;%����������
                row=4;%���������
            case 5
                symbol_constellation=-7-1i;%����ͼ����
                col=5;%����������
                row=8;%���������
            case 6
                symbol_constellation=-7+15i;%����ͼ����
                col=5;%����������
                row=16;%���������
            case 7
                symbol_constellation=-7+7i;%����ͼ����
                col=5;%����������
                row=12;%���������
            case 8
                symbol_constellation=9-9i;%����ͼ����
                col=13;%����������
                row=4;%���������
            case 9
                symbol_constellation=9-1i;%����ͼ����
                col=13;%����������
                row=8;%���������
            case 10
                symbol_constellation=9+15i;%����ͼ����
                col=13;%����������
                row=16;%���������
            case 11
                symbol_constellation=9+7i;%����ͼ����
                col=13;%����������
                row=12;%���������
            case 12
                symbol_constellation=1-9i;%����ͼ����
                col=9;%����������
                row=4;%���������
            case 13
                symbol_constellation=1-1i;%����ͼ����
                col=9;%����������
                row=8;%���������
            case 14
                symbol_constellation=1+15i;%����ͼ����
                col=9;%����������
                row=16;%���������
            case 15
                symbol_constellation=1+7i;%����ͼ����
                col=9;%����������
                row=12;%���������
        end
    case 2%A001
        switch temp
            case 0
                symbol_constellation=-11-13i;%����ͼ����
                col=3;%����������
                row=2;%���������
            case 1
                symbol_constellation=-11-5i;%����ͼ����
                col=3;%����������
                row=6;%���������
            case 2
                symbol_constellation=-11+11i;%����ͼ����
                col=3;%����������
                row=14;%���������
            case 3
                symbol_constellation=-11+3i;%����ͼ����
                col=3;%����������
                row=10;%���������
            case 4
                symbol_constellation=-3-13i;%����ͼ����
                col=7;%����������
                row=2;%���������
            case 5
                symbol_constellation=-3-5i;%����ͼ����
                col=7;%����������
                row=6;%���������
            case 6
                symbol_constellation=-3+11i;%����ͼ����
                col=7;%����������
                row=14;%���������
            case 7
                symbol_constellation=-3+3i;%����ͼ����
                col=7;%����������
                row=10;%���������
            case 8
                symbol_constellation=13-13i;%����ͼ����
                col=15;%����������
                row=2;%���������
            case 9
                symbol_constellation=13-5i;%����ͼ����
                col=15;%����������
                row=6;%���������
            case 10
                symbol_constellation=13+11i;%����ͼ����
                col=15;%����������
                row=14;%���������
            case 11
                symbol_constellation=13+3i;%����ͼ����
                col=15;%����������
                row=10;%���������
            case 12
                symbol_constellation=5-13i;%����ͼ����
                col=11;%����������
                row=2;%���������
            case 13
                symbol_constellation=5-5i;%����ͼ����
                col=11;%����������
                row=6;%���������
            case 14
                symbol_constellation=5+11i;%����ͼ����
                col=11;%����������
                row=14;%���������
            case 15
                symbol_constellation=5+3i;%����ͼ����
                col=11;%����������
                row=10;%���������
        end
    case 3%A010
        switch temp
            case 0
                symbol_constellation=-13-11i;%����ͼ����
                col=2;%����������
                row=3;%���������
            case 1
                symbol_constellation=-13-3i;%����ͼ����
                col=2;%����������
                row=7;%���������
            case 2
                symbol_constellation=-13+13i;%����ͼ����
                col=2;%����������
                row=15;%���������
            case 3
                symbol_constellation=-13+5i;%����ͼ����
                col=2;%����������
                row=11;%���������
            case 4
                symbol_constellation=-5-11i;%����ͼ����
                col=6;%����������
                row=3;%���������
            case 5
                symbol_constellation=-5-3i;%����ͼ����
                col=6;%����������
                row=7;%���������
            case 6
                symbol_constellation=-5+13i;%����ͼ����
                col=6;%����������
                row=15;%���������
            case 7
                symbol_constellation=-5+5i;%����ͼ����
                col=6;%����������
                row=11;%���������
            case 8
                symbol_constellation=11-11i;%����ͼ����
                col=14;%����������
                row=3;%���������
            case 9
                symbol_constellation=11-3i;%����ͼ����
                col=14;%����������
                row=7;%���������
            case 10
                symbol_constellation=11+13i;%����ͼ����
                col=14;%����������
                row=15;%���������
            case 11
                symbol_constellation=11+5i;%����ͼ����
                col=14;%����������
                row=11;%���������
            case 12
                symbol_constellation=3-11i;%����ͼ����
                col=10;%����������
                row=3;%���������
            case 13
                symbol_constellation=3-3i;%����ͼ����
                col=10;%����������
                row=7;%���������
            case 14
                symbol_constellation=3+13i;%����ͼ����
                col=10;%����������
                row=15;%���������
            case 15
                symbol_constellation=3+5i;%����ͼ����
                col=10;%����������
                row=11;%���������
        end
    case 4%A011
        switch temp
            case 0
                symbol_constellation=-9-15i;%����ͼ����
                col=4;%����������
                row=1;%���������
            case 1
                symbol_constellation=-9-7i;%����ͼ����
                col=4;%����������
                row=5;%���������
            case 2
                symbol_constellation=-9+9i;%����ͼ����
                col=4;%����������
                row=13;%���������
            case 3
                symbol_constellation=-9+1i;%����ͼ����
                col=4;%����������
                row=9;%���������
            case 4
                symbol_constellation=-1-15i;%����ͼ����
                col=8;%����������
                row=1;%���������
            case 5
                symbol_constellation=-1-7i;%����ͼ����
                col=8;%����������
                row=5;%���������
            case 6
                symbol_constellation=-1+9i;%����ͼ����
                col=8;%����������
                row=13;%���������
            case 7
                symbol_constellation=-1+1i;%����ͼ����
                col=8;%����������
                row=9;%���������
            case 8
                symbol_constellation=15-15i;%����ͼ����
                col=16;%����������
                row=1;%���������
            case 9
                symbol_constellation=15-7i;%����ͼ����
                col=16;%����������
                row=5;%���������
            case 10
                symbol_constellation=15+9i;%����ͼ����
                col=16;%����������
                row=13;%���������
            case 11
                symbol_constellation=15+1i;%����ͼ����
                col=16;%����������
                row=9;%���������
            case 12
                symbol_constellation=7-15i;%����ͼ����
                col=12;%����������
                row=1;%���������
            case 13
                symbol_constellation=7-7i;%����ͼ����
                col=12;%����������
                row=5;%���������
            case 14
                symbol_constellation=7+9i;%����ͼ����
                col=12;%����������
                row=13;%���������
            case 15
                symbol_constellation=7+1i;%����ͼ����
                col=12;%����������
                row=9;%���������
        end
    case 5%A100
        switch temp
            case 0
                symbol_constellation=-13-15i;%����ͼ����
                col=2;%����������
                row=1;%���������
            case 1
                symbol_constellation=-13-7i;%����ͼ����
                col=2;%����������
                row=5;%���������
            case 2
                symbol_constellation=-13+9i;%����ͼ����
                col=2;%����������
                row=13;%���������
            case 3
                symbol_constellation=-13+1i;%����ͼ����
                col=2;%����������
                row=9;%���������
            case 4
                symbol_constellation=-5-15i;%����ͼ����
                col=6;%����������
                row=1;%���������
            case 5
                symbol_constellation=-5-7i;%����ͼ����
                col=6;%����������
                row=5;%���������
            case 6
                symbol_constellation=-5+9i;%����ͼ����
                col=6;%����������
                row=13;%���������
            case 7
                symbol_constellation=-5+1i;%����ͼ����
                col=6;%����������
                row=9;%���������
            case 8
                symbol_constellation=11-15i;%����ͼ����
                col=14;%����������
                row=1;%���������
            case 9
                symbol_constellation=11-7i;%����ͼ����
                col=14;%����������
                row=5;%���������
            case 10
                symbol_constellation=11+9i;%����ͼ����
                col=14;%����������
                row=13;%���������
            case 11
                symbol_constellation=11+1i;%����ͼ����
                col=14;%����������
                row=9;%���������
            case 12
                symbol_constellation=3-15i;%����ͼ����
                col=10;%����������
                row=1;%���������
            case 13
                symbol_constellation=3-7i;%����ͼ����
                col=10;%����������
                row=5;%���������
            case 14
                symbol_constellation=3+9i;%����ͼ����
                col=10;%����������
                row=13;%���������
            case 15
                symbol_constellation=3+1i;%����ͼ����
                col=10;%����������
                row=9;%���������
        end
    case 6%A101
        switch temp
            case 0
                symbol_constellation=-9-11i;%����ͼ����
                col=4;%����������
                row=3;%���������
            case 1
                symbol_constellation=-9-3i;%����ͼ����
                col=4;%����������
                row=7;%���������
            case 2
                symbol_constellation=-9+13i;%����ͼ����
                col=4;%����������
                row=15;%���������
            case 3
                symbol_constellation=-9+5i;%����ͼ����
                col=4;%����������
                row=11;%���������
            case 4
                symbol_constellation=-1-11i;%����ͼ����
                col=8;%����������
                row=3;%���������
            case 5
                symbol_constellation=-1-3i;%����ͼ����
                col=8;%����������
                row=7;%���������
            case 6
                symbol_constellation=-1+13i;%����ͼ����
                col=8;%����������
                row=15;%���������
            case 7
                symbol_constellation=-1+5i;%����ͼ����
                col=8;%����������
                row=11;%���������
            case 8
                symbol_constellation=15-11i;%����ͼ����
                col=16;%����������
                row=3;%���������
            case 9
                symbol_constellation=15-3i;%����ͼ����
                col=16;%����������
                row=7;%���������
            case 10
                symbol_constellation=15+13i;%����ͼ����
                col=16;%����������
                row=15;%���������
            case 11
                symbol_constellation=15+5i;%����ͼ����
                col=16;%����������
                row=11;%���������
            case 12
                symbol_constellation=7-11i;%����ͼ����
                col=12;%����������
                row=3;%���������
            case 13
                symbol_constellation=7-3i;%����ͼ����
                col=12;%����������
                row=7;%���������
            case 14
                symbol_constellation=7+13i;%����ͼ����
                col=12;%����������
                row=15;%���������
            case 15
                symbol_constellation=7+5i;%����ͼ����
                col=12;%����������
                row=11;%���������
        end
    case 7%A110
        switch temp
            case 0
                symbol_constellation=-11-9i;%����ͼ����
                col=3;%����������
                row=4;%���������
            case 1
                symbol_constellation=-11-1i;%����ͼ����
                col=3;%����������
                row=8;%���������
            case 2
                symbol_constellation=-11+15i;%����ͼ����
                col=3;%����������
                row=16;%���������
            case 3
                symbol_constellation=-11+7i;%����ͼ����
                col=3;%����������
                row=12;%���������
            case 4
                symbol_constellation=-3-9i;%����ͼ����
                col=7;%����������
                row=4;%���������
            case 5
                symbol_constellation=-3-1i;%����ͼ����
                col=7;%����������
                row=8;%���������
            case 6
                symbol_constellation=-3+15i;%����ͼ����
                col=7;%����������
                row=16;%���������
            case 7
                symbol_constellation=-3+7i;%����ͼ����
                col=7;%����������
                row=12;%���������
            case 8
                symbol_constellation=13-9i;%����ͼ����
                col=15;%����������
                row=4;%���������
            case 9
                symbol_constellation=13-1i;%����ͼ����
                col=15;%����������
                row=8;%���������
            case 10
                symbol_constellation=13+15i;%����ͼ����
                col=15;%����������
                row=16;%���������
            case 11
                symbol_constellation=13+7i;%����ͼ����
                col=15;%����������
                row=12;%���������
            case 12
                symbol_constellation=5-9i;%����ͼ����
                col=11;%����������
                row=4;%���������
            case 13
                symbol_constellation=5-1i;%����ͼ����
                col=11;%����������
                row=8;%���������
            case 14
                symbol_constellation=5+15i;%����ͼ����
                col=11;%����������
                row=16;%���������
            case 15
                symbol_constellation=5+7i;%����ͼ����
                col=11;%����������
                row=12;%���������
        end
    case 8%A111
        switch temp
            case 0
                symbol_constellation=-15-13i;%����ͼ����
                col=1;%����������
                row=2;%���������
            case 1
                symbol_constellation=-15-5i;%����ͼ����
                col=1;%����������
                row=6;%���������
            case 2
                symbol_constellation=-15+11i;%����ͼ����
                col=1;%����������
                row=14;%���������
            case 3
                symbol_constellation=-15+3i;%����ͼ����
                col=1;%����������
                row=10;%���������
            case 4
                symbol_constellation=-7-13i;%����ͼ����
                col=5;%����������
                row=2;%���������
            case 5
                symbol_constellation=-7-5i;%����ͼ����
                col=5;%����������
                row=6;%���������
            case 6
                symbol_constellation=-7+11i;%����ͼ����
                col=5;%����������
                row=14;%���������
            case 7
                symbol_constellation=-7+3i;%����ͼ����
                col=5;%����������
                row=10;%���������
            case 8
                symbol_constellation=9-13i;%����ͼ����
                col=13;%����������
                row=2;%���������
            case 9
                symbol_constellation=9-5i;%����ͼ����
                col=13;%����������
                row=6;%���������
            case 10
                symbol_constellation=9+11i;%����ͼ����
                col=13;%����������
                row=14;%���������
            case 11
                symbol_constellation=9+3i;%����ͼ����
                col=13;%����������
                row=10;%���������
            case 12
                symbol_constellation=1-13i;%����ͼ����
                col=9;%����������
                row=2;%���������
            case 13
                symbol_constellation=1-5i;%����ͼ����
                col=9;%����������
                row=6;%���������
            case 14
                symbol_constellation=1+11i;%����ͼ����
                col=9;%����������
                row=14;%���������
            case 15
                symbol_constellation=1+3i;%����ͼ����
                col=9;%����������
                row=10;%���������
        end
    case 9%B000
        switch temp
            case 0
                symbol_constellation=-13-9i;%����ͼ����
                col=2;%����������
                row=4;%���������
            case 1
                symbol_constellation=-13-1i;%����ͼ����
                col=2;%����������
                row=8;%���������
            case 2
                symbol_constellation=-13+15i;%����ͼ����
                col=2;%����������
                row=16;%���������
            case 3
                symbol_constellation=-13+7i;%����ͼ����
                col=2;%����������
                row=12;%���������
            case 4
                symbol_constellation=-5-9i;%����ͼ����
                col=6;%����������
                row=4;%���������
            case 5
                symbol_constellation=-5-1i;%����ͼ����
                col=6;%����������
                row=8;%���������
            case 6
                symbol_constellation=-5+15i;%����ͼ����
                col=6;%����������
                row=16;%���������
            case 7
                symbol_constellation=-5+7i;%����ͼ����
                col=6;%����������
                row=12;%���������
            case 8
                symbol_constellation=11-9i;%����ͼ����
                col=14;%����������
                row=4;%���������
            case 9
                symbol_constellation=11-1i;%����ͼ����
                col=14;%����������
                row=8;%���������
            case 10
                symbol_constellation=11+15i;%����ͼ����
                col=14;%����������
                row=16;%���������
            case 11
                symbol_constellation=11+7i;%����ͼ����
                col=14;%����������
                row=12;%���������
            case 12
                symbol_constellation=3-9i;%����ͼ����
                col=10;%����������
                row=4;%���������
            case 13
                symbol_constellation=3-1i;%����ͼ����
                col=10;%����������
                row=8;%���������
            case 14
                symbol_constellation=3+15i;%����ͼ����
                col=10;%����������
                row=16;%���������
            case 15
                symbol_constellation=3+7i;%����ͼ����
                col=10;%����������
                row=12;%���������
        end
    case 10%B001
        switch temp
            case 0
                symbol_constellation=-9-13i;%����ͼ����
                col=4;%����������
                row=2;%���������
            case 1
                symbol_constellation=-9-5i;%����ͼ����
                col=4;%����������
                row=6;%���������
            case 2
                symbol_constellation=-9+11i;%����ͼ����
                col=4;%����������
                row=14;%���������
            case 3
                symbol_constellation=-9+3i;%����ͼ����
                col=4;%����������
                row=10;%���������
            case 4
                symbol_constellation=-1-13i;%����ͼ����
                col=8;%����������
                row=2;%���������
            case 5
                symbol_constellation=-1-5i;%����ͼ����
                col=8;%����������
                row=6;%���������
            case 6
                symbol_constellation=-1+11i;%����ͼ����
                col=8;%����������
                row=14;%���������
            case 7
                symbol_constellation=-1+3i;%����ͼ����
                col=8;%����������
                row=10;%���������
            case 8
                symbol_constellation=15-13i;%����ͼ����
                col=16;%����������
                row=2;%���������
            case 9
                symbol_constellation=15-5i;%����ͼ����
                col=16;%����������
                row=6;%���������
            case 10
                symbol_constellation=15+11i;%����ͼ����
                col=16;%����������
                row=14;%���������
            case 11
                symbol_constellation=15+3i;%����ͼ����
                col=16;%����������
                row=10;%���������
            case 12
                symbol_constellation=7-13i;%����ͼ����
                col=12;%����������
                row=2;%���������
            case 13
                symbol_constellation=7-5i;%����ͼ����
                col=12;%����������
                row=6;%���������
            case 14
                symbol_constellation=7+11i;%����ͼ����
                col=12;%����������
                row=14;%���������
            case 15
                symbol_constellation=7+3i;%����ͼ����
                col=12;%����������
                row=10;%���������
        end
    case 11%B010
        switch temp
            case 0
                symbol_constellation=-11-11i;%����ͼ����
                col=3;%����������
                row=3;%���������
            case 1
                symbol_constellation=-11-3i;%����ͼ����
                col=3;%����������
                row=7;%���������
            case 2
                symbol_constellation=-11+13i;%����ͼ����
                col=3;%����������
                row=15;%���������
            case 3
                symbol_constellation=-11+5i;%����ͼ����
                col=3;%����������
                row=11;%���������
            case 4
                symbol_constellation=-3-11i;%����ͼ����
                col=7;%����������
                row=3;%���������
            case 5
                symbol_constellation=-3-3i;%����ͼ����
                col=7;%����������
                row=7;%���������
            case 6
                symbol_constellation=-3+13i;%����ͼ����
                col=7;%����������
                row=15;%���������
            case 7
                symbol_constellation=-3+5i;%����ͼ����
                col=7;%����������
                row=11;%���������
            case 8
                symbol_constellation=13-11i;%����ͼ����
                col=15;%����������
                row=3;%���������
            case 9
                symbol_constellation=13-3i;%����ͼ����
                col=15;%����������
                row=7;%���������
            case 10
                symbol_constellation=13+13i;%����ͼ����
                col=15;%����������
                row=15;%���������
            case 11
                symbol_constellation=13+5i;%����ͼ����
                col=15;%����������
                row=11;%���������
            case 12
                symbol_constellation=5-11i;%����ͼ����
                col=11;%����������
                row=3;%���������
            case 13
                symbol_constellation=5-3i;%����ͼ����
                col=11;%����������
                row=7;%���������
            case 14
                symbol_constellation=5+13i;%����ͼ����
                col=11;%����������
                row=15;%���������
            case 15
                symbol_constellation=5+5i;%����ͼ����
                col=11;%����������
                row=11;%���������
        end
    case 12%B011
        switch temp
            case 0
                symbol_constellation=-15-15i;%����ͼ����
                col=1;%����������
                row=1;%���������
            case 1
                symbol_constellation=-15-7i;%����ͼ����
                col=1;%����������
                row=5;%���������
            case 2
                symbol_constellation=-15+9i;%����ͼ����
                col=1;%����������
                row=13;%���������
            case 3
                symbol_constellation=-15+1i;%����ͼ����
                col=1;%����������
                row=9;%���������
            case 4
                symbol_constellation=-7-15i;%����ͼ����
                col=5;%����������
                row=1;%���������
            case 5
                symbol_constellation=-7-7i;%����ͼ����
                col=5;%����������
                row=5;%���������
            case 6
                symbol_constellation=-7+9i;%����ͼ����
                col=5;%����������
                row=13;%���������
            case 7
                symbol_constellation=-7+1i;%����ͼ����
                col=5;%����������
                row=9;%���������
            case 8
                symbol_constellation=9-15i;%����ͼ����
                col=13;%����������
                row=1;%���������
            case 9
                symbol_constellation=9-7i;%����ͼ����
                col=13;%����������
                row=5;%���������
            case 10
                symbol_constellation=9+9i;%����ͼ����
                col=13;%����������
                row=13;%���������
            case 11
                symbol_constellation=9+1i;%����ͼ����
                col=13;%����������
                row=9;%���������
            case 12
                symbol_constellation=1-15i;%����ͼ����
                col=9;%����������
                row=1;%���������
            case 13
                symbol_constellation=1-7i;%����ͼ����
                col=9;%����������
                row=5;%���������
            case 14
                symbol_constellation=1+9i;%����ͼ����
                col=9;%����������
                row=13;%���������
            case 15
                symbol_constellation=1+1i;%����ͼ����
                col=9;%����������
                row=9;%���������
        end
    case 13%B100
        switch temp
            case 0
                symbol_constellation=-11-15i;%����ͼ����
                col=3;%����������
                row=1;%���������
            case 1
                symbol_constellation=-11-7i;%����ͼ����
                col=3;%����������
                row=5;%���������
            case 2
                symbol_constellation=-11+9i;%����ͼ����
                col=3;%����������
                row=13;%���������
            case 3
                symbol_constellation=-11+1i;%����ͼ����
                col=3;%����������
                row=9;%���������
            case 4
                symbol_constellation=-3-15i;%����ͼ����
                col=7;%����������
                row=1;%���������
            case 5
                symbol_constellation=-3-7i;%����ͼ����
                col=7;%����������
                row=5;%���������
            case 6
                symbol_constellation=-3+9i;%����ͼ����
                col=7;%����������
                row=13;%���������
            case 7
                symbol_constellation=-3+1i;%����ͼ����
                col=7;%����������
                row=9;%���������
            case 8
                symbol_constellation=13-15i;%����ͼ����
                col=15;%����������
                row=1;%���������
            case 9
                symbol_constellation=13-7i;%����ͼ����
                col=15;%����������
                row=5;%���������
            case 10
                symbol_constellation=13+9i;%����ͼ����
                col=15;%����������
                row=13;%���������
            case 11
                symbol_constellation=13+1i;%����ͼ����
                col=15;%����������
                row=9;%���������
            case 12
                symbol_constellation=5-15i;%����ͼ����
                col=11;%����������
                row=1;%���������
            case 13
                symbol_constellation=5-7i;%����ͼ����
                col=11;%����������
                row=5;%���������
            case 14
                symbol_constellation=5+9i;%����ͼ����
                col=11;%����������
                row=13;%���������
            case 15
                symbol_constellation=5+1i;%����ͼ����
                col=11;%����������
                row=9;%���������
        end
    case 14%B101
        switch temp
            case 0
                symbol_constellation=-15-11i;%����ͼ����
                col=1;%����������
                row=3;%���������
            case 1
                symbol_constellation=-15-3i;%����ͼ����
                col=1;%����������
                row=7;%���������
            case 2
                symbol_constellation=-15+13i;%����ͼ����
                col=1;%����������
                row=15;%���������
            case 3
                symbol_constellation=-15+5i;%����ͼ����
                col=1;%����������
                row=11;%���������
            case 4
                symbol_constellation=-7-11i;%����ͼ����
                col=5;%����������
                row=3;%���������
            case 5
                symbol_constellation=-7-3i;%����ͼ����
                col=5;%����������
                row=7;%���������
            case 6
                symbol_constellation=-7+13i;%����ͼ����
                col=5;%����������
                row=15;%���������
            case 7
                symbol_constellation=-7+5i;%����ͼ����
                col=5;%����������
                row=11;%���������
            case 8
                symbol_constellation=9-11i;%����ͼ����
                col=13;%����������
                row=3;%���������
            case 9
                symbol_constellation=9-3i;%����ͼ����
                col=13;%����������
                row=7;%���������
            case 10
                symbol_constellation=9+13i;%����ͼ����
                col=13;%����������
                row=15;%���������
            case 11
                symbol_constellation=9+5i;%����ͼ����
                col=13;%����������
                row=11;%���������
            case 12
                symbol_constellation=1-11i;%����ͼ����
                col=9;%����������
                row=3;%���������
            case 13
                symbol_constellation=1-3i;%����ͼ����
                col=9;%����������
                row=7;%���������
            case 14
                symbol_constellation=1+13i;%����ͼ����
                col=9;%����������
                row=15;%���������
            case 15
                symbol_constellation=1+5i;%����ͼ����
                col=9;%����������
                row=11;%���������
        end
    case 15%B110
        switch temp
            case 0
                symbol_constellation=-9-9i;%����ͼ����
                col=4;%����������
                row=4;%���������
            case 1
                symbol_constellation=-9-1i;%����ͼ����
                col=4;%����������
                row=8;%���������
            case 2
                symbol_constellation=-9+15i;%����ͼ����
                col=4;%����������
                row=16;%���������
            case 3
                symbol_constellation=-9+7i;%����ͼ����
                col=4;%����������
                row=12;%���������
            case 4
                symbol_constellation=-1-9i;%����ͼ����
                col=8;%����������
                row=4;%���������
            case 5
                symbol_constellation=-1-1i;%����ͼ����
                col=8;%����������
                row=8;%���������
            case 6
                symbol_constellation=-1+15i;%����ͼ����
                col=8;%����������
                row=16;%���������
            case 7
                symbol_constellation=-1+7i;%����ͼ����
                col=8;%����������
                row=12;%���������
            case 8
                symbol_constellation=15-9i;%����ͼ����
                col=16;%����������
                row=4;%���������
            case 9
                symbol_constellation=15-1i;%����ͼ����
                col=16;%����������
                row=8;%���������
            case 10
                symbol_constellation=15+15i;%����ͼ����
                col=16;%����������
                row=16;%���������
            case 11
                symbol_constellation=15+7i;%����ͼ����
                col=16;%����������
                row=12;%���������
            case 12
                symbol_constellation=7-9i;%����ͼ����
                col=8;%����������
                row=4;%���������
            case 13
                symbol_constellation=7-1i;%����ͼ����
                col=8;%����������
                row=8;%���������
            case 14
                symbol_constellation=7+15i;%����ͼ����
                col=8;%����������
                row=16;%���������
            case 15
                symbol_constellation=7+7i;%����ͼ����
                col=8;%����������
                row=12;%���������
        end
    case 16%B111
        switch temp
            case 0
                symbol_constellation=-13-13i;%����ͼ����
                col=2;%����������
                row=2;%���������
            case 1
                symbol_constellation=-13-5i;%����ͼ����
                col=2;%����������
                row=6;%���������
            case 2
                symbol_constellation=-13+11i;%����ͼ����
                col=2;%����������
                row=14;%���������
            case 3
                symbol_constellation=-13+3i;%����ͼ����
                col=2;%����������
                row=10;%���������
            case 4
                symbol_constellation=-5-13i;%����ͼ����
                col=6;%����������
                row=2;%���������
            case 5
                symbol_constellation=-5-5i;%����ͼ����
                col=6;%����������
                row=6;%���������
            case 6
                symbol_constellation=-5+11i;%����ͼ����
                col=6;%����������
                row=14;%���������
            case 7
                symbol_constellation=-5+3i;%����ͼ����
                col=6;%����������
                row=10;%���������
            case 8
                symbol_constellation=11-13i;%����ͼ����
                col=14;%����������
                row=2;%���������
            case 9
                symbol_constellation=11-5i;%����ͼ����
                col=14;%����������
                row=6;%���������
            case 10
                symbol_constellation=11+11i;%����ͼ����
                col=14;%����������
                row=14;%���������
            case 11
                symbol_constellation=11+3i;%����ͼ����
                col=14;%����������
                row=10;%���������
            case 12
                symbol_constellation=3-13i;%����ͼ����
                col=10;%����������
                row=2;%���������
            case 13
                symbol_constellation=3-5i;%����ͼ����
                col=10;%����������
                row=6;%���������
            case 14
                symbol_constellation=3+11i;%����ͼ����
                col=10;%����������
                row=14;%���������
            case 15
                symbol_constellation=3+3i;%����ͼ����
                col=10;%����������
                row=10;%���������
        end
end
end

