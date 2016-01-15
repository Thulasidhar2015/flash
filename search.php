<?php
error_reporting(E_ALL ^ E_DEPRECATED);
include('includes/dbfunctions.php');
$db = new DB_FUNCTIONS();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Flash- Search Results</title>
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
		<div class="pro_cat_title">                   
				   		<h1 style="cursor:pointer;"><a style='color:khaki;'>brands</a><span class="spanbrandcls" style="float:right; visibility:hidden;"><a href="javascript:;"><img src="images/reset.png" alt="reset" title="reset" /></a></span></h1>						
            		</div>
                    <div id="branddivID" style='color:white;'><?php include 'pageportion/brands.php';  ?></div>
                                     
					<div class="pro_cat_title">
						<h1 style="cursor:pointer;"><a style='color:khaki;'>Price</a><span class="spanpricecls" style="float:right; visibility:hidden;"><a href="javascript:;"><img src="images/reset.png" alt="reset" title="reset" /></a></span></h1>
					</div>					
					<?php include 'pageportion/prices.php';  ?>
          </div>
          </form>
    </div>
	<div id='c2'>
				<div class='product' style='color:#fff;'>Search Results</div>
		<?php include 'pageportion/show-filters.php';  ?>        
        <?php include 'search1.php';  ?>
        <div style="clear:both;"></div>
	</div>
	</div>      
</div>
<script type="application/javascript" src="js/productfilter.js"></script>
</body>
</html>
