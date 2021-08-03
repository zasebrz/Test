function [symbol_constellation,row,col] = symbol_selecter(data,coset)
temp=bi2de(data,'left-msb');
switch coset
    case 1%A000
        switch temp
            case 0
                symbol_constellation=-15-9i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-15-1i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-15+15i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-15+7i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-7-9i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-7-1i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-7+15i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-7+7i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=9-9i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=9-1i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=9+15i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=9+7i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=1-9i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=1-1i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=1+15i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=1+7i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
        end
    case 2%A001
        switch temp
            case 0
                symbol_constellation=-11-13i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-11-5i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-11+11i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-11+3i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-3-13i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-3-5i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-3+11i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-3+3i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=13-13i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=13-5i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=13+11i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=13+3i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=5-13i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=5-5i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=5+11i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=5+3i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
        end
    case 3%A010
        switch temp
            case 0
                symbol_constellation=-13-11i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-13-3i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-13+13i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-13+5i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-5-11i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-5-3i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-5+13i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-5+5i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=11-11i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=11-3i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=11+13i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=11+5i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=3-11i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=3-3i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=3+13i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=3+5i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
        end
    case 4%A011
        switch temp
            case 0
                symbol_constellation=-9-15i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-9-7i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-9+9i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-9+1i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-1-15i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-1-7i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-1+9i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-1+1i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=15-15i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=15-7i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=15+9i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=15+1i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=7-15i;%аЧзљЭМзјБъ
                col=12;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=7-7i;%аЧзљЭМзјБъ
                col=12;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=7+9i;%аЧзљЭМзјБъ
                col=12;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=7+1i;%аЧзљЭМзјБъ
                col=12;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
        end
    case 5%A100
        switch temp
            case 0
                symbol_constellation=-13-15i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-13-7i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-13+9i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-13+1i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-5-15i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-5-7i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-5+9i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-5+1i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=11-15i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=11-7i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=11+9i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=11+1i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=3-15i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=3-7i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=3+9i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=3+1i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
        end
    case 6%A101
        switch temp
            case 0
                symbol_constellation=-9-11i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-9-3i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-9+13i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-9+5i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-1-11i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-1-3i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-1+13i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-1+5i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=15-11i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=15-3i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=15+13i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=15+5i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=7-11i;%аЧзљЭМзјБъ
                col=12;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=7-3i;%аЧзљЭМзјБъ
                col=12;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=7+13i;%аЧзљЭМзјБъ
                col=12;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=7+5i;%аЧзљЭМзјБъ
                col=12;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
        end
    case 7%A110
        switch temp
            case 0
                symbol_constellation=-11-9i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-11-1i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-11+15i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-11+7i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-3-9i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-3-1i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-3+15i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-3+7i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=13-9i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=13-1i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=13+15i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=13+7i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=5-9i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=5-1i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=5+15i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=5+7i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
        end
    case 8%A111
        switch temp
            case 0
                symbol_constellation=-15-13i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-15-5i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-15+11i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-15+3i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-7-13i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-7-5i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-7+11i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-7+3i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=9-13i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=9-5i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=9+11i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=9+3i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=1-13i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=1-5i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=1+11i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=1+3i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
        end
    case 9%B000
        switch temp
            case 0
                symbol_constellation=-13-9i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-13-1i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-13+15i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-13+7i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-5-9i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-5-1i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-5+15i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-5+7i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=11-9i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=11-1i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=11+15i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=11+7i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=3-9i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=3-1i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=3+15i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=3+7i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
        end
    case 10%B001
        switch temp
            case 0
                symbol_constellation=-9-13i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-9-5i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-9+11i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-9+3i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-1-13i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-1-5i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-1+11i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-1+3i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=15-13i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=15-5i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=15+11i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=15+3i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=7-13i;%аЧзљЭМзјБъ
                col=12;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=7-5i;%аЧзљЭМзјБъ
                col=12;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=7+11i;%аЧзљЭМзјБъ
                col=12;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=7+3i;%аЧзљЭМзјБъ
                col=12;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
        end
    case 11%B010
        switch temp
            case 0
                symbol_constellation=-11-11i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-11-3i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-11+13i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-11+5i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-3-11i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-3-3i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-3+13i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-3+5i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=13-11i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=13-3i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=13+13i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=13+5i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=5-11i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=5-3i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=5+13i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=5+5i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
        end
    case 12%B011
        switch temp
            case 0
                symbol_constellation=-15-15i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-15-7i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-15+9i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-15+1i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-7-15i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-7-7i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-7+9i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-7+1i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=9-15i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=9-7i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=9+9i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=9+1i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=1-15i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=1-7i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=1+9i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=1+1i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
        end
    case 13%B100
        switch temp
            case 0
                symbol_constellation=-11-15i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-11-7i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-11+9i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-11+1i;%аЧзљЭМзјБъ
                col=3;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-3-15i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-3-7i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-3+9i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-3+1i;%аЧзљЭМзјБъ
                col=7;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=13-15i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=13-7i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=13+9i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=13+1i;%аЧзљЭМзјБъ
                col=15;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=5-15i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=1;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=5-7i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=5;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=5+9i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=13;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=5+1i;%аЧзљЭМзјБъ
                col=11;%ОиеѓзнзјБъ
                row=9;%ОиеѓКсзјБъ
        end
    case 14%B101
        switch temp
            case 0
                symbol_constellation=-15-11i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-15-3i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-15+13i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-15+5i;%аЧзљЭМзјБъ
                col=1;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-7-11i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-7-3i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-7+13i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-7+5i;%аЧзљЭМзјБъ
                col=5;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=9-11i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=9-3i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=9+13i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=9+5i;%аЧзљЭМзјБъ
                col=13;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=1-11i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=3;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=1-3i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=7;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=1+13i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=15;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=1+5i;%аЧзљЭМзјБъ
                col=9;%ОиеѓзнзјБъ
                row=11;%ОиеѓКсзјБъ
        end
    case 15%B110
        switch temp
            case 0
                symbol_constellation=-9-9i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-9-1i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-9+15i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-9+7i;%аЧзљЭМзјБъ
                col=4;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-1-9i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-1-1i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-1+15i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-1+7i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=15-9i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=15-1i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=15+15i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=15+7i;%аЧзљЭМзјБъ
                col=16;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=7-9i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=4;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=7-1i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=8;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=7+15i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=16;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=7+7i;%аЧзљЭМзјБъ
                col=8;%ОиеѓзнзјБъ
                row=12;%ОиеѓКсзјБъ
        end
    case 16%B111
        switch temp
            case 0
                symbol_constellation=-13-13i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 1
                symbol_constellation=-13-5i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 2
                symbol_constellation=-13+11i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 3
                symbol_constellation=-13+3i;%аЧзљЭМзјБъ
                col=2;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
            case 4
                symbol_constellation=-5-13i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 5
                symbol_constellation=-5-5i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 6
                symbol_constellation=-5+11i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 7
                symbol_constellation=-5+3i;%аЧзљЭМзјБъ
                col=6;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
            case 8
                symbol_constellation=11-13i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 9
                symbol_constellation=11-5i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 10
                symbol_constellation=11+11i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 11
                symbol_constellation=11+3i;%аЧзљЭМзјБъ
                col=14;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
            case 12
                symbol_constellation=3-13i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=2;%ОиеѓКсзјБъ
            case 13
                symbol_constellation=3-5i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=6;%ОиеѓКсзјБъ
            case 14
                symbol_constellation=3+11i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=14;%ОиеѓКсзјБъ
            case 15
                symbol_constellation=3+3i;%аЧзљЭМзјБъ
                col=10;%ОиеѓзнзјБъ
                row=10;%ОиеѓКсзјБъ
        end
end
end

