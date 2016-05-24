<!DOCTYPE html>
<html>
	<body>
<<<<<<< HEAD
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
=======
		<form method="get" action="inout.php">
			name:<input type="text" name="name">
			date:<input type="text" name="date">
			<input type="submit">
		</form>
		<?php
			echo date("Y/M/d");
>>>>>>> 6066422332c30ca9fbc0143b9f28ab6443d8495b
		?>
	</body>
</html>