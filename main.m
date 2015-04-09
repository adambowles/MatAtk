%{
  loop through images in the image directory and generate their measures
  PSEUDOCODE
%}
directory = 'what/ever/directory';
filetype = 'jpg';
file_mask = strcat(strcat(directory, '.'), filetype);
files = dir(file_mask);
for file = files'
    img = imread(file.name);
    % Do some stuff, like process(img);
end
