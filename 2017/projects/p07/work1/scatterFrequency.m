function Z = scatterFrequency(data,idx,fldArr)
    e = zeros(size(fldArr))
    for  i=1:length(data)
        d0 = data(i,idx)
        if isnan(d0)
            continue
        end
        for k = 1:length(fldArr)
            if d0 == fldArr(k)
                e(k)=e(k)+1
            end
        end
        if i==200
            as =9
        end
    end
    Z = e
    
        