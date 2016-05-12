<html>
	<head>
		<title>选择数据库</title>
	</head>
	<body>
		<?php
			$host='localhost:3036';
			$user='ytu';
			$pass='123456';
			$conn=mysql_connect($host,$user,$pass);
			if(!$conn)die('false:'.mysql_error());
			else echo 'sucessful';
			mysql_select_db('YTY',$conn);
			mysql_close($conn);
		?>
	</body>
</html>


CREATE TABLE users(
   id INT NOT NULL AUTO_INCREMENT,
   username VARCHAR(100) NOT NULL,
   password VARCHAR(40) NOT NULL,
   dates DATE,
   PRIMARY KEY (id)
   );


   INSERT INTO users(username,password,dates)
       VALUES('FFF',md5('123321'),2014-10-10);
