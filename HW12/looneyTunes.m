function looneyTunes( song,pages, parts )
first = imread([song '_page1.png']);
[row,~,~] = size(first);
for i = 1:pages
    pageName = [song sprintf('_page%d.png',i)];
end
rowScale = [0];
for j = 1:parts
    rowScale = [rowScale round((j/parts)*row)];
end

for i = 1:parts
    finalPart = [];
    partName = [song sprintf('_part%d.png',i)];
    for j = 1:pages
        page = imread([song '_page' num2str(j) '.png']);
        part = page(rowScale(i)+1:rowScale(i+1),:,:);
        finalPart = [finalPart;part];
    end
    imwrite(finalPart, partName)
end
end


