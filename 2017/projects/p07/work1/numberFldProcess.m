function Z = numberFldProcess(data,idx)
    arr=zeros(0)
    orderArr=zeros(0)
    lost = 0
    middle = 0
    for  i=1:length(data)
        d0 = data(i,idx)
        if isnan(d0)
            continue
        end
        arr(length(arr)+1) = d0
    end
    orderArr = sort(arr)
    Z.arr = arr
    Z.orderArr = orderArr
    Z.max = orderArr(length(orderArr))
    Z.min = orderArr(1)
    Z.lost = length(data) - length(orderArr)
    Z.middle = orderArr(round(length(orderArr)/2))
    Z.q1 = orderArr(round((length(orderArr)+1)/4))
    Z.q2 = orderArr(round(2*(length(orderArr)+1)/4))
    Z.q3 = orderArr(round(3*(length(orderArr)+1)/4))
    
        