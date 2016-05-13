<html>
	<head>
		<title>在RUNOOB中插入表</title>
	</head>
	<body>
		<?php
			$host ='localhost:3036';
			$user ='root';
			$pass ='  ';
			$conn=mysql_connect($host,$user,$pass);
			if(!$conn)die ('链接失败'.mysql_error());
			else echo '链接成功';
			$sql="CREATE TABLE runoob_tbl3(".
				"runoob_id INT NOT NULL AUTO_INCREMENT,".
				"runoob_title VARCHAR(100) NOT NULL,".
				"runoob_author VARCHAR(40) NOT NULL,".
				"runoob_father VARCHAR(40) NOT NULL,".
				"submission_date DATE, ".
				"PRIMARY KEY (runoob_id))";
			mysql_select_db('RUNOOB');
			$is=mysql_query($sql,$conn);
			if(!$is)die('数据表格创建失败:'.mysql_error());
			else echo '数据表创建成功';
			mysql_close($conn);
		?>
	</body>
</html>
