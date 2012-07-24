dbname = 'chinaEQIndex';
tblname = 'insiderTrade_SH';
where = '变动原因 = "二级市场买卖"';

result  = general_query(dbname,tblname,'',where)

