function runner(input_size)

% Create or load input data
% Use the Mersenne-Twister pseudo-random number generator.
% ostrich_rand() follows the same calling conventions as rand()
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
