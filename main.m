%{
  loop through images in the image directory and generate their measures
  PSEUDOCODE
%}
directory = 'what/ever/directory';
filetype = 'jpg';
file_mask = strcat(directory, '.', filetype);
files = dir(file_mask);
for file = files'
    img = imread(file.name);
    data = process(img);
    %TODO
    % add data to a new line in a global variable
end

%TODO
% write data to SQL formatted file to insert into database
