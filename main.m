%{
  loop through images in the image directory and generate their measures
%}

% Clear command window
clc;

start_time = now;
disp('Calculating image measures...');

% directory = '/Users/adambowles/Sites/fyp/website/web/assets/img/art/ClaudeMonet';
directory = '/Users/adambowles/Sites/fyp/website/web/assets/img/art/VincentVanGogh';
filetype = 'jpg';
file_mask = strcat(directory, '/*.', filetype);

% Iterate through all files in the folder
files = dir(file_mask);
disp(['Found ', num2str(size(files, 1)), ' images in folder: ', directory]);
disp([' ']);

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
    
    output_string = file.name;
    for i = 1:numel(data);
      output_string = [output_string, ', ' num2str(data(1, i))];
    end
    output_string = [output_string, ';'];
    disp(output_string);
    count = count + 1;
  end
  
end

end_time = now;
duration_time = (end_time - start_time) * 100000;
disp('Calculations complete');
disp(['Processed ', num2str(count), ' images in ', num2str(duration_time), ' seconds']);
