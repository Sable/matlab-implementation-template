function runner(parameter)

% Create or load input data
%% Use Ostrich random number generator compiled with MEX
%% and automatically included in the environment of the
%% ostrich-matlab-environment
input = createMatrixRandJS(1, parameter);

% Run kernel and measure time for core computation 
tic;
output = kernel(input);
elapsedTime  = toc;

% Verify output
checksum = verify(parameter, input);

% Display output
disp('{');
disp('"input":');
disp(parameter);
disp(', "time": ');
disp(elapsedTime);
disp(', "output": ');
disp(checksum);
disp('}');
end
