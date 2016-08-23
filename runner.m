function runner(input_size)

% Create or load input data

% Use the built-in Mersenne-Twister algorithm,
% the initial state (seed) of the random number generator
% should be initialized in the environment used
% (Done by default for ostrich-matlab-environment 
%  and ostrich-octave-environment)
input = rand(1, input_size);

%% Deprecated: uncomment the following line to use the
%% Ostrich random number generator compiled with MEX
%% also automatically included in the environment of the
%% ostrich-matlab-environment
%% input = createMatrixRandJS(1, input_size);

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
