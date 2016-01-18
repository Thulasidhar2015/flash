<?php
error_reporting(E_ALL ^ E_DEPRECATED);
include('includes/dbfunctions.php');
$db = new DB_FUNCTIONS();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Flash- Contact</title>
<link rel="icon" type="image/png" href="images/icon.png"/>
<link rel="Shortcut icon" href="images/icon.png">
<link rel="stylesheet" type="text/css" href="css/styles.css" />
<link rel="stylesheet" type="text/css" href="css/flash.css" />
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="js/thickbox.js"></script>
<link rel="stylesheet" href="css/thickbox.css" type="text/css" media="screen" />
<link href='http://fonts.googleapis.com/css?family=Cabin+Condensed' rel='stylesheet' type='text/css' />
</head>
<body style='background:#5E3571;'>	
<div class="mainDiv">	
<br /><br><br>
<header style='height:200px;'>
               <div style='height:150px;width:110px;float:left;'>
					<img src='images/logo.jpg' height=150>
					<h2 style='font-size:17px;font-family:cursive;float:left;'>Shop Smartly</h2>
				</div><br>
				<div class="frmSearch" style='float:right;'>
				<form action='search.php' method='get'>
			<input type="text" id="search-box" name='search' placeholder="Search Here" size='50'/>
			<input style='width:100px;border:1px solid #8f0222;color:white;border-radius:4px;background:#8f0222;padding:7px;font-family:comic sans ms;font-size:15px;' type='submit' name='submit' value='search'>
			</form>
			<div id="suggesstion-box"></div>
			</div>
            </header>
    <div class="container">
    <div class="divbox divbox1">
        <div style="display:none;" class="productCategoryLeftPanel"></div>
        <form name="frm_filter" id="frm_filter" method="post" action="">
        <div class="productCategoryLeftPanel" id="productCategoryLeftPanel">
            <p class="codrops-demos">
			<a style='padding:6px 35px 9px;' href="index.php">Back to Home</a><br><br>	
			</p>
			<p class="codrops-demos" style='float:right'>
					<a style='padding:6px 35px 9px;width:100px;' href='products.php'>Products</a>
					<a style='padding:6px 35px 9px;width:100px;' href="about.php">About</a>
					<a style='padding:6px 31px 9px;width:108px;' href="contact.php">Contact</a>
				</p>
		<div class="pro_cat_title" style='border:0'>                   
				   		
            		</div>
                    
                                     
					<div class="pro_cat_title" style='border:0'>
					
					</div>					
					
          </div>
          </form>
    </div>
	<div id='c2'>
				<div class='product' style='color:#fff;'>Contact</div>
				<table style='text-align:justify;font-size:20px;color:white;font-family:helvetica;'>
				<tr><td>*<td><td width=200>Surya</td><td>surya.reddy1012@gmail</td></tr>
				<tr><td>*<td><td>Thulasidhar</td><td>thulasidhar2012@gmail</td></tr>
				<tr><td>*<td><td>VamsiKrishna</td><td>vamsikrishna.pvr@gmail</td></tr>
				<tr><td>*<td><td>Sai Swapna</td><td>swapnaa.sai27@gmail</td></tr>
				<tr><td>*<td><td>Harika</td><td>kotakondaharika1995@gmail</td></tr>
				</table>
		
        <div style="clear:both;"></div>
	</div>
	</div>      
</div>
<script type="application/javascript" src="js/productfilter.js"></script>
</body>
</html>
