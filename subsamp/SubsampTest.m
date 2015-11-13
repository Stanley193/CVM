sub=zeros(1,144);
for i=1:4:576;
    sub(((i-1)/4)+1)=order_store(i)+order_store(i+1)+order_store(i+2)+order_store(i+3);
end
submap=reshape(sub,12,12)';