clear
clc

[nums, txt, raw] = xlsread('gradeSheet.xlsx');
hw_cols = 2:5;
tst_cols = 6:8;
fin_cols = 9;
nums(isnan(nums)) = 0;
% extract hw averages
hw = nums(:, hw_cols);
hwavg = mean(hw,2);
tst_avg = mean(nums(:,tst_cols),2);
nums = [nums, hwavg, tst_avg, nums(:, fin_cols)];
% text heading
txt(2, 18:21) = {'HW_avg','Tst_avg', 'Final', 'Overall'};
% compute the overall scores
weights = [0.15
           0.45
           0.40];
nums(:, 19) = nums(:, 16:18) * weights;
[~, at] = max(nums(:,19));
name = txt{at+2,1};
ca = num2cell(nums);
txt(3:end,3:end) = ca;
xlswrite('output.xlsx', txt)