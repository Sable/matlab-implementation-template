function [output] = kernel(input)
    % Multiply input by its transpose to create a 2D-matrix
    output = input' * input;
    % Perform a matrix multiplication with itself
    output = output * output;
end
