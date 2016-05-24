<?php
	if(isset($POST["B1"])){
		$server=$_POST["server"];
		$ip_=gethostbynamel($server);
		if(!$ip_){
			echo "ADRR:".$server."<BR>";
		}
		else {
			echo $server."LIST:"."<BR>";
			if(foreach ($ip_ as $ip)){
				echo "IP:".$ip."<br>";
			}
		}
	}
?>


<from method='POST' action="<?php echo $_SERVER['PHP_SELF'];?>">
	INPUT SERVER NAME:<input name="server" type="text" size="50">
	<p><input type="submit" value="TJ" name="B1"></p>
</from>