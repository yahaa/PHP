<?php
	$dbhost = 'localhost:3036';
	$dbuser = 'root';
	$dbpass = 'Asd147258';
	$conn = mysql_connect($dbhost, $dbuser, $dbpass);
	if(! $conn )die("Could not connect: \n" . mysql_error());
	mysql_select_db('study');
	inserts();
	mysql_close($conn);
	function inserts(){
		$ii=1;
		global $conn;
		for($i=0;$i<=9;$i++){
			for($j=0;$j<=9;$j++){
				for($k=0;$k<=9;$k++){
					for($f=0;$f<=9;$f++){
						for($h=0;$h<=9;$h++){
							for($v=0;$v<=9;$v++){
								$pass="$i"."$j"."$k"."$f"."$h"."$v";
								$md5=md5($pass);
								$sql=getSql($md5,$pass);
								$retval=mysql_query( $sql, $conn );
								if($ii%500==0)echo "$ii\n";
								$ii++;
								if(! $retval){
								  die('Could not enter data: ' . mysql_error());
								}
							}
						}
					}
				}
			}
		}
		echo "Entered data successfully\n";
	}

	function getSql($md5,$pass){
		$sql="INSERT INTO MD5_Map".
	       "(md5,pass)".
	       "VALUES".
	       "('$md5','$pass')";
	    return $sql;
	}

?>