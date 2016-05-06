function sonsal=l(veri,olabilirlik,oran0,oran1,kriter)
carpim0 = oran0;
carpim1 = oran1;
for( i = 1 : kriter)
    if(veri(1,i) == 0)
        carpim0 = carpim0 * olabilirlik(1,i);
        carpim1 = carpim1 * olabilirlik(2,i);
    else
        carpim0 = carpim0 * olabilirlik(3,i);
        carpim1 = carpim1 * olabilirlik(4,i);
    end
end
if(carpim0 > carpim1)
    sonsal = 0;
elseif( carpim1 > carpim0)
    sonsal = 1;
else
    sonsal = -1;
end