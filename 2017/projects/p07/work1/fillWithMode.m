function Z = fillWithMod(data)
    e=zeros(0)   
    for  i=1:28
        d0 = data(:,i)
        e(i)=mode(d0);
    end

    for  i=1:length(data)
        for k=1:28
          d0 = data(i,k)  
          if isnan(d0)
              data(i,k) = e(k)
          end
        end
    end
    Z = data
    
        