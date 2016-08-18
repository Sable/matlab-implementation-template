function [checksum] = verify(parameter, output)
    % Compute checksum from output
    uint32_output = typecast(output, 'uint32');
    [row,col] = size(uint32_output)
    checksum = 0
    MAX_UINT32 = 4294967295
    for i=1:row
        for j=1:col
            checksum = mod(checksum+uint32_output(i,j), MAX_UINT32)
        end
    end

    % Raise an error if the checksum does not correspond to the expected mathematical output's checksum for known inputs
    if parameter == 5 && checksum ~= 42
        error(strcat('Invalid checksum of ', int2str(checksum), ' for parameter of 5, expected a checksum of 42 instead'))
    end
end
