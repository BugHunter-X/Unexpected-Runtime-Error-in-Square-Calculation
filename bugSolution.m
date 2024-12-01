function result = my_function(x)
  % This function calculates the square of a number.
  % It handles potential runtime errors for various input types.

  try
    result = x^2;
  catch ME
    if strcmp(ME.identifier, 'MATLAB:badsubscript')
      % Handle the case where x is not a scalar or compatible array
      error('Input must be a scalar or an array that supports element-wise squaring.');
    elseif strcmp(ME.identifier, 'MATLAB:overflow')
      % Handle overflow errors for large numbers
      result = Inf;  % Or another appropriate handling mechanism
      warning('Overflow occurred. Returning Inf.');
    else
      % Rethrow the error if it's not one of the handled cases
      rethrow(ME);
    end
  end
end

% Example usage
x = 5;
result = my_function(x);
disp(result);

% Test case demonstrating overflow handling
x = 1e150;
result = my_function(x);
disp(result);