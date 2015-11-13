omap=reshape(o,24,24)';
order_store=[];
for i=1:2:23
    for j=1:2:23
        order_store=[order_store,omap(i,j),omap(i,j+1),omap(i+1,j),omap(i+1,j+1)];
    end
end
