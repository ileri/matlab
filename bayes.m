veriler = [
    [0,0,0,0];
    [0,1,1,1];
    [1,1,0,0];
    [1,0,0,1];
    [1,1,1,1]
    ];
bilinmeyenler = [
    [0,0,1];
    [0,1,0];
    [1,0,1]
];
% Gerekli Sabitlerin Hesabý %
boyut = size(veriler);
satirsay = boyut(1);
sutunsay = boyut(2);
kriter = sutunsay-1;
olabilirlik = [];
satirsay_u = size(bilinmeyenler);
sutunsay_u = satirsay_u(2);
kestirilen = [];
% Öncel Hesabý Baþlangýç %
olumlu = 0;
for( i = 1 : satirsay)
    if(veriler(i,sutunsay) == 1)
        olumlu = olumlu + 1;
    end
end
oncel1 = olumlu/i;
oncel0 = 1-oncel1;
% Öncel Hesabý Sonu %


for( j = 1 : kriter)
    olabilirlik(:,j) = oranbul(veriler(:,j),(veriler(:,sutunsay)),oncel0,oncel1)
end

for( k = 1 : sutunsay_u)
    kestirilen(k,1) = sonsal(bilinmeyenler(k,:),olabilirlik,oncel0,oncel1,kriter);
end
