function [checksum] = verify(parameter, output)
    % Compute checksum from output
    uint64_output = typecast(output, 'uint64');
    [row,col] = size(uint64_output);
    checksum = uint64(0);
    MAX_UINT32 = 4294967295;
    for i=1:row
        for j=1:col
            checksum = mod(checksum+uint64_output(i,j), MAX_UINT32);
        end
    end

    % Raise an error if the checksum does not correspond to the expected mathematical output's checksum for known inputs
    if parameter == 10 && checksum ~= 4012692613
        error(strcat('Invalid checksum of ''', int2str(checksum), ''' for parameter of ''', int2str(parameter), ''' expected a checksum of ''4012692613'' instead'))
    elseif parameter == 3000 && checksum ~= 1705208958
        error(strcat('Invalid checksum of ''', int2str(checksum), ''' for parameter of ''', int2str(parameter), ''' expected a checksum of ''1705208958'' instead'))
    elseif parameter == 7000 && checksum ~= 2383274062
        error(strcat('Invalid checksum of ''', int2str(checksum), ''' for parameter of ''', int2str(parameter), ''' expected a checksum of ''2383274062'' instead'))
    end
end
