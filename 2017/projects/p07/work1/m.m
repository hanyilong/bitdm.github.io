if size(td)<1
    trainData = readFile('data/horse-colic.data')
    testData = readFile('data/horse-colic.test')
    td = [trainData;testData]
end

%����Ƶ��
scatterFldArr = scatterFld(td,7)
scatterFldFre = scatterFrequency(td,7,fldArr)
%����4�ֶ���ֵͳ��
numberFldArr = numberFldProcess(td,4)
%��ֱ��ͼ
hist(numberFldArr.orderArr,10)
%����ͼ
boxplot(numberFldArr.orderArr)
%��Q-Qͼ
qqplot(numberFldArr.orderArr)
%�޳�ȱʧȥֵ
removeLostData = removeLost(td)
%����������ȱʧֵ
fillWithMode = fillWithMode(td)
