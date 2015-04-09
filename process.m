function return_val = process(img)
  result = zeroes(16,5);
  
  % measure 1 (TODO description)
  result(1,:) = m1(img);
  
  % measure 2 (TODO description)
  result(2,:) = m2(img);
  
  % measure 3 (TODO description)
  result(3,:) = m3(img);
  
  % measure 4 (TODO description)
  result(4,:) = m4(img);
  
  % measure 5 (TODO description)
  result(5,:) = m5(img);
  
  % measure 6 (TODO description)
  result(6,:) = m6(img);
  
  % measure 7 (TODO description)
  result(7,:) = m7(img);
  
  % measure 8 (TODO description)
  result(8,:) = m8(img);
  
  % measure 9 (TODO description)
  result(9,:) = m9(img);
  
  % measure 10 (TODO description)
  result(10,:) = m10(img);
  
  % measure 11 (TODO description)
  result(11,:) = m11(img);
  
  % measure 12 (TODO description)
  result(12,:) = m12(img);
  
  % measure 13 (TODO description)
  result(13,:) = m13(img);
  
  % measure 14 (TODO description)
  result(14,:) = m14(img);
  
  % measure 15 (TODO description)
  result(15,:) = m15(img);
  
  % measure 16 (TODO description)
  result(16,:) = m16(img);
  
  return_val = result;
end

%{
  Get quadrant 1 of image
  (top left)
%}
function return_val = get_quadrant_1(img)
  [height, width, dimension] = size(img);
  img = imcrop(0, 0, width/2, height/2);
  return_val = img;
end

%{
  Get quadrant 2 of image
  (top right)
%}
function return_val = get_quadrant_2(img)
  [height, width, dimension] = size(img);
  img = imcrop(width/2, 0, width/2, height/2);
  return_val = img;
end

%{
  Get quadrant 3 of image
  (bottom left)
%}
function return_val = get_quadrant_3(img)
  [height, width, dimension] = size(img);
  img = imcrop(0, height/2, width/2, height/2);
  return_val = img;
end

%{
  Get quadrant 4 of image
  (bottom right)
%}
function return_val = get_quadrant_4(img)
  [height, width, dimension] = size(img);
  img = imcrop(width/2, height/2, width/2, height/2);
  return_val = img;
end

%{
  Get quadrant 5 of image
  (centre)
%}
function return_val = get_quadrant_5(img)
  [height, width, dimension] = size(img);
  img = imcrop(width/4, height/4, width/2, height/2);
  return_val = img;
end

%{
  Measure 1 subdivision and delegation
  TODO description
%}
function return_val = m1(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 1 processing
  TODO description
%}
function return_val = calculate_m1(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 2
  TODO description
%}
function return_val = m2(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 2 processing
  TODO description
%}
function return_val = calculate_m2(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 3
  TODO description
%}
function return_val = m3(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 3 processing
  TODO description
%}
function return_val = calculate_m3(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 4
  TODO description
%}
function return_val = m4(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 4 processing
  TODO description
%}
function return_val = calculate_m4(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 5
  TODO description
%}
function return_val = m5(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 5 processing
  TODO description
%}
function return_val = calculate_m5(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 6
  TODO description
%}
function return_val = m6(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 6 processing
  TODO description
%}
function return_val = calculate_m6(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 7
  TODO description
%}
function return_val = m7(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 7 processing
  TODO description
%}
function return_val = calculate_m7(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 8
  TODO description
%}
function return_val = m8(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 8 processing
  TODO description
%}
function return_val = calculate_m8(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 9
  TODO description
%}
function return_val = m9(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 9 processing
  TODO description
%}
function return_val = calculate_m9(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 10
  TODO description
%}
function return_val = m10(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 10 processing
  TODO description
%}
function return_val = calculate_m10(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 11
  TODO description
%}
function return_val = m11(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 11 processing
  TODO description
%}
function return_val = calculate_m11(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 12
  TODO description
%}
function return_val = m12(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 12 processing
  TODO description
%}
function return_val = calculate_m12(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 13
  TODO description
%}
function return_val = m13(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 13 processing
  TODO description
%}
function return_val = calculate_m13(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 14
  TODO description
%}
function return_val = m14(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 14 processing
  TODO description
%}
function return_val = calculate_m14(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 15
  TODO description
%}
function return_val = m15(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 15 processing
  TODO description
%}
function return_val = calculate_m15(img)
  %TODO process
  return_val = 1;
end

%{
  Measure 16
  TODO description
%}
function return_val = m16(img)
  q1_measure = calculate_m1(get_quadrant_1(img));
  q2_measure = calculate_m1(get_quadrant_2(img));
  q3_measure = calculate_m1(get_quadrant_3(img));
  q4_measure = calculate_m1(get_quadrant_4(img));
  q5_measure = calculate_m1(get_quadrant_5(img));
  return_val = [q1_measure; q2_measure; q3_measure; q4_measure; q5_measure];
end

%{
  Measure 16 processing
  TODO description
%}
function return_val = calculate_m16(img)
  %TODO process
  return_val = 1;
end
