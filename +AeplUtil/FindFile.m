%% FindFile  -  dev
%   helper function
%       takes folder and string pattern
%       returns first file in folder containing pattern



function fullpath = FindFile(folder, pattern)
   contents = dir(folder);
   for i = 1:length(contents)
       if contains(contents(i),pattern)
           fullpath = fullfile(folder,contents(i).name);
           return
       end
   end
   
   fullpath = false;
end