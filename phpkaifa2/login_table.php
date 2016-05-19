<html>
	<head><title>向 MySQL 数据库添加数据</title></head>
	<body>
		<?php
		if(isset($_POST['add'])){
			$host = 'localhost:3036';
			$user = 'root';
			$pass = '  ';
			$conn = mysql_connect($host, $user, $pass);
			if(! $conn )die('Could not connect: ' . mysql_error());
			$username = $_POST['username'];
			$password= md5($_POST['password']);
			$date=$_POST['dates'];
			$sql = "INSERT INTO users".
			       "(username,password,dates) ".
			       "VALUES ".
			       "('$username','$password','$date')";

			mysql_select_db('RUNOOBSSS');
			$ok= mysql_query( $sql, $conn );
			if(! $ok )die('Could not enter data: ' . mysql_error());
			echo "注册成功，<a href=\"SQLXXX.php\">返回到登陆界面！</a>"; 
			mysql_close($conn);
		}
		else{
			?>
			<form method="post" action="<?php $_PHP_SELF ?>">
				<table width="300" border="0" cellspacing="1" cellpadding="2">
					<tr>
						<td width="250">用户名</td>
						<td><input name="username" type="text" id="username"></td>
					</tr>
					<tr>
						<td width="250">密码</td>
						<td><input name="password" type="text" id="password"></td>
					</tr>
					<tr>
						<td width="250">生日</td>
						<td><input name="dates" type="text" id="dates"></td>
					</tr>
					<tr>
						<td width="250"> </td>
						<td> </td>
					</tr>
					<tr>
						<td width="250"> </td>
						<td><input name="add" type="submit" id="add" value="注册"></td>
					</tr>
				</table>
			</form>
			<?php
		}
		?>
	</body>
</html>