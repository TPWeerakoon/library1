<?php
  include "navbar.php";
  include "connection.php";
?>

<!DOCTYPE html>
<html>
<head>
	<title>Feedback</title>
	
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <style type="text/css">
    	body
    	{
    		background-image: url("images/fd.jpg");
    		background-repeat: no-repeat;
    	}
    	.wrapper
    	{
    		padding: 10px;
    		margin: -20px auto;
    		width:900px;
    		height: 600px;
    		background-color: black;
    		opacity: .8;
    		color: white;
    	}
    	.form-control
    	{
    		height: 70px;
    		width: 60%;
    	}
    	.scroll
    	{
    		width: 100%;
    		height: 300px;
    		overflow: auto;
    	}

    </style>
</head>
<body>

<div class="srch">
    <form class="navbar-form" method="post" name="form1">

        <input class="form-control" type="text" name="search" placeholder="search Feedback.." required="">
        <button style="background-color: #6db6b9e6;" type="submit" name="submit2" class="btn btn-default">
            <span class="glyphicon glyphicon-search"></span>
        </button>
    </form>
    <form class="navbar-form" method="post" name="form1">

        <select name="bid" required>
            <option value="">Select Feedback</option>
            <?php
            if(isset($_POST['submit2']))
            {
                $q=mysqli_query($db,"SELECT * from comments where comment like '%$_POST[search]%'");

                while($row=mysqli_fetch_assoc($q)) {
                    echo '<option value="' . $row['id'] . '" >' . $row['comment'] . '</option>';
                }

            }else{

                $res=mysqli_query($db,"SELECT * FROM `comments`");

                while($row=mysqli_fetch_assoc($res)) {
                    echo '<option value="' . $row['id'] . '" >' . $row['comment'] . '</option>';
                }

            }
            ?>
        </select>
        <button style="background-color: #6db6b9e6;" type="submit" name="submit1" class="btn btn-default">Delete
        </button>
    </form>
</div>

	<div style="background-color: rgb(0, 0, 0,0.5);padding: 20px 20px;width: 98%;margin-left: 1%;">
		<h4>If you have any suggesions or questions please comment below.</h4>
		<form style="" action="" method="post">
			<input class="form-control" type="text" name="comment" placeholder="Write something..."><br>	
			<input class="btn btn-default" type="submit" name="submit" value="Comment" style="width: 100px; height: 35px;">		
		</form>
	
<br><br>
	<div class="scroll">
		<?php
			if(isset($_POST['submit']))
			{
				$sql="INSERT INTO `comments` VALUES('','$_POST[comment]');";
				if(mysqli_query($db,$sql))
				{
					$q="SELECT * FROM `comments` ORDER BY `comments`.`id` DESC";
					$res=mysqli_query($db,$q);

				echo "<table class='table table-bordered'>";
					while ($row=mysqli_fetch_assoc($res)) 
					{
						echo "<tr>";
							echo "<td>"; echo $row['comment']; echo "</td>";
						echo "</tr>";
					}
				echo "</table>";
				}

			}else if(isset($_POST['submit2'])){

                $q=mysqli_query($db,"SELECT * from comments where comment like '%$_POST[search]%'");

                echo "<table class='table table-bordered'>";
					while ($row=mysqli_fetch_assoc($q))
					{
						echo "<tr>";
							echo "<td>"; echo $row['comment']; echo "</td>";
						echo "</tr>";
					}
				echo "</table>";

            }else
			{
				$q="SELECT * FROM `comments` ORDER BY `comments`.`id` DESC"; 
					$res=mysqli_query($db,$q);

				echo "<table class='table table-bordered'>";
					while ($row=mysqli_fetch_assoc($res)) 
					{
						echo "<tr>";
							echo "<td>"; echo $row['comment']; echo "</td>";
						echo "</tr>";
					}
				echo "</table>";
			}
		?>
	</div>
	</div>

<?php

    if(isset($_POST['submit1'])) {
        if (isset($_SESSION['login_user'])) {
            mysqli_query($db, "DELETE from comments where id = '$_POST[bid]'; ");
            ?>
            <script type="text/javascript">
                alert("Delete Successful.");
            </script>
        <?php
        }
        else
        {
        ?>
            <script type="text/javascript">
                alert("Please Login First.");
            </script>
            <?php
        }
    }

?>

</body>
</html>
