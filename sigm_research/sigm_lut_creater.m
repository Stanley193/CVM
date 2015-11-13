real_grid=(4096:1:32767)./4096;
%grid4=(4096:4:32767)./4096;

real_grid_c=[0,real_grid];
lut_grid2=real_grid_c(2:112:end);

sigm_r=sigm(real_grid);
sigm_4=sigm(lut_grid2);
sigm_lut=floor(sigm_4*32768);

lut_cmp= interp1(lut_grid2,sigm_lut,real_grid,'nearest');
plot(sigm_r);
hold on
plot(lut_cmp./32768,'r');
hold off
er=abs(sigm_r - lut_cmp./32768);
figure,plot(er,'g');