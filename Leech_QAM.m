clear all;
clc ; 
close all; 
%*****************************�����������ֵ*******************************
%������Ŀ,QAM���Ʒ�������leech���9������Ϊleech��һ��������72bits����256QAM��8bits
%�����ͱ�֤����ԭʼ��������ͬ��ͬʱҲ��֤�����㹻���leech��bit��Ŀ��108000��
leech_symbol_numbol=1500; %leech�������
qam_symbol_numbol1=leech_symbol_numbol*18; %16QAM������
qam_symbol_numbol2=leech_symbol_numbol*12; %64QAM������
qam_symbol_numbol3=leech_symbol_numbol*9; %256QAM������
leech_bit_send_1=zeros(leech_symbol_numbol,24); %Golay�ѱ�����ؾ���
leech_bit_send_2=zeros(leech_symbol_numbol,12); %��żУ�����
leech_bit_send_3=zeros(leech_symbol_numbol,12); %�ظ���У�����
coset=zeros(leech_symbol_numbol,12); %�Ӽ�����
leech_matrix_row=zeros(leech_symbol_numbol,12); %leech���ͷ��ź��������
leech_matrix_col=zeros(leech_symbol_numbol,12); %leech���ͷ������������
leech_symbol_send=zeros(leech_symbol_numbol,12); %leech���ͷ�������ͼӳ�����
leech_matrix_send=cell(leech_symbol_numbol,12);%leech���ͷ��ž���
qam_bit_error_ratio1=zeros(26,1); %16QAM�����������
qam_number_of_error_bits1=zeros(26,1);%16QAM��������ظ���
qam_bit_error_ratio2=zeros(26,1); %64QAM�����������
qam_number_of_error_bits2=zeros(26,1);%64QAM��������ظ���
qam_bit_error_ratio3=zeros(26,1); %256QAM�����������
qam_number_of_error_bits3=zeros(26,1);%256QAM��������ظ���
leech_bit_error_ratio=zeros(26,1);%Leech���������
leech_number_of_error_bits=zeros(26,1);%Leech������ظ���
SNR1=zeros(26,1);%Leech������ظ���
SNR2=zeros(26,1);%Leech������ظ���
SNR3=zeros(26,1);%Leech������ظ���
SNR4=zeros(26,1);%Leech������ظ���
% ���Ʒ�ʽ-256QAM����
M =16; 
%�ļ���ȡ
m=16;
n=16;
leech_symbol=cell(m,n);%����cell���󣬴洢�ļ�����
fid=fopen('symbol.txt','r');%��ֻ����ʽ���ļ�
for k=1:m
 for j=1:n
  leech_symbol{17-k,j}=fscanf(fid,'%s',[1,1]);%���ַ���ʽ��ȡÿ��ֵ�����ո����ÿ��ֵ�Ķ�ȡ
 end
