<html>
    <head>
        <title>Edit Url</title>
        <script scr = "scrips/jquery-2.1.3.min.js"></script>
        <link rel = "stylesheet" href ="styles/bootstrap.min.css">
        <meta name ="view-port" content="width = device-width, initial scale = 1">
        <script src = ""></script>
    </head>
    
    <body>
        <?php require_once 'process.php'?>
        
        <!--Checking session messages on completion of action-->
            
        <!--the form that is going to be taking all the data-->
        <div class = "row justify-content-center">
            <form action = "process.php" method = "post">
            <!--Create a hidden input field for saving the ID we need to edit details-->
            <input type = "hidden" name="id" value = <?php echo $id;?>>
            
                <div class = "form-group">
                    <label>URL</label>
                    <input type = "text" class="form-control"
                        name = "url" value = "<?php echo $url ?>" placeholder = "Enter Your Name">
                </div>
                <div class = "form-group">
                    <label>Checked?</label>
                    <input type = "text" class="form-control" 
                        name = "status" value ="<?php echo $status ?>" placeholder = "Yes/No">
                </div>
				<div class = "form-group">
                    <label>Thoughts</label>
					<Textarea class="form-control" 
                        name = "comments" cols=50 value="<?php echo $comments?>">
<?php echo $comments?>
					</Textarea>
                </div>
                <div class = "form-group">
                  <?php if ($update == true):?>
                      <button type = "submit" class = "btn btn-info" name = "update">Update</button>
                  <?php else: ?>
                    <button type = "submit" class = "btn btn-primary" name = "save">Save</button>
                  <?php endif?>
                </div>
            </form>
        </div>
        
        </div>
    </body>
</html>
