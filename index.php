<html>
    <head>
        <title>PHP Crud by Kim</title>
        <script scr = "scrips/jquery-2.1.3.min.js"></script>
        <link rel = "stylesheet" href ="styles/bootstrap.min.css">
        <meta name ="view-port" content="width = device-width, initial scale = 1">
        <script src = ""></script>
    </head>
	<style>
       table td {
        word-wrap: break-word;
      }
    </style>
    
    <body>
		<hr>
        <?php require_once 'process.php'?>
		<!--the form that is going to be taking all the data-->
        <div class = "row justify-content-center">
            <form action = "process.php" method = "post">
            <!--Create a hidden input field for saving the ID we need to edit details-->
				<div class = "form-group">
                    <input type = "text" class="form-control"
                        name = "url" value = "<?php echo $url ?>" placeholder = "Enter new url">
                    <button type = "submit" class = "btn btn-primary" name = "save">Save</button>
					<a href = "zote.php?>" class="btn btn-danger">Visit Viewed</a>
                </div>
            </form>
        </div>
        
        <!--Checking session messages on completion of action-->
        
        <?php
            if (isset($_SESSION['message'])):
        ?>
        <div class = "alert-<?=$_SESSION['msg_type']?>">
             <?php
                    //Print out the message from the action
                    echo $_SESSION['message'];
                    unset($_SESSION['message']);
             ?>
        </div>
        <?php endif;?>
        <div class="container"> 
        <?php
            $mysqli = new mysqli("localhost", "root", "morris", "scholar") or die(mysqli_error($mysqli));
            
            $result = $mysqli -> query("SELECT * from links where status='NO'") or die($mysqli->error);
            
            //print out what is in the database
            //pre_r($result);
            ?>
            
            <!--Create the html table to display the data we want-->
            <div class = "row justify-content-center">
                <table class = "table">
                    <thead><!--table head for the columns-->
                        <tr>
                            <th>Link URL</th>
                            <th>Visited?</th>
                            <th colspan ="2">Action</th>
                        </tr>
                    </thead>
                    
                   <!--Now use php to get data and load it into the table-->
                   <?php
                        while ($row = $result -> fetch_assoc()):
                   ?>
                   <tr>
                        <td style="width:10%"><?php echo $row['link_url']; ?></td>
                        <td><?php echo $row['status']; ?></td>
                        <td>
                            <!--Edit and delete record. First, Edit-->
                            <a href = "Lists.php?edit=<?php echo $row['id'];?>"
                                class="btn btn-info">Edit</a>
                            
                            <a href = "index.php?delete=<?php echo $row['id'];?>"
                                class="btn btn-danger">Delete?</a>
                        </td>
                   </tr>
                    <?php endwhile; ?>
                </table>
            </div>
        
        </div>
    </body>
</html>
