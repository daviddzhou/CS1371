function pokemonSNAP( pokemonFile, land, struct )
%read in the file name so you can use it in output
[locName,fileType] = strtok(land, '.');
%read in the pokemon image
pokemon = imread(pokemonFile);
%then plug it into the pokedex function
result = pokedex(pokemon, struct);
[name,rest] = strtok(result,',');
pokemonName = [{struct.pokemon}];
inds = find(strcmp(pokemonName,name));
type = struct(inds).rarity;
switch type
    case 'common'
        ballName = 'pokeball.png';
    case 'uncommon'
        ballName = 'greatball.png';
    case 'rare'
        ballName = 'ultraball.png';
    case 'legendary'
        ballName = 'masterball.png';
end
%read in the file of the pokeball you are using
pokeball = imread(ballName);
%resize it because it will be too big/small
location = imread(land);
[r,c,~] = size(location);
pokeball = imresize(pokeball, [r,c],'nearest');
%now that you have the resized location image you need to put the pic in
%the center
%separate the layers of color
red = pokeball(:,:,1); 
green = pokeball(:,:,2);
blue = pokeball(:,:,3);
%now create the mask for that color so you can mask onto location image
mask = (red==0) & (green == 255) & (blue == 0);
smask = cat(3,mask,mask,mask);
%now to mask and find the new image
pokeball(smask) = location(smask);
%now you need to write the new picture
finalName = [locName '_captured' fileType];
imwrite(pokeball, finalName)
end

