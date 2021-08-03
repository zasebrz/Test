clear all;
clc ; 
close all; 
%*****************************变量定义与初值*******************************
%符号数目,QAM调制符号数是leech格的9倍，因为leech格一个符号是72bits，而256QAM是8bits
%这样就保证二者原始比特数相同，同时也保证了有足够多的leech格bit数目（108000）
leech_symbol_numbol=1500; %leech格符号数
qam_symbol_numbol1=leech_symbol_numbol*18; %16QAM符号数
qam_symbol_numbol2=leech_symbol_numbol*12; %64QAM符号数
qam_symbol_numbol3=leech_symbol_numbol*9; %256QAM符号数
leech_bit_send_1=zeros(leech_symbol_numbol,24); %Golay已编码比特矩阵
leech_bit_send_2=zeros(leech_symbol_numbol,12); %奇偶校验矩阵
leech_bit_send_3=zeros(leech_symbol_numbol,12); %重复码校验矩阵
coset=zeros(leech_symbol_numbol,12); %子集矩阵
leech_matrix_row=zeros(leech_symbol_numbol,12); %leech格发送符号横坐标矩阵
leech_matrix_col=zeros(leech_symbol_numbol,12); %leech格发送符号纵坐标矩阵
leech_symbol_send=zeros(leech_symbol_numbol,12); %leech发送符号星座图映射矩阵
leech_matrix_send=cell(leech_symbol_numbol,12);%leech格发送符号矩阵
qam_bit_error_ratio1=zeros(26,1); %16QAM调制误比特率
qam_number_of_error_bits1=zeros(26,1);%16QAM调制误比特个数
qam_bit_error_ratio2=zeros(26,1); %64QAM调制误比特率
qam_number_of_error_bits2=zeros(26,1);%64QAM调制误比特个数
qam_bit_error_ratio3=zeros(26,1); %256QAM调制误比特率
qam_number_of_error_bits3=zeros(26,1);%256QAM调制误比特个数
leech_bit_error_ratio=zeros(26,1);%Leech格误比特率
leech_number_of_error_bits=zeros(26,1);%Leech格误比特个数
SNR1=zeros(26,1);%Leech格误比特个数
SNR2=zeros(26,1);%Leech格误比特个数
SNR3=zeros(26,1);%Leech格误比特个数
SNR4=zeros(26,1);%Leech格误比特个数
% 调制方式-256QAM调制
M =16; 
%文件读取
m=16;
n=16;
leech_symbol=cell(m,n);%定义cell矩阵，存储文件内容
fid=fopen('symbol.txt','r');%以只读方式打开文件
for k=1:m
 for j=1:n
  leech_symbol{17-k,j}=fscanf(fid,'%s',[1,1]);%以字符方式读取每个值，遇空格完成每个值的读取
 end
end
fclose (fid);
%*****************************信息序列生成******************************* 
% 随机符号生成
symbol_init1= randi([0 M-1],qam_symbol_numbol1,1); 
%将每个符号从十进制转换成二进制，左边为最高位
symbol_init_bi=de2bi(symbol_init1,'left-msb');
%将每个符号的二进制序列串联起来，生成原始比特
bit_seq=reshape(symbol_init_bi',numel(symbol_init_bi),1);
bit_temp=reshape(bit_seq,6,qam_symbol_numbol2);
bit_temp1=reshape(bit_seq,8,qam_symbol_numbol3);
symbol_init2=bi2de(bit_temp','left-msb');
symbol_init3=bi2de(bit_temp1','left-msb');
%leech格的符号生成序列，每72位生成一个符号
leech_bit_temp=reshape(bit_seq,72,leech_symbol_numbol);
leech_bit_seq=leech_bit_temp';
%信噪比
%EbN0=(0:25);%比较三种QAM技术时用此信噪比
EbN0=(-20:5);%比较Leech格和QAM时用此信噪比
%*****************************符号映射******************************* 
%生成QAM调制符号，利用库函数qammod（功率归一化）
% qam_symbol_send1=qammod(symbol_init1,16,'UnitAveragePower', true); 
% qam_symbol_send2=qammod(symbol_init2,64,'UnitAveragePower', true); 
% qam_symbol_send3=qammod(symbol_init3,256,'UnitAveragePower', true); 
%生成QAM调制符号，利用库函数qammod
qam_symbol_send1=qammod(symbol_init1,M); 
qam_symbol_send2=qammod(symbol_init2,64); 
qam_symbol_send3=qammod(symbol_init3,256); 
%生成leech格符号
for j=1:leech_symbol_numbol
 %Golay编码
 leech_bit_send_1(j,:)=Golay_code(leech_bit_seq(j,1:12),1,1);
 %leech_bit_seq(24)表示奇偶校验位，1代表偶校验，0代表奇校验
 leech_bit_send_2(j,:)=Parity_Encoder(leech_bit_seq(j,13:23),leech_bit_seq(24));
 %1代表A集合，0代表B集合
 leech_bit_send_3(j,:)=Repetition_Encoder(leech_bit_seq(j,24));
 leech_bit_send=[leech_bit_send_1,leech_bit_send_2,leech_bit_send_3];
 for k=1:12
  %子集选择
  coset(j,k)=coset_selecter(leech_bit_send_1(j,2*k-1:2*k),leech_bit_send_2(j,k),leech_bit_send_3(j,k));
  %信号点选择（符号映射）
  [leech_symbol_send(j,k),leech_matrix_row(j,k),leech_matrix_col(j,k)]=symbol_selecter(leech_bit_seq(j,21+4*k:24+4*k),coset(j,k));
  leech_matrix_send(j,k)=leech_symbol(leech_matrix_row(j,k),leech_matrix_col(j,k));
 end
end
 %*****************************通过AWGN信道******************************* 
% 循环26次，每次的信噪比不同
for k=1:26
        % 通过AWGN信道，加噪，利用awgn函数
        SNR1(k)=EbN0(k)+10*log10(4);
        SNR2(k)=EbN0(k)+10*log10(6);
        SNR3(k)=EbN0(k)+10*log10(8);
        SNR4(k)=EbN0(k)+10*log10(6);
        qam_symbol_receive1=awgn(qam_symbol_send1,SNR1(k)); 
        qam_symbol_receive2=awgn(qam_symbol_send2,SNR2(k)); 
        qam_symbol_receive3=awgn(qam_symbol_send3,SNR3(k)); 
        leech_symbol_receive=awgn(leech_symbol_send,SNR4(k)); 
        % QAM解调，利用qamdemod库函数（功率归一化）
%         qam_demodulated_symbol1=qamdemod(qam_symbol_receive1,M,'UnitAveragePower', true); 
%         qam_demodulated_symbol2=qamdemod(qam_symbol_receive2,64,'UnitAveragePower', true);
%         qam_demodulated_symbol3=qamdemod(qam_symbol_receive3,256,'UnitAveragePower', true);
        % QAM解调，利用qamdemod库函数
        qam_demodulated_symbol1=qamdemod(qam_symbol_receive1,M); 
        qam_demodulated_symbol2=qamdemod(qam_symbol_receive2,64);
        qam_demodulated_symbol3=qamdemod(qam_symbol_receive3,256);
        %Leech解调,利用leechdemod函数
        [leech_demodulated_symbol,leech_demodulated_matrix,leech_demodulated_bit_seq]=leechdemod(leech_symbol_receive,leech_symbol_numbol); 
        %Leech解码
        [golay_decode_bit,golay_error_bit]=Golay_code(leech_demodulated_bit_seq(:,1:24),0,1);
        leech_decode_temp=[golay_decode_bit,leech_demodulated_bit_seq(:,25:35),leech_demodulated_bit_seq(:,37),leech_demodulated_bit_seq(:,49:end)];
        %Leech接收比特序列比较
        leech_decode_bit=reshape(leech_decode_temp',numel(leech_decode_temp),1);
        [leech_number_of_error_bits(k),leech_bit_error_ratio(k)]=biterr(bit_seq,leech_decode_bit);
        % 将QAM的每个符号从十进制转换成二进制，左边为最高位
        qam_demodulated_symbol_bi1=de2bi(qam_demodulated_symbol1,'left-msb'); 
        qam_demodulated_symbol_bi2=de2bi(qam_demodulated_symbol2,'left-msb');
        qam_demodulated_symbol_bi3=de2bi(qam_demodulated_symbol3,'left-msb');
        % 将QAM的每个符号的二进制序列串联起来，生成接收比特序列
        qam_demodulated_bit_seq1=reshape(qam_demodulated_symbol_bi1',numel(qam_demodulated_symbol_bi1),1);
        qam_demodulated_bit_seq2=reshape(qam_demodulated_symbol_bi2',numel(qam_demodulated_symbol_bi2),1);
        qam_demodulated_bit_seq3=reshape(qam_demodulated_symbol_bi3',numel(qam_demodulated_symbol_bi3),1);
        % QAM调制错误比特个数和比特错误率
        [qam_number_of_error_bits1(k),qam_bit_error_ratio1(k)]=biterr(bit_seq,qam_demodulated_bit_seq1);
        [qam_number_of_error_bits2(k),qam_bit_error_ratio2(k)]=biterr(bit_seq,qam_demodulated_bit_seq2);
        [qam_number_of_error_bits3(k),qam_bit_error_ratio3(k)]=biterr(bit_seq,qam_demodulated_bit_seq3);
end
%***************************** 绘制信噪比与误码率图像******************************* 
figure(1)
semilogy(EbN0,qam_bit_error_ratio1,'--*r')
hold on
semilogy(EbN0,qam_bit_error_ratio2,'--xk')
hold on
semilogy(EbN0,qam_bit_error_ratio3,'--og')
hold on
semilogy(EbN0,leech_bit_error_ratio,'--+b')
legend('16QAM调制','64QAM调制','256QAM调制','Leech格码调制');
grid on
xlabel('EbN0(dB)')
ylabel('误比特率BER')        