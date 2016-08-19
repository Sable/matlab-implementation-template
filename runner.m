function runner(input_size)

% Create or load input data
%% Use Ostrich random number generator compiled with MEX
%% and automatically included in the environment of the
%% ostrich-matlab-environment
input = createMatrixRandJS(1, input_size);

% Run kernel and measure time for core computation 
tic;
output = kernel(input);
elapsedTime  = toc;

% Verify output
checksum = verify(input_size, input);

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
