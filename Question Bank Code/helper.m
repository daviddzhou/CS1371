function output = helper(value, arr)
arr = arr(:);
newArr = arr(arr>=value);
newArr = [newArr newArr];
output = newArr
end