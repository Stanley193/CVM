lpu=1;
linear_grid=[0.0001:0.0001:lpu];
sigm_linear=sigm(linear_grid);
ds=[0.0001:0.0001:0.009];
dnum=size(ds);
er_min=100000;
for i = 1 : dnum(2);
    y_linear = (max(sigm_linear) - min(sigm_linear) + ds(i)) .* linear_grid + min(sigm_linear);
    er=(y_linear - sigm_linear) .^ 2;
    ers=sum(er);
    if(er_min>ers)
        er_min=ers;
        min_index=i;
    end
end
k_opt=max(sigm_linear) - min(sigm_linear) + ds(i);
display(er_min);
display(min_index);
display(k_opt);
