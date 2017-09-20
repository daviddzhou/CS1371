function [ suspectNumber ] = criminalMinds(suspect1, suspect2, suspect3, suspect4)
%compare if there are any difference between suspect 1 and suspect 4
suspect_comp_1 = ~all(suspect1 == suspect2);
%compare if there are any difference between suspect 2 and suspect 4
suspect_comp_2 = ~all(suspect2 == suspect3);
%compare if there are any difference between suspect 3 and suspect 4
suspect_comp_3 = ~all(suspect3 == suspect4);
%compare if there are any differences between suspect 4 and 3
suspect_comp_4 = ~all(suspect4 == suspect1);

compare_1_2 = suspect_comp_1 && suspect_comp_2;
compare_2_3 = suspect_comp_2 && suspect_comp_3;
compare_3_4 = suspect_comp_3 && suspect_comp_4;
compare_4_1 = suspect_comp_4 && suspect_comp_1;


suspect_liar = find([compare_4_1, compare_1_2, compare_2_3, compare_3_4]);

suspectNumber = sprintf('Suspect #%d is lying.',suspect_liar);

end