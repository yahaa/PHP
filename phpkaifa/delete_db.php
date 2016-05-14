
<html>
<head>
	<title>Delete DB</title>
</head>
<body>
	<?php
		$host='localhost:3036';
		$user='root';
		$pass='  ';
		$conn=mysql_connect($host,$user,$pass);
		if(!$conn)echo 'Cant connect';
		else echo 'Sucessful connect <br/>';
		$sql='DROP DATABASE ROB';
		$is=mysql_query($sql,$conn);
		if(!$is)die('false:'.mysql_error());
		echo 'sucess';
		mysql_close($conn);
	?>
</body>
</html>