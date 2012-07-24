c = database('COPrice', 'dbread100', 'qw135QW','com.mysql.jdbc.Driver', 'jdbc:mysql://172.16.34.76/COPrice')
exec_sql(c,'select * from agri_wholesale limit 0,5')