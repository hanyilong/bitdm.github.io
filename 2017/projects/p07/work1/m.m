if size(td)<1
    trainData = readFile('data/horse-colic.data')
    testData = readFile('data/horse-colic.test')
    td = [trainData;testData]
end

%计算频数
scatterFldArr = scatterFld(td,7)
scatterFldFre = scatterFrequency(td,7,fldArr)
%计算4字段数值统计
numberFldArr = numberFldProcess(td,4)
%画直方图
hist(numberFldArr.orderArr,10)
%画盒图
boxplot(numberFldArr.orderArr)
%画Q-Q图
qqplot(numberFldArr.orderArr)
%剔除缺失去值
removeLostData = removeLost(td)
%用众数代替缺失值
fillWithMode = fillWithMode(td)
