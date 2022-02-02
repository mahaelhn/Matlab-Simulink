clear; clf;
M=2;
esnos=20:40;
err_vec=zeros(50,1);

for i=1:length(esnos)
    ESNO=esnos(i);
    sim('Mpsk_bb');
    err_vec(i,:)=err_rate;
end;
semilogy(esnos,err_vec(:,1),'b-*');





M=4;
esnos=20:40;
err_vec1=[];

for i=1:length(esnos)
    ESNO=esnos(i);
    sim('Mpsk_bb');
    err_vec1(i,:)=err_rate
end;
semilogy(esnos,err_vec1(:,1),'r-*');
