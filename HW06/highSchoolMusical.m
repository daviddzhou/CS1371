function [result] = highSchoolMusical(university, score, song, selfie)
%replace the scores with what you have by the adjusted scores
singing = score(1) * 1.5;
dancing = score(2) * 1.25;
acting = score(3) * 1;
totalscore = singing + dancing + acting;
%make variables with the phrases to make life a little easier
yesstr = 'Welcome to High School Musical!';
nostr = 'We regret to inform you that you did not make the musical.';
%create a variable that sees if the song has nickelback inside it
hasNickel = strfind(lower(song), 'nickelback');
if hasNickel > 1
    result = nostr;
elseif strcmpi(university,'u(sic)ga')
    result = nostr;
elseif strcmpi(song,'Start Of Something New')
    result = yesstr;
elseif (strcmpi(university, 'Georgia Tech') == 1 | strcmpi(university, 'GT') == 1 | strcmpi(university, 'Georgia Insitute of Technology' == 1))
    result = yesstr;
elseif (selfie == 1)
    result = nostr;
else(totalscore >= 26);
    result = yesstr;
end
end

