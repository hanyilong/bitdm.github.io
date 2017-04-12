if size(td)<1
    trainData = readFile('data/horse-colic.data')
    testData = readFile('data/horse-colic.test')
    td = [trainData;testData]
end
scatterFldArr = scatterFld(td,7)
scatterFldFre = scatterFrequency(td,7,fldArr)
numberFldArr = numberFldProcess(td,4)
