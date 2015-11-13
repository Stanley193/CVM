function X = lut_sigm(P)
load('lut_data.mat');
Pabs=abs(P);
[~,n]=min(abs(lut_grid2-Pabs));
if(Pabs<1)
    Xi=0.24*Pabs+0.5;
else
    if(Pabs<8)
        Xi=sigm_4(n);
    else
        Xi=1;
    end
end
if(P<0)
    X=1-Xi;
else
    X=Xi;
end
