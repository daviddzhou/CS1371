function [ st, distance ] = zooBreak(st, animal)

places = {st(:).Place};
places = reshape(places, size(st));

zooMask = strcmp(places,'zoo');
[zooX, zooY] = find(zooMask);

inh = {st(:).Inhabitants};
inh = reshape(inh, size(st));
animalMask = strcmp(inh,animal);
[animX, animY] = find(animalMask);

st(animalMask).Inhabitants = [];
st(zooMask).Inhabitants = [st(zooMask).Inhabitants {animal}];

distance = sqrt((zooX-animX).^2 + (zooY - animY).^2);



end