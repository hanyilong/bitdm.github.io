function Z = fillLost(data,strategy)
    e=zeros(0)   
    for  i=1:length(data)
        d0 = data(i,idx)
        if ismember(d0,e)
            continue
        end
        if isnan(d0)
            continue
        end

    end
    Z = e
    
        