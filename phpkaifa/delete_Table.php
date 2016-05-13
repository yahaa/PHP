<html>
	<head><title>删除数据库中的数据表</title></head>
	<body>
		<?php
			$host ='localhost:3036';
			$user ='root';
			$pass ='  ';
			$conn=mysql_connect($host,$user,$pass);
			if(!$conn)die('链接失败:'.mysql_error());
			else echo '链接成功';
			$sql="DROP TABLE runoob_tbl2";
			mysql_select_db('RUNOOB');
			$is=mysql_query($sql,$conn);
			if(!$is)die('数据表删除失败'.mysql_error());
			else echo '数据表格删除成功';
			mysql_close($conn);
		?>
	</body>
</html>
