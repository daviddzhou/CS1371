function [ out1 ] = compAIRContour(apPractice, apStadium)

vecPractice = diff(apPractice);
vecStadium = diff(apStadium);

signPractice = sign(vecPractice);
signStadium = sign(vecStadium);

out1 = isequaln(signPractice, signStadium)

end