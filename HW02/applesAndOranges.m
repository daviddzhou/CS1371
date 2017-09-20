function [ out1 , out2 ] = applesAndOranges ( a , o , ga, go )
%total number of fruits
total = a + o;
%probability of getting a bad apple
out1 = ((a-ga)/total)*100;
out1 = (floor(out1 *100))/100
%probability of getting a bad orange
out2 = ((o-go)/total)*100;
out2 = (floor(out2 *100))/100

end