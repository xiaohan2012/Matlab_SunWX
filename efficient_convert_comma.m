function data  = efficient_convert_comma(data)
    [row_c,col_c] = size(data);
    for i  = 1:row_c
        for j = 1:col_c
            item = data{i,j};
            if ~isnumeric(item)
                if ~isempty(strfind(item,','))
                    temp = regexprep(item,',','');
                    if length(str2num(item)) > 0
                        data{i,j} = str2num(temp);
                        data{i,j} = data{i,j}(1);
                    end  
                end
            end   
        end
    end
end