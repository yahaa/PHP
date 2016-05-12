<html> 
	<head> 
		<title>登录验证</title> 
		<meta http-equiv="content-type" content="text/html;charset=utf-8"> 
	</head> 
	<body> 
		<?php 
			$conn=@mysql_connect("localhost",'root','  ') or die("数据库连接失败！");; 
			mysql_select_db("RUNOOB",$conn) or die("您要选择的数据库不存在"); 
			if (preg_match("/^\w{3,20}$/", $_POST['username'], $matches)){//
				$name=$_POST['username']; 
				$pwdt=$_POST['password']; 
				$pwd=md5($pwdt);
				$sql="select * from users where username='$name' and password='$pwd'"; 
				$query=mysql_query($sql); 
				$arr=mysql_fetch_array($query); 
				if(is_array($arr)){ 
					echo "sucessful，<a href=\"https://github.com/yahaa\">SHOW CODE！</a>"; 
				}else{ 
					echo "您的用户名或密码输入有误，<a href=\"SQLXXX.php\">请重新登录！</a>"; 
				} 
			}//
			else echo "您的用户名有问题，<a href=\"SQLXXX.php\">请重新输入！</a>"; //
		?> 
	</body> 
</html> 