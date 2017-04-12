function Z = removeLost(data)
    e=zeros(0)   
    m = 1
    for  i=1:length(data)
        hasLostVal = 0
        for k=1:28
          d0 = data(i,k)  
          if isnan(d0)
              hasLostVal = 1
              break
          end
        end
        if hasLostVal == 0
            e(m,:)=data(i,:)
            m = m+1
        end
    end
    Z = e
    
        