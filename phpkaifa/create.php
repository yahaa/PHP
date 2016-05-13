<html>
	<head>
		<title>创建新的数据库</title>
	</head>
	<body>
		<?php
			$host='localhost:3036';
			$user='root';
			$pass='  ';
			$conn=mysql_connect($host,$user,$pass);
			if(!$conn)die('链接错误:'.mysql_error());
			echo '链接成功';
			$sql='CREATE DATABASE TYT';
			$is=mysql_query($sql,$conn);
			if(!$is)die("创建失败：".mysql_error());
			echo 'asjdlkf';
			mysql_close($conn);
		?>
	</body>
</html>
