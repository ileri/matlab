function oran=oranbul(veri,sonuc,oran0,oran1)
oran = [];
boyut = length(veri);
olumlu = 0;
% 0 ve 0 %
for(i = 1 : boyut)
    if(veri(i,1) == 0 && sonuc(i,1) == 0)
        olumlu = olumlu + 1;
    end
end
pay = olumlu/boyut;
payda = oran0;
oran(1,1) = pay/payda;
olumlu = 0;

% 0 ve 1 %
for(i = 1 : boyut)
    if(veri(i,1) == 0 && sonuc(i,1) == 1)
        olumlu = olumlu + 1;
    end
end
pay = olumlu/boyut;
payda = oran1;
oran(2,1) = pay/payda;
olumlu = 0;


% 1 ve 0 %
for(i = 1 : boyut)
    if(veri(i,1) == 1 && sonuc(i,1) == 0)
        olumlu = olumlu + 1;
    end
end
pay = olumlu/boyut;
payda = oran0;
oran(3,1) = pay/payda;
olumlu = 0;


% 1 ve 1 %
for(i = 1 : boyut)
    if(veri(i,1) == 1 && sonuc(i,1) == 1)
        olumlu = olumlu + 1;
    end
end
pay = olumlu/boyut;
payda = oran1;
oran(4,1) = pay/payda;
olumlu = 0;