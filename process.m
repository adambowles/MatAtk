function return_val = process(img)
  % 14 separate measures, each applied to the five quadrants and once on
  % whole image
  result = cell(1, 6);
  result2 = cell(2, 84);
  
  % measure 1 (average of red values)
  measure = 1;
  measure_name = 'redness';
  result = m1(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 2 (average of green values)
  measure = 2;
  measure_name = 'greenness';
  result = m2(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 3 (average of blue values)
  measure = 3;
  measure_name = 'blueness';
  result = m3(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 4 (average of greyscale values)
  measure = 4;
  measure_name = 'brightness';
  result = m4(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 5 (cell counting)
  measure = 5;
  measure_name = 'cells';
  result = m5(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 6 (canny edge pixels vs total pixels)
  measure = 6;
  measure_name = 'edges';
  result = m6(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 7 (verticality)
  measure = 7;
  measure_name = 'vertical-edges';
  result = m7(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 8 (horizontality)
  measure = 8;
  measure_name = 'horizontal-edges';
  result = m8(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 9 (number of unique colours)
  measure = 9;
  measure_name = 'distinct-colours';
  result = m9(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 10 (number of unqique reds)
  measure = 10;
  measure_name = 'distinct-reds';
  result = m10(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 11 (number of unique greens)
  measure = 11;
  measure_name = 'distinct-greens';
  result = m11(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 12 (number of unique blues)
  measure = 12;
  measure_name = 'distinct-blues';
  result = m12(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 13 (max variance from mean)
  measure = 13;
  measure_name = 'mean-variance';
  result = m13(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
  
  % measure 14 (most frequently occurring colours
  % (discretised / reduced bit depth))
<<<<<<< HEAD
  measure = 14;
  measure_name = 'mode-colour';
  result = m14(img);
  for i = 1:6
    i2 = ((measure-1) * 6) + i;
    result2{1, i2} = [measure_name, '-', num2str(i)];
    result2{2, i2} = result(i);
  end
=======
  result(14,:) = m14(img);
  
  % Present data in array rather than matrix
  arr_result = reshape(result.', 1, numel(result));
>>>>>>> origin/master
  
  return_val = result2;
end

%{
  Get quadrant 1 of image
  (top left)
%}
function return_val = get_quadrant_1(img)
  [height, width, ~] = size(img);
  img = imcrop(img, [0 0 width/2 height/2]);
  return_val = img;
end

%{
  Get quadrant 2 of image
  (top right)
%}
function return_val = get_quadrant_2(img)
  [height, width, ~] = size(img);
  img = imcrop(img, [width/2 0 width/2 height/2]);
  return_val = img;
end

%{
  Get quadrant 3 of image
  (bottom left)
%}
function return_val = get_quadrant_3(img)
  [height, width, ~] = size(img);
  img = imcrop(img, [0 height/2 width/2 height/2]);
  return_val = img;
end

%{
  Get quadrant 4 of image
  (bottom right)
%}
function return_val = get_quadrant_4(img)
  [height, width, ~] = size(img);
  img = imcrop(img, [width/2 height/2 width/2 height/2]);
  return_val = img;
end

%{
  Get quadrant 5 of image
  (centre)
%}
function return_val = get_quadrant_5(img)
  [height, width, ~] = size(img);
  img = imcrop(img, [width/4 height/4 width/2 height/2]);
  return_val = img;
end

%{
  Measure 1 subdivision and delegation
%}
function return_val = m1(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  total_measure = calculate_m1(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 1 processing
  Overall red-ness
  Average value of all red values from all pixels scaled to 0-100 range
%}
function return_val = calculate_m1(img)
  reds = img(:,:,1);
  average_red = mean2(reds);
  return_val = average_red / 2.55;
end

%{
  Measure 2
%}
function return_val = m2(img)
  q1_measure = calculate_m2(get_quadrant_1(img));
  q2_measure = calculate_m2(get_quadrant_2(img));
  q3_measure = calculate_m2(get_quadrant_3(img));
  q4_measure = calculate_m2(get_quadrant_4(img));
  q5_measure = calculate_m2(get_quadrant_5(img));
  total_measure = calculate_m2(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 2 processing
  Overall green-ness
  Average value of all green values from all pixels scaled to 0-100 range
%}
function return_val = calculate_m2(img)
  greens = img(:,:,2);
  average_green = mean2(greens);
  return_val = average_green / 2.55;
end

%{
  Measure 3
%}
function return_val = m3(img)
  q1_measure = calculate_m3(get_quadrant_1(img));
  q2_measure = calculate_m3(get_quadrant_2(img));
  q3_measure = calculate_m3(get_quadrant_3(img));
  q4_measure = calculate_m3(get_quadrant_4(img));
  q5_measure = calculate_m3(get_quadrant_5(img));
  total_measure = calculate_m3(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 3 processing
  Overall blue-ness
  Average value of all blue values from all pixels scaled to 0-100 range
%}
function return_val = calculate_m3(img)
  blues = img(:,:,3);
  average_blue = mean2(blues);
  return_val = average_blue / 2.55;
end

%{
  Measure 4
%}
function return_val = m4(img)
  q1_measure = calculate_m4(get_quadrant_1(img));
  q2_measure = calculate_m4(get_quadrant_2(img));
  q3_measure = calculate_m4(get_quadrant_3(img));
  q4_measure = calculate_m4(get_quadrant_4(img));
  q5_measure = calculate_m4(get_quadrant_5(img));
  total_measure = calculate_m4(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 4 processing
  Similar to coloured averages, this measure is greyscale brightness
  weighted as:
  red * 0.2989
  green * 0.5870
  blue * 0.1140
%}
function return_val = calculate_m4(img)
  reds = img(:,:,1);
  reds = reds .* 0.2989;
  
  greens = img(:,:,2);
  greens = greens .* 0.5870;
  
  blues = img(:,:,3);
  blues = blues .* 0.1140;
  
  combined = reds + greens + blues;
  
  average = mean2(combined);
  return_val = average;
end

%{
  Measure 5
%}
function return_val = m5(img)
  q1_measure = calculate_m5(get_quadrant_1(img));
  q2_measure = calculate_m5(get_quadrant_2(img));
  q3_measure = calculate_m5(get_quadrant_3(img));
  q4_measure = calculate_m5(get_quadrant_4(img));
  q5_measure = calculate_m5(get_quadrant_5(img));
  total_measure = calculate_m5(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 5 processing
  Segments
  http://blog.pedro.si/2014/04/basic-cell-segmentation-in-matlab.html
%}
function return_val = calculate_m5(img)
  I = rgb2gray(img);
  I = adapthisteq(I);
  I = imclearborder(I);
  I = wiener2(I, [5 5]);
  bw = im2bw(I, graythresh(I));
  bw2 = imfill(bw, 'holes');
  bw3 = imopen(bw2, strel('disk',2));
  bw4 = bwareaopen(bw3, 100);
  maxs = imextendedmax(I,  5);
  maxs = imclose(maxs, strel('disk',3));
  maxs = imfill(maxs, 'holes');
  maxs = bwareaopen(maxs, 2);
  Jc = imcomplement(I);
  I_mod = imimposemin(Jc, ~bw4 | maxs);
  L = watershed(I_mod);

  [~, num] = bwlabel(L);
  
  return_val = num;
end

%{
  Measure 6
%}
function return_val = m6(img)
  q1_measure = calculate_m6(get_quadrant_1(img));
  q2_measure = calculate_m6(get_quadrant_2(img));
  q3_measure = calculate_m6(get_quadrant_3(img));
  q4_measure = calculate_m6(get_quadrant_4(img));
  q5_measure = calculate_m6(get_quadrant_5(img));
  total_measure = calculate_m6(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 6 processing
  Canny edge detection
  returns number of edge pixels as percentage of all pixels using canny
  edge detector
%}
function return_val = calculate_m6(img)
  img = rgb2gray(img);
  canny = edge(img, 'Canny');
  [rows, columns, ~] = size(img);
  total_pixels = rows * columns;
  edge_pixels = nnz(canny);
  edge_ratio = edge_pixels / total_pixels;
  return_val = edge_ratio;
end

%{
  Measure 7
%}
function return_val = m7(img)
  q1_measure = calculate_m7(get_quadrant_1(img));
  q2_measure = calculate_m7(get_quadrant_2(img));
  q3_measure = calculate_m7(get_quadrant_3(img));
  q4_measure = calculate_m7(get_quadrant_4(img));
  q5_measure = calculate_m7(get_quadrant_5(img));
  total_measure = calculate_m7(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 7 processing
  vertical sobel brightness comapred to bi-directional
%}
function return_val = calculate_m7(img)
  img = rgb2gray(img);
  
  vertical_gradient = imfilter(img, [-1 0 1;
                                     -2 0 2;
                                     -1 0 1;]);
                                 
  horizontal_gradient = imfilter(img, [ 1  2  1;
                                        0  0  0;
                                       -1 -2 -1;]);
              
  grad_intensity = horizontal_gradient + vertical_gradient;
  
  verticality =  mean2(vertical_gradient)/mean2(grad_intensity);
  
  return_val = verticality;
end

%{
  Measure 8
%}
function return_val = m8(img)
  q1_measure = calculate_m8(get_quadrant_1(img));
  q2_measure = calculate_m8(get_quadrant_2(img));
  q3_measure = calculate_m8(get_quadrant_3(img));
  q4_measure = calculate_m8(get_quadrant_4(img));
  q5_measure = calculate_m8(get_quadrant_5(img));
  total_measure = calculate_m8(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 8 processing
  horizontal sobel brightness comapred to bi-directional
%}
function return_val = calculate_m8(img)
  img = rgb2gray(img);
  
  vertical_gradient = imfilter(img, [-1 0 1;
                                     -2 0 2;
                                     -1 0 1;]);
                                 
  horizontal_gradient = imfilter(img, [ 1  2  1;
                                        0  0  0;
                                       -1 -2 -1;]);
              
  grad_intensity = horizontal_gradient + vertical_gradient;
  
  horizontality =  mean2(horizontal_gradient)/mean2(grad_intensity);
  
  return_val = horizontality;
end

%{
  Measure 9
%}
function return_val = m9(img)
  q1_measure = calculate_m9(get_quadrant_1(img));
  q2_measure = calculate_m9(get_quadrant_2(img));
  q3_measure = calculate_m9(get_quadrant_3(img));
  q4_measure = calculate_m9(get_quadrant_4(img));
  q5_measure = calculate_m9(get_quadrant_5(img));
  total_measure = calculate_m9(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 9 processing
  Number of distinct different colours
%}
function return_val = calculate_m9(img)
  dec_img = (double(img(:,:,1)) .* (256 * 256)) + (double(img(:,:,2)) .* 256) + double(img(:,:,3));
  distinct_colours = unique(dec_img);
  distinct_colours_count = size(distinct_colours, 1);
  return_val = distinct_colours_count;
end

%{
  Measure 10
%}
function return_val = m10(img)
  q1_measure = calculate_m10(get_quadrant_1(img));
  q2_measure = calculate_m10(get_quadrant_2(img));
  q3_measure = calculate_m10(get_quadrant_3(img));
  q4_measure = calculate_m10(get_quadrant_4(img));
  q5_measure = calculate_m10(get_quadrant_5(img));
  total_measure = calculate_m10(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 10 processing
  Number of distinct different reds
%}
function return_val = calculate_m10(img)
  reds = double(img(:,:,1));
  distinct_colours = unique(reds);
  distinct_colours_count = size(distinct_colours, 1);
  return_val = distinct_colours_count;
end

%{
  Measure 11
%}
function return_val = m11(img)
  q1_measure = calculate_m11(get_quadrant_1(img));
  q2_measure = calculate_m11(get_quadrant_2(img));
  q3_measure = calculate_m11(get_quadrant_3(img));
  q4_measure = calculate_m11(get_quadrant_4(img));
  q5_measure = calculate_m11(get_quadrant_5(img));
  total_measure = calculate_m11(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 11 processing
  Number of distinct different greens
%}
function return_val = calculate_m11(img)
  greens = double(img(:,:,2));
  distinct_colours = unique(greens);
  distinct_colours_count = size(distinct_colours, 1);
  return_val = distinct_colours_count;
end

%{
  Measure 12
%}
function return_val = m12(img)
  q1_measure = calculate_m12(get_quadrant_1(img));
  q2_measure = calculate_m12(get_quadrant_2(img));
  q3_measure = calculate_m12(get_quadrant_3(img));
  q4_measure = calculate_m12(get_quadrant_4(img));
  q5_measure = calculate_m12(get_quadrant_5(img));
  total_measure = calculate_m12(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 12 processing
  Number of distinct different blues
%}
function return_val = calculate_m12(img)
  blues = double(img(:,:,3));
  distinct_colours = unique(blues);
  distinct_colours_count = size(distinct_colours, 1);
  return_val = distinct_colours_count;
end

%{
  Measure 13
%}
function return_val = m13(img)
  q1_measure = calculate_m13(get_quadrant_1(img));
  q2_measure = calculate_m13(get_quadrant_2(img));
  q3_measure = calculate_m13(get_quadrant_3(img));
  q4_measure = calculate_m13(get_quadrant_4(img));
  q5_measure = calculate_m13(get_quadrant_5(img));
  total_measure = calculate_m13(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 13 processing
  Max variance from mean colour
  Calculates vector magnitude in 3D (RGB) space
%}
function return_val = calculate_m13(img)
  reds = img(:,:,1);
  average_red = mean2(reds);
  max_red = max(max(reds));
  min_red = min(min(reds));
  red_pos_variance = max_red - average_red;
  red_neg_variance = average_red - min_red;
  if(red_pos_variance >= red_neg_variance)
      red_variance = double(red_pos_variance);
  else
      red_variance = double(red_neg_variance);
  end
  
  greens = img(:,:,2);
  average_green = mean2(greens);
  max_green = max(max(greens));
  min_green = min(min(greens));
  green_pos_variance = max_green - average_green;
  green_neg_variance = average_green - min_green;
  if(green_pos_variance >= green_neg_variance)
      green_variance = double(green_pos_variance);
  else
      green_variance = double(green_neg_variance);
  end
  
  blues = img(:,:,3);
  average_blue = mean2(blues);
  max_blue = max(max(blues));
  min_blue = min(min(blues));
  blue_pos_variance = max_blue - average_blue;
  blue_neg_variance = average_blue - min_blue;
  if(blue_pos_variance >= blue_neg_variance)
      blue_variance = double(blue_pos_variance);
  else
      blue_variance = double(blue_neg_variance);
  end
  
  variance_magnitude = sqrt(double((red_variance^2) + (green_variance^2) + (blue_variance^2)));
  
  return_val = variance_magnitude;
end

%{
  Measure 14
%}
function return_val = m14(img)
  q1_measure = calculate_m14(get_quadrant_1(img));
  q2_measure = calculate_m14(get_quadrant_2(img));
  q3_measure = calculate_m14(get_quadrant_3(img));
  q4_measure = calculate_m14(get_quadrant_4(img));
  q5_measure = calculate_m14(get_quadrant_5(img));
  total_measure = calculate_m14(img);
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure; total_measure];
end

%{
  Measure 14 processing
  Most frequently occurring colour
  (discretised / reduced bit depth)
%}
function return_val = calculate_m14(img)
  % Discretise colours per dimension
  colours = 32; % Set this for colours per dimension
  colour_factor = 256/colours;
  
  reds = img(:,:,1);
  reds = round(reds ./ colour_factor);
  
  greens = img(:,:,2);
  greens = round(greens ./ colour_factor);
  
  blues = img(:,:,3);
  blues = round(blues ./ colour_factor);
  
  % rescale back to 0-255
  img(:,:,1) = reds .* colour_factor;
  img(:,:,2) = greens .* colour_factor;
  img(:,:,3) = blues .* colour_factor;
  
  dec_img = (double(img(:,:,1)) .* (256 * 256)) + (double(img(:,:,2)) .* 256) + double(img(:,:,3));
  
  mode_val = mode(mode(dec_img));
  
  return_val = mode_val;
end
