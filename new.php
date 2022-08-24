<?php
include"dbconfig.php";
if(isset($_REQUEST['okay']))
{
	extract($_REQUEST);
header("location:search.php?city=$city&cat=$category");
	}
	########################################
	
if(isset($_REQUEST['booknow']))
{
	extract($_REQUEST);
	echo $q="INSERT INTO `booking`(`work`, `city`, `name`, `mobile`, `address`, `date`, `days`, `hours`, `reg_id`, `status`,`Username`,`password`)  VALUES 
	('$cat','$city','$name','$mobile','$address','$date','$days','$hours','$regid','0','$user','$pass')";
	$n=iud($q);
	if($n==1)
	{
        $to=user;
        $sq= select("Select * from registration where id=$regid");
        while($r=mysqli_fetch_assoc($sq)){
        $cont=$r['mobile'];
        $name1=$r['name'];
        $email1=$r['email'];
        }
        $subject="Confirmation Mail Regarding Your Service";
        $txt="Thankyou For Choosing us for your Home service \n Below we have mention a contact detail of your service provider\n Name.$name1 \n Contact no.$cont \n Email.$email1";
        mail($to,$subject,$txt,"From: Asatihariom95@gmail.com");
		echo'<script>alert("Booking Success We Will Contact You Very Soon");
		window.location="search.php?city='.$city.'&cat='.$cat.'";</script>';
	}
}	
##################################################################
if(isset($_REQUEST['login']))
	{
		
	$email=trim($_REQUEST['email']);
	$password=trim($_REQUEST['password']);
	
	$valid=true;
	$query="select * from registration where email='$email' and password='$password'";
	
	
	if($valid)
	{
	$login_data=select($query);
	echo $n=mysqli_num_rows($login_data);
	if($n==1)
	{
		while($data=mysqli_fetch_array($login_data))
		{
		extract($data);
		$_SESSION['id']=$id;
		header("location:mybooking.php?id=$id");
		}
		
		
			}
	else
	{
		echo"email or password is incorrect";
	}
	}
		
	}
    


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	?>