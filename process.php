<?php
    //create the connection to the database ansd test that it is 
    session_start();//handling sessions
    
    $id = 0;//for the hidden input field
    $url = ""; //to avoid the error I was getting in my txt boxes loading the index page, I have initiated these variables to null.
    $status = "";
	$comments="";
    $update = false;
    $mysqli = new mysqli("localhost", "root", "morris", "scholar") or die(mysqli_error($mysqli));
    
    if(isset($_POST['save'])){
        $url = $_POST['url'];
        
        
        //insert the records into the database
        $mysqli -> query("INSERT INTO links(link_url) values('$url')") or
        die($mysqli -> error);
        //send back a message using the session to confirm the action
        $_SESSION['message'] = "Record has been saved";
        $_SESSION['msg_type'] = "success";
        
        header("location: index.php");//redirect the user back to the index page
        }
        
        //delete the data selected
		
    /*if(isset($_GET['delete'])){
        $id = $_GET['delete'];
        $mysqli -> query("Delete From links where id = $id") or die($mysqli -> error);
        
        //send back message to confirm that the data has been deleted
        $_SESSION['message'] = "Record has been deleted";
        $_SESSION['msg_type'] = "danger";
        
        header("location: index.php");//redirect the user back to the index page
    }*/
    
    //get the details of the selected item for editing and load them into the tex boxes
    if (isset ($_GET['edit'])){
        $id = $_GET['edit'];
        $update = true;
        
        //get the selected individual from the db
        $result = $mysqli -> query("SELECT * from links where id = $id") or die($mysqli -> error);
        
        //check if the data exists then display it
        if (!$result == null){
            $row = $result -> fetch_array();
            $id = $row['id'];
            $url = $row['link_url'];
            $status = $row['status'];
			$comments = $row['comments'];
			

        }
    }
    
    //check if the button is save or update. If update, perform the following
    if(isset ($_POST['update'])){
        $id = $_POST ['id'];
        $url = $_POST ['url'];
        $status = $_POST ['status'];
		$comments = $_POST['comments'];
        
        //update the data now
        $mysqli->query("UPDATE links set link_url ='$url', status = '$status', comments = '$comments' where ID = $id")
            or die($mysqli -> error);
        
        //session Messages
        $_SESSION['message'] = $comments;
        $_SESSION['msg_type'] = "warning";
        header('location: index.php');
        $update = false;
    }
        ?>
