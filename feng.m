c = database('test', 'root', '123','com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/test')
r = fetch(c,'select * from feng where name!="Îü¸ç";')