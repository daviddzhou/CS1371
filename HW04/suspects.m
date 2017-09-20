function [mistaken1, positions1] = suspects(initials, familiar)
%search for positions within familiar that the familiar is false
mistaken_position = find(~familiar); 
%use initial position to find space after and subtract 2
firstinit = initials(mistaken_position .* 3 - 2);
[~, sort_order]= sort(firstinit);
mistaken_position = mistaken_position(sort_order);

%this is the newly ordered outputs
firstinit = initials(mistaken_position .* 3 - 2);
secondinit = initials(mistaken_position .* 3 - 1);

%create empty vector
mistaken_vec = zeros(1, length(mistaken_position).*3);
%looking for 1,2,3 character spaces respectivley
mistaken_vec_1 = 1:3:length(mistaken_vec);
mistaken_vec_2 = 2:3:length(mistaken_vec);
mistaken_vec_3 = 3:3:length(mistaken_vec);
%input inside the empty vector all corresponding characters/spaces
mistaken_vec(mistaken_vec_1)= firstinit;
mistaken_vec(mistaken_vec_2) = secondinit;
mistaken_vec(mistaken_vec_3) = ' ';

%look for all the true positions and output answer
mistaken1 = char(mistaken_vec);
positions1 = find(familiar);

end
