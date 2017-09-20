function [ out1 ] = goLong(array)

xdiff = array(1) - array(3);
ydiff = array(2) - array(4);

distance = sqrt(xdiff^2 + ydiff^2);

out1 = sprintf('(%.2f, %.2f) is %.2f units from (%.2f , %.2f)',array(1),array(2),distance,array(3),array(4));

end