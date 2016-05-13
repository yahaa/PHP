<html>
	<head>
	<title>Selecting MySQL Database</title>
	</head>
	<body>
		<?php
		$host = 'localhost:3036';
		$user = 'ytu';
		$pass = '123456';
		$conn = mysql_connect($host, $user, $pass);
		if(! $conn )die('连接失败: ' . mysql_error());
		echo '连接成功fuck';
		mysql_select_db( 'ROB' );
		mysql_close($conn);
		?>
	</body>
</html>