end
fclose (fid);
%*****************************��Ϣ��������******************************* 
% �����������
symbol_init1= randi([0 M-1],qam_symbol_numbol1,1); 
%��ÿ�����Ŵ�ʮ����ת���ɶ����ƣ����Ϊ���λ
symbol_init_bi=de2bi(symbol_init1,'left-msb');
%��ÿ�����ŵĶ��������д�������������ԭʼ����
bit_seq=reshape(symbol_init_bi',numel(symbol_init_bi),1);
bit_temp=reshape(bit_seq,6,qam_symbol_numbol2);
bit_temp1=reshape(bit_seq,8,qam_symbol_numbol3);
symbol_init2=bi2de(bit_temp','left-msb');
symbol_init3=bi2de(bit_temp1','left-msb');
%leech��ķ����������У�ÿ72λ����һ������
leech_bit_temp=reshape(bit_seq,72,leech_symbol_numbol);
leech_bit_seq=leech_bit_temp';
%�����
%EbN0=(0:25);%�Ƚ�����QAM����ʱ�ô������
EbN0=(-20:5);%�Ƚ�Leech���QAMʱ�ô������
%*****************************����ӳ��******************************* 
%����QAM���Ʒ��ţ����ÿ⺯��qammod�����ʹ�һ����
% qam_symbol_send1=qammod(symbol_init1,16,'UnitAveragePower', true); 
% qam_symbol_send2=qammod(symbol_init2,64,'UnitAveragePower', true); 
% qam_symbol_send3=qammod(symbol_init3,256,'UnitAveragePower', true); 
%����QAM���Ʒ��ţ����ÿ⺯��qammod
qam_symbol_send1=qammod(symbol_init1,M); 
qam_symbol_send2=qammod(symbol_init2,64); 
qam_symbol_send3=qammod(symbol_init3,256); 
%����leech�����
for j=1:leech_symbol_numbol
 %Golay����
 leech_bit_send_1(j,:)=Golay_code(leech_bit_seq(j,1:12),1,1);
 %leech_bit_seq(24)��ʾ��żУ��λ��1����żУ�飬0������У��
 leech_bit_send_2(j,:)=Parity_Encoder(leech_bit_seq(j,13:23),leech_bit_seq(24));
 %1����A���ϣ�0����B����
 leech_bit_send_3(j,:)=Repetition_Encoder(leech_bit_seq(j,24));
 leech_bit_send=[leech_bit_send_1,leech_bit_send_2,leech_bit_send_3];
 for k=1:12
  %�Ӽ�ѡ��
  coset(j,k)=coset_selecter(leech_bit_send_1(j,2*k-1:2*k),leech_bit_send_2(j,k),leech_bit_send_3(j,k));
  %�źŵ�ѡ�񣨷���ӳ�䣩
  [leech_symbol_send(j,k),leech_matrix_row(j,k),leech_matrix_col(j,k)]=symbol_selecter(leech_bit_seq(j,21+4*k:24+4*k),coset(j,k));
  leech_matrix_send(j,k)=leech_symbol(leech_matrix_row(j,k),leech_matrix_col(j,k));
 end
end
 %*****************************ͨ��AWGN�ŵ�******************************* 
% ѭ��26�Σ�ÿ�ε�����Ȳ�ͬ
for k=1:26
        % ͨ��AWGN�ŵ������룬����awgn����
        SNR1(k)=EbN0(k)+10*log10(4);
        SNR2(k)=EbN0(k)+10*log10(6);
        SNR3(k)=EbN0(k)+10*log10(8);
        SNR4(k)=EbN0(k)+10*log10(6);
        qam_symbol_receive1=awgn(qam_symbol_send1,SNR1(k)); 
        qam_symbol_receive2=awgn(qam_symbol_send2,SNR2(k)); 
        qam_symbol_receive3=awgn(qam_symbol_send3,SNR3(k)); 
        leech_symbol_receive=awgn(leech_symbol_send,SNR4(k)); 
        % QAM���������qamdemod�⺯�������ʹ�һ����
%         qam_demodulated_symbol1=qamdemod(qam_symbol_receive1,M,'UnitAveragePower', true); 
%         qam_demodulated_symbol2=qamdemod(qam_symbol_receive2,64,'UnitAveragePower', true);
%         qam_demodulated_symbol3=qamdemod(qam_symbol_receive3,256,'UnitAveragePower', true);
        % QAM���������qamdemod�⺯��
        qam_demodulated_symbol1=qamdemod(qam_symbol_receive1,M); 
        qam_demodulated_symbol2=qamdemod(qam_symbol_receive2,64);
        qam_demodulated_symbol3=qamdemod(qam_symbol_receive3,256);
        %Leech���,����leechdemod����
        [leech_demodulated_symbol,leech_demodulated_matrix,leech_demodulated_bit_seq]=leechdemod(leech_symbol_receive,leech_symbol_numbol); 
        %Leech����
        [golay_decode_bit,golay_error_bit]=Golay_code(leech_demodulated_bit_seq(:,1:24),0,1);
        leech_decode_temp=[golay_decode_bit,leech_demodulated_bit_seq(:,25:35),leech_demodulated_bit_seq(:,37),leech_demodulated_bit_seq(:,49:end)];
        %Leech���ձ������бȽ�
        leech_decode_bit=reshape(leech_decode_temp',numel(leech_decode_temp),1);
        [leech_number_of_error_bits(k),leech_bit_error_ratio(k)]=biterr(bit_seq,leech_decode_bit);
        % ��QAM��ÿ�����Ŵ�ʮ����ת���ɶ����ƣ����Ϊ���λ
        qam_demodulated_symbol_bi1=de2bi(qam_demodulated_symbol1,'left-msb'); 
        qam_demodulated_symbol_bi2=de2bi(qam_demodulated_symbol2,'left-msb');
        qam_demodulated_symbol_bi3=de2bi(qam_demodulated_symbol3,'left-msb');
        % ��QAM��ÿ�����ŵĶ��������д������������ɽ��ձ�������
        qam_demodulated_bit_seq1=reshape(qam_demodulated_symbol_bi1',numel(qam_demodulated_symbol_bi1),1);
        qam_demodulated_bit_seq2=reshape(qam_demodulated_symbol_bi2',numel(qam_demodulated_symbol_bi2),1);
        qam_demodulated_bit_seq3=reshape(qam_demodulated_symbol_bi3',numel(qam_demodulated_symbol_bi3),1);
        % QAM���ƴ�����ظ����ͱ��ش�����
        [qam_number_of_error_bits1(k),qam_bit_error_ratio1(k)]=biterr(bit_seq,qam_demodulated_bit_seq1);
        [qam_number_of_error_bits2(k),qam_bit_error_ratio2(k)]=biterr(bit_seq,qam_demodulated_bit_seq2);
        [qam_number_of_error_bits3(k),qam_bit_error_ratio3(k)]=biterr(bit_seq,qam_demodulated_bit_seq3);
end
%***************************** �����������������ͼ��******************************* 
figure(1)
semilogy(EbN0,qam_bit_error_ratio1,'--*r')
hold on
semilogy(EbN0,qam_bit_error_ratio2,'--xk')
hold on
semilogy(EbN0,qam_bit_error_ratio3,'--og')
hold on
semilogy(EbN0,leech_bit_error_ratio,'--+b')
legend('16QAM����','64QAM����','256QAM����','Leech�������');
grid on
xlabel('EbN0(dB)')
ylabel('�������BER')        