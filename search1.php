<?php
       $button = $_GET [ 'submit' ];
       $search = $_GET [ 'search' ]; 
       if( !$button )
             echo "you didn't submit a keyword";
       else {
             if( strlen( $search ) <= 0 )
                    echo "<span style='color:white;font-size:20px;'>Please enter any name to search..</span>";
             else {
                    mysql_connect( "localhost","root","") ; 
                    mysql_select_db("products");
 
                    $search_exploded = explode ( " ", $search );
                    $x = 0; 
                    foreach( $search_exploded as $search_each ) {
                           $x++;
                           $construct = "";
                           if( $x == 1 )
                                  $construct .="keywords LIKE '%$search_each%'";
                           else
                                  $construct .="AND keywords LIKE '%$search_each%'";
                    }
 
                    $construct = " SELECT * FROM tbl_products WHERE $construct ";
                    $run = mysql_query( $construct );
 
                    $foundnum = mysql_num_rows($run);
 
                    if ($foundnum == 0)
                           echo "Sorry, there are no results for <b> $search </b>. </br> </br> "; 
                    else {
                           while( $runrows = mysql_fetch_assoc( $run ) ) {?>
                       <div id="loaderID" style="position:absolute; top:60%; left:53%; z-index:2; opacity:0"><img src="images/ajax-loader.gif" /></div>
<div id="productContainer">
	<!------------------------------------------------------------------------------------------------------------------------------------------------->	
		<div class="divbox" onclick="tb_show('<?php echo $runrows['Title']?>','product-details.php?id=<?php echo $runrows['ProductID']?>&keepThis=true&TB_iframe=true&height=500&width=900','thickbox');">
        	<div style="width: 202px;height: 250px;background-size:100%;background:url(images/products/medium/mobiles/<?php echo $runrows['photos']?>) no-repeat;" alt="<?echo $runrows['Title']?>">
                <div class="image-hover"></div>
            </div>
			<div class="product_name" align="center">
				<a href="#"><span class="productname"><?php echo $runrows['Title']?></span></a>
				<div class="price">	                        
				</div>
			</div>
		</div>
	
	<!------------------------------------------------------------------------------------------------------------------------------------------------->
		<?php
?>
</div>		
<?php                        
                            }
                    }
              }
       }
 ?>
