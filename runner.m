function runner(parameter)

% Option 1: Use custom random number generator compiled with MEX
%% Set random number generator
setRandomSeed();

%% Create or load input data
input = createMatrixRandJS(1, parameter);

% Run kernel and measure time for core computation 
tic
output = kernel(input);
elapsedTime  = toc;

% Verify output
checksum = verify(parameter, output);

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
