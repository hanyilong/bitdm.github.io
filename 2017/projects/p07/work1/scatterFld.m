function Z = scatterFld(data,idx)
    e = zeros(0)
    for  i=1:length(data)
        d0 = data(i,idx)
        if ismember(d0,e)
            continue
        end
        if isnan(d0)
            continue
        end
        e(length(e)+1)=d0
    end
    Z = e
    
        