            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                                                %
            %       High- Level File I/O!!!! (excel files)   %
            %                                                %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
  
                        %% What is high level file i/o?
%high level deals with opening, analyzing, and manipulating excel files. 



                        %% NEW FUNCTIONS ALERT
%% [num,txt,raw] = xlsread(filename)
% reads in an excel file and produces 3 arrays: 
% num (double): smallest square/rectangle that encompasses all double values in
% excel sheet. Values that are not numbers are given the value NaN (not a
% number) which is also class double 

% txt (cell): smallest square/rectangle that encompasses all char values.
% Values that are not chars are made into empty strings '' (class char)

%raw (cell): entire excel sheet with each element in a cell



%example: 

[num,txt,raw] = xlsread('grades.xlsx');


%[num2,txt2,raw2] = xlsread('errorGrades.xlsx');



%% xlswrite
xlswrite(filename, array);


%%Examples!


%% Example 1
%Given an excel file with the columns 'Name','Test 1','Test 2','Test 3',
%create a new column with the header 'Test Averages' that is the average of
%each student. 
filename = 'grades.xlsx';
[num txt raw] = xlsread(filename);
avgRows = mean(num,2);
newCol = [{'Test Averages'};num2cell(avgRows)];
raw = [raw,newCol];
xlswrite('newGrades.xlsx',raw)

