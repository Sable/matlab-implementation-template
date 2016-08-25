function runner(input_size)

% Create or load input data
% Use the default twister matlab pseudo-random number generator
input = ostrich_rand(1, input_size);

% Run kernel and measure time for core computation 
tic;
output = kernel(input);
elapsedTime  = toc;

% Verify output
checksum = verify(input_size, output);

% Display output
disp('{');
disp('"input":');
disp(input_size);
disp(', "time": ');
disp(elapsedTime);
disp(', "output": ');
disp(checksum);
disp('}');
end
