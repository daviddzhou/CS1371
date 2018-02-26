            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                                                %
            %                  Structures                    %
            %                                                %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
  
                        %% What is a structure?
%New type of data structure that can hold heterogenous data types.
%struct is a new class


                        %% Creating structures 
                        
% struct function
% st = struct(fieldname,value,fieldname2,value2,...)

st = struct('name','Kantwon','age',24);


%dot operator 
%nameOfStructure.nameFieldName = value
st2.name = 'Kantwon';
st2.age = 24;

%using a variable that contains fieldname
var = 'age';
st2.var = 18; %creates a new fieldname called var and places in 18 as value
st2.(var) = 18;



%setfield function 
A = setfield(st2,'hairColor','white'); %does nothing to st2
st2 = setfield(st2,'hairColor','white'); %creates new fieldname hairColor with value white




                        %% indexing structures
                        
 %Syntax for indexing
%var = nameOfStructure.fieldName                       
% using fieldname 
myAge = st2.age;
myName = st2.name;



%using variable of a field name
st = struct('name','Noah','age',18,'test grades',[35 35 36]);
var = 'name' ;
noahName = st.var; %error because fieldname var doesnt exist
noahName = st.(var);



%getfield function 
myAgeAgain = getfield(st,'name');



                        %% functions 

%rmfield
JennySt = struct('name','Jenny','age',18,'sleep',true,'worstStudent','VERY TRUE');


%trying to delete without using rmfield
JennySt.worstStudent = [];

%incorrect usage
rmfield(JennySt,'worstStudent'); %DOES NOTHING
A = JennySt.worstStudent; %will be whatever the value was in worstStudent


%correct usage
JennySt = rmfield(JennySt,'worstStudent');
B = JennySt.worstStudent;


                        
%fieldnames 
fns = fieldnames(JennySt); %Nx1 cell array with all of your fieldnames


%produce back the value at the second fieldname
fns = fieldnames(JennySt);
secondFn = fns{2};
secondVal = JennySt.(secondFn);
%OR
secondVal = JennySt.(fns{2});



%isstruct 
log = isstruct('a') %log would be false because 'a' is not class struct


%% size of structure 
%FIELD NAMES HAVE NOTHING TO DO WITH THE SIZE OR DIMENSIONS OF A STRUCTURE




                        %% structure arrays 


%creating structure arrays 

%struct function 
creeper = struct('name',{'Omari','Umair';'Courtney','Cat'},'age',{18,18;21,18});
%creeper = struct('name',{'Omari','Umair','Courtney'},'age',{18,21}); %Errors


%dot operator 
%nameOfStruct(index).fieldName = value
creeper(1).name = 'Omari';
creeper(1).age = 18;
creeper(2).age = 18; %at this point in time creeper(2).name is []




%indexing structure arrays 

    %single value 
    
    
    
    %multiple values
    
    


%deleting in structure arrays 



            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                    EXAMPLES                      %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
%% Example 1
% given a structure array (st), sort the structure based on the shortest field
% name. All of the values at a certain field will be the same class (either
% char or double) 


%figure out the shortest fieldname
fn = fieldnames(st); %cell array of field names
shortest = 1;
for x = 1:length(fn)
    if length(fn{x}) < length(fn{shortest})
        shortest = x; %found something shorter, need to update
    end 
end
shortestFn = fn{shortest};


%determine if all chars or doubles and place in appropriate cell or vector
firstValueAtShortestFn = st(1).(shortestFn);
if ischar(firstValueAtShortestFn)
    allValues = {st(:).(shortestFn)};
else
    allValues = [st(:).(shortestFn)];
end


%sort structure based off shortest field
[sorted,ind] = sort(allValues);
sortedSt = st(ind); %sorting structure based on how I sorted values







%% Example 2
% The structure "company" has the fieldnames "name" and "boss" and
% represents the hierarchy of a company where the boss field contains the
% name of a person's boss. 
% Ex: Kantwon (boss) --> Alex --> Sarah --> John --> Chris
% company = struct('name',{'Kantwon','John','Sarah','Alex','Chris'}, ...
%                  'boss' ,{[],'Sarah','Alex','Kantwon','John'});
% The boss of the company does not have a boss and will have [] in their
% boss field
% Given a variable "employee", figure out the number of steps they are away 
% from the boss. 
% Ex: employee = 'Kantwon' stepsFromBoss = 0
% Ex: employee = 'Sarah' stepsFromBoss = 2
employee = 'Sarah';

%index all of the names 
names = {company(:).name};


%find the person in the structure
nameMask = strcmp(employee,names);


%initialize steps from boss to be 0
stepsFromBoss = 0;


%as long as the person doesn't have a boss
while ~isempty(company(nameMask).boss)

    %the current employee's boss becomes the new current employee
    employee = company(nameMask).boss;

    
    %find where this person is in the structure
    nameMask = strcmp(employee,names);
    
    
    %increment step count
    stepsFromBoss = stepsFromBoss + 1;
end

    







%% Example 3
% look at the structuresTracing.png








 
                   

