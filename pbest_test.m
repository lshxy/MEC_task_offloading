PKD=0:1:23;
ak_db=85;
amk_db=40;
PMC=power(10,ak_db/10).*power(10,PKD/10).*1e-3./power(10,rd0_db/10)./power(10,amk_db/10).*...
    (exp(-power(10,rd0_db/10).*power(10,N0_dbm/10).*1e-3./power(10,PKD/10).*1e-3./...
    power(10,ak_db/10))./(1-p0)-1);
PMC_dbm=10*log10(PMC*1e3)-PMC_max_dbm;
plot(PKD,PMC_dbm,'r');

