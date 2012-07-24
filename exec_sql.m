function data=exec_sql(c,query)
    %c -- database connection
    %c sample code:
    %c = database('COPrice', 'dbread100', 'qw135QW','com.mysql.jdbc.Driver', 'jdbc:mysql://172.16.34.76/COPrice')
    
    %query -- database sql statement
    
    data = fetch(c,query);    
    [row_c,col_c] = size(data);
    exec(c,'set names gb2312');
    data
    for i  = 1:row_c
        for j = 1:col_c
            item = data{i,j};
            try
                date = datenum(item);
            catch
                if length(str2num(item)) > 0
                    data{i,j} = str2num(item);
                    data{i,j} = data{i,j}(1);
                end
            end            
        end
    end
end