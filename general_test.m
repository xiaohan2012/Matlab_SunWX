dbname = 'COTrade';
tblname = 'china_CO_close_open_SR';
where = 'ticker ~= ''Ò»¶þÈý''';
select = 'ticker,daily_mean'

conn_str = sprintf('jdbc:mysql://172.16.34.76/%s?useUnicode=true&characterEncoding=UTF8',dbname);

tic
if ~exist('conn')
    conn = database('', 'dbread100', 'qw135QW','com.mysql.jdbc.Driver', conn_str);
end    
toc

tic
result  = general_query(conn,tblname,select,where);
toc

tic
result = efficient_convert_comma(result);
toc

tic
result = efficient_convert2struct(result,select);
toc