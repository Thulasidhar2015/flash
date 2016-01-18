<h1>Introduction</h1>
<p>FLASH is an e-commerce comparison website that helps consumers to shop smartly by comparing the features of a product from differet e-commerce sites. The languages used to design our website are HTML,CSS and PHP Scripting Language.</p>
<p>Note: The products included in our website are only mobiles.</p>
<h1>Requirements</h1>
<p>* Firefox or Google Chrome</p>
<p>* EasyPHP(for personal web hosting). To download <a href='http://www.easyphp.org/download.php'>Click Here</a> and Install it.</p>
<h1>Steps to Execute</h1>
<p>* Goto "https://github.com/Thulasidhar2015/flash" or <a href='https://github.com/Thulasidhar2015/flash'>Click Here</a></p>
<p>* Click on (Download Zip) to download the files required to run the website.</p>
<p>* Extract all downloaded files into local server. (Ex: C:\EasyPHP-DevServer-14.1VC9\data\localweb\)</p>
<p>* Import "flash.sql" from database folder which is download from github to database i.e local server(Ex:http://localhost/modules/phpmyadmin414x151007222847/#PMAURL-0:index.php?db=&table=&server=1&target=&token=21b34127faba22fd14396ef2f4beb32c)</p>
<p>* Change database authentication in following files.</p>
<P>     1. Flash/dbcontroller.php</p>
<p>     2. Flash/includes/dbfunctions.php</p>
<p>         Ex: private $host = "localhost";<br>
	              private $user = "root";<br>
              	private $password = "";<br>
              	private $database = "products"; </p>

<p>* Open any browser and type "localhost" in address bar.</p>
<p>* Execute the website in browser.(Note: EasyPHP must be STARTED while executing)</p>
