<html>
	<head><title>向 MySQL 数据库添加数据</title></head>
	<body>
		<?php
		if(isset($_POST['add'])){
			$dbhost = 'localhost:3036';
			$dbuser = 'root';
			$dbpass = '  ';
			$conn = mysql_connect($dbhost, $dbuser, $dbpass);
			if(! $conn )die('Could not connect: ' . mysql_error());

			if(! get_magic_quotes_gpc() ){
			   $runoob_title = addslashes ($_POST['user']);
			   $runoob_author = addslashes ($_POST['key']);
			}
			else{
			   $runoob_title = $_POST['user'];
			   $runoob_author = $_POST['key'];
			}

			$sql = "INSERT INTO roo".
			       "(user,key) ".
			       "VALUES ".
			       "('$user','$key')";
			mysql_select_db('RUNOOB');
			$retval = mysql_query( $sql, $conn );
			if(! $retval )die('Could not enter data: ' . mysql_error());
			echo "Entered data successfully\n";
			mysql_close($conn);
		}
		else{
			?>
			<form method="post" action="<?php $_PHP_SELF ?>">
				<table width="600" border="0" cellspacing="1" cellpadding="2">
					<tr>
						<td width="250">Tutorial Title</td>
						<td><input name="runoob_title" type="text" id="runoob_title"></td>
					</tr>
					<tr>
						<td width="250">Tutorial Author</td>
						<td><input name="runoob_author" type="text" id="runoob_author"></td>
					</tr>
					<tr>
						<td width="250">Submission Date [ yyyy-mm-dd ]</td>
						<td><input name="submission_date" type="text" id="submission_date"></td>
					</tr>
					<tr>
						<td width="250"> </td>
						<td> </td>
					</tr>
					<tr>
						<td width="250"> </td>
						<td><input name="add" type="submit" id="add" value="Add Tutorial"></td>
					</tr>
				</table>
			</form>
			<?php
		}
		?>
	</body>
</html>