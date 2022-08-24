<?php
include"dbconfig.php";
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700|Work+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">
    
    
    
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
      <?php include"nav.php"?>
  
  
    <div style="height: 113px;"></div>

    <div class="unit-5 overlay" style="background-image: url('images/hero-4.jpg');">
      <div class="container text-center">
        <h2 class="mb-0">Login</h2>
        <p class="mb-0 unit-6"><a href="index.php">Home</a> <span class="sep">></span> <span>Login</span></p>
      </div>
    </div>

    
    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
       
          <div class="col-md-12 col-lg-8 mb-5">
          
            
            <form method="post" class="p-5 bg-white">

              
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold" for="email">Username</label>
                  <input type="email" id="email" name="Uemail" class="form-control" placeholder="Email Address">
                </div>
              </div><div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="fullname">Password</label>
                  <input type="password" id="fullname" name="Upassword" class="form-control" placeholder="Password">
                </div>
              </div>


              

              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" name="login" value="Login" class="btn btn-primary pill px-4 py-2">
                </div>
              </div>

  
            </form>
            </div> 
          </div>
        </div>
      </div>
      </div>
    </body>
</html>
<?php 

if(isset($_REQUEST['login']))
{
	extract($_REQUEST);
    $query="Select Username,password,status from booking where Username='{$Uemail}' And password='{$Upassword}'";
    $result=select($query);
    $val1['status']=mysqli_fetch_assoc(result);
    
     if($result==1)
	 {
         echo"<script>alert('successfully');
		 </script>";
         if($val1['status']==0){
             echo"<script>alert('Wait');
		 </script>";
         }	
         elseif($val1['status']==1){
             echo"<script>alert('confirm');
		 </script>";
         }	
         else($val1['status']==2){  
             echo "<script>alert('Booked');
		 </script>";
         }	
         
         }
    else{
        echo"<script>alert('UNsuccessfully');
		 </script>";
    }
    
	 }
      
	else
	{
		echo"Something Wrong";
	}
    
    ?>