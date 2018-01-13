function [artist] = findMyJam(potential, friends, topArtist, topArtistStats)
%separate the two potential artists
[artistOp1, rest] = strtok(potential, ',');
artistOp2 = rest(2:end);
%top Artists
[spotifyArtist1, rest] = strtok(topArtist,',');
[spotifyArtist2, rest] = strtok(rest,',');
[spotifyArtist3, rest] = strtok(rest,',');
[spotifyArtist4, rest] = strtok(rest,',');
spotifyArtist5 = rest(2:end);

%time to start finding out the different conditions
if (contains(friends, artistOp1)) &(contains(topArtist, artistOp1))
    artist = sprintf('%s will ignite the party!', artistOp1);
elseif (contains(topArtist, artistOp1)) & ~(contains(friends, artistOp1))
    if contains(topArtist, artistOp1)
        position = strfind(topArtist(:,2), artistOp1)
        if topArtistStats(position, 2) > mean(topArtistStats(:,2))
            artist = sprintf('%s will ignite the party!', artistOp1);
        else
            artist = sprintf('%s will ignite the party!', spotifyArtist1);
        end
    end
elseif ~(contains(topArtist, artistOp1)) & (contains(friends, artistOp1)) 
    if (contains(friends, artistOp2)) & (contains(topArtist, artistOp2))
        artist = sprintf('%s will ignite the party!', artistOp2);
    else
        artist = sprintf('%s will ignite the party!', artistOp1);
    end
else 
    if (contains(friends, artistOp2)) | (contains(topArtist, artistOp2))
        artist = sprintf('%s will ignite the party!', artistOp2);
    else
        artist = sprintf('%s will ignite the party!', spotifyArtist1);
    end    

end
end