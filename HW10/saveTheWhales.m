function [ data ] = saveTheWhales(info)

fields = fieldnames(info);
numVec = [];
wordVec = [];
for i = 1:(length(fields) - 1)
    diff = (fields{i + 1} - fields{i});
   if diff > 1
      numList =  linspace(info.(fields{i}), info.(fields{i + 1}), diff + 1);
      wordList = linspace(fields{i}, fields{i + 1}, diff + 1);
      for j = 2:(length(numList)) - 1
        num = numList(j);
        word = char(wordList(j));
        wordVec = [wordVec word];
        numVec = [numVec num];
      end
   end
end

for l = 1:length(numVec)
   info.(wordVec(l)) = numVec(l); 
end

data = info;
end