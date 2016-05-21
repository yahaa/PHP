<!DOCTYPE html>
<html>
	<body>
		<form method="get" action="inout.php">
			name:<input type="text" name="name">
			date:<input type="text" name="date">
			<input type="submit">
		</form>
		<?php
			echo date("Y/M/d");
		?>
	</body>
</html>