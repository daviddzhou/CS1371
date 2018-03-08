function sorted = slowSort(unsorted)
% Start with an empty vector.
sorted= [];
for num = unsorted
    before=sorted(sorted <= num)
    after=sorted(sorted>num)
    sorted = [before num after]
end
end
