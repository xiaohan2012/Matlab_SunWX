function result = efficient_convert2struct(data,fields)
    fields = regexp(fields,',','split');
    [row_c,col_c] = size(data);
    result = [];
    for i  = 1:row_c
        s = struct();
        for j = 1:col_c
            s.(fields{j}) = data{i,j};
        end
        result = [result s];
    end    
end