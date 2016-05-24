<!DOCTYPE html>
<html>
	<body>
		<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
			name:<input type="text" name="md5">
			<input type="submit">
		</form>
		<?php
			$host='localhost:3036';
			$user='root';
			$pass='  ';
			$conn=mysql_connect($host,$user,$pass);
			if(!$conn)die('false1:'.mysql_error());
			mysql_select_db('study',$conn);
			$md55=$_POST["md5"];
			$sql="select pass FROM MD5_Map WHERE md5=\"$md55\"";
			$can=mysql_query($sql,$conn);
			if(!$can)die('false2:'.mysql_error());
			if($ans=mysql_fetch_array($can,MYSQLI_ASSOC)){
				echo $ans[pass];
			}
			else echo "can`t find\n";
			mysql_close($conn);
		?>
	</body>
</html>