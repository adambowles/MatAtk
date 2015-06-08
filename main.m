%{
  loop through images in the image directory and generate their measures
%}

% Clear command window
clc;

start_time = now;
disp('Calculating image measures...');

% directory = '/path/1/example';
directory = '/path/2/example';
filetype = 'jpg';
file_mask = strcat(directory, '/*.', filetype);

% Iterate through all files in the folder
files = dir(file_mask);
disp(['Found ', num2str(size(files, 1)), ' images in folder: ', directory]);
disp(' ');

output_string = '';
count = 0;

for file = files'
  file_name = fullfile(directory, file.name);

  % Determine if the file is a valid image
  try
    info = imfinfo(file_name);
    is_jpg = strcmp(info.Format, 'jpg');
  catch
    is_jpg = false;
  end
  
  if is_jpg
    img = imread(fullfile(directory, file.name));
    data = process(img);
    
    output_string = 'UPDATE `artatk_art` SET ';
    first_item = true;
    for i = 1:size(data, 2);
      if first_item
        output_string = [output_string, '`', data{1, i}, '`=''' num2str(data{2, i}), ''''];
        first_item = false;
      else
        output_string = [output_string, ', `', data{1, i}, '`=''' num2str(data{2, i}), ''''];
      end
    end
    output_string = [output_string, ' WHERE `artatk_art`.`filename`=''', file.name, ''';'];
    disp(output_string);
    count = count + 1;
  end
  
end

end_time = now;
duration_time = (end_time - start_time) * 100000;
disp(' ');
disp('Calculations complete');
disp(['Processed ', num2str(count), ' images in ', num2str(duration_time), ' seconds']);
