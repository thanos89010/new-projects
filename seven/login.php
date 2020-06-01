<?php
	include 'function.php';

	connectWelcome();

?>
<!doctype html>
<html>
	<head>
		<title>SESSION</title>
		<?php
			if(isset($message)){ ?>
			<script>
				alert('Λάθος UserName ή Password');
			</script>
		<?php	}
		?>
	<script src="https://kit.fontawesome.com/6a3930ec32.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/base.css">
	</head>	
	<body class="flex direction-c a-center j-center">	
		<h2>Συνδεθείτε στον λογαριασμό σας</h2>	
		<div class="form-login flex  ">
		<form action="" method="post" >
			<div class="flex p2">
				<label for="" class="flex-1">e-mail</label>
				<input class="flex-2 type="text" name="username" placeholder="Enter username" />
			</div>
			<div>
			<div class="flex p2">
			<label class="flex-1" for="">Κωδικός Πρόσβασης</label>
				<input class="flex-2" type="password" name="password" placeholder="Enter password" />
			</div>
			</div>
			<div class="input-form flex direction-c a-center p2">
				<p>Ξέχασες τον κωδικό πρόσβασης;</p>
				<button class="product-show" type="submit">Συνδεση</button>
			</div>
			</div>
		</form>
	</body>
</html>