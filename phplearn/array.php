<pre>
<?php
	$a[0]=1;
	$a["class"]["no"]=1;
	$a["class"]["name"]="abs";
	$a["class"]["count"]=22;
	echo "<BR>";
	print_r($a);

	$b = array("0" =>1,
				"class"=>array("no"=>1,"name"=>"abcd","count"=>22));
	print_r($b);
	scanarray($b);

	function scanarray($b){
		while(list($key,$val)=each($b)){
			if(is_array($val))scanarray($val);
			else echo $key."=".$val;
			echo "<br>";
		}
	}

	function scan1($b){
		foreach($b as $key=>$val){
			if(is_array($val))scan1($val);
			else echo $key."=".$val;
			echo "<br>";
		}
	}

	echo "66666666666666666666666666666\n";

	scan1($b);
	$aa=array("cat"=>"keme","dog"=>"fkme","mouse"=>"mike");
	$bb=array("no"=>1,"class"=>array("no"=>1 ,"name"=>"abcd","count"=>22));
	print_r($bb);

	$temp=array();
	addArray($temp,$bb,$aa);
	print_r($temp);
	print_r(array_merge($aa,$bb));

	function addArray(&$c){
		$numargs=func_num_args();
		$listArgs=func_get_arg();
		for($i=1;$i<$numargs;$i++){
			$b=$listArgs[$i];
			foreach ($b as $key => $val) {
				$c[$key]=$val;
			}
		}
	}

	$ra = array('1','1');
	foreach ($ra as $key => $value) {
		$value=2;
	}
	print_r($ra);


	$arr = array(1,2,3,5,8,13,21,34,55);
	$sum=0;
	for($i=0;$i<5;$i++){
		$sum+=$arr[$arr[$i]];
	}
	echo $sum;

	$ass = array('aaa'=>'a','bbb'=>'b');
	print_r($ass);
	echo count($ass);

	$bb = array('a','b','c','d');
	echo array_sum($bb).count($bb);
	$bbb=array_reverse($bb);
	rsort($bb);
	print_r($bb);
	print_r($bbb);
	$ee=array_flip($bb);
	print_r($ee);

	$mul = array("red","green",42=>"blue","blue"=>array("apple",9=>"pear","banana","orange"=>array("dog","cat","iguana")) );
	echo $mul['blue'][0]['orange'][1];
	print_r($mul);
?>
</pre>