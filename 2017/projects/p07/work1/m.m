if size(td)<1
    trainData = readFile('data/horse-colic.data')
    testData = readFile('data/horse-colic.test')
    td = [trainData;testData]
end
fldArr = scatterFld(td,7)
fldFre = scatterFrequency(td,7,fldArr)
