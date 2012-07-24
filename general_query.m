function result  = general_query(conn,tblname,select,where )    
    if isempty(select) == 1
        select = '*';
    end    
    sql = sprintf('select %s from %s where 1=1 and %s',select,tblname,where);
    result = exec_sql(conn,sql);
end
