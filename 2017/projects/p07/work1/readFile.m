function Z = readFile(fileName)
    fp_data = fopen(fileName,'r','n','utf-8')
    tline = strtrim(fgets(fp_data));
    X = zeros(0,28)
    idx = 1
    while ischar(tline)
        a = split(tline,' ')'
        if size(a) < 28
            break
        end
        X(idx,:)= a
        idx = idx + 1
        
        s1 = fgetl(fp_data);
        if s1==-1
            break;
        end
        tline = strtrim(s1);
    end
    fclose(fp_data)
    Z = X



