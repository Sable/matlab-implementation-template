function [output] = kernel(input)
    % Multiply input by its transpose to create a 2D-matrix
    output = input' * input;
    % Perform element-wise multiplication
    output = output .* output;
end
