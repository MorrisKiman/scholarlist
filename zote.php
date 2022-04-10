<html>
    <head>
        <title>Edit Url</title>
        <script scr = "scrips/jquery-2.1.3.min.js"></script>
        <link rel = "stylesheet" href ="styles/bootstrap.min.css">
        <meta name ="view-port" content="width = device-width, initial scale = 1">
        <script src = ""></script>
    </head>
    
    <body>
		<?php
            $mysqli = new mysqli("localhost", "root", "morris", "scholar") or die(mysqli_error($mysqli));
            
            $result = $mysqli -> query("SELECT * from links where status!='NO'") or die($mysqli->error);
            
            //print out what is in the database
            //pre_r($result);
            ?>
		
		<?php
            while ($row = $result -> fetch_assoc()):
            ?>
        <div class="container">
			<hr>
			<div class="card">
				<div class="card-header"><?php echo $row['id']; ?>. Status:=><?php echo $row['status']; ?></div>
				<div class="card-body"><?php echo $row['link_url']; ?></div> 
				<div class="card-footer"><?php echo $row['comments']; ?></div>
			</div>
			<hr>
		</div>
		<?php endwhile; ?>
    </body>
</html>
