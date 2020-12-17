<?php
error_reporting(E_ALL ^ E_WARNING);
session_start();
require_once("dbcontroller.php");
$db_handle = new DBController();
if(!empty($_GET["action"])) {
switch($_GET["action"]) {
	case "add":
		if(!empty($_POST["quantity"])) {
			$productByCode = $db_handle->runQuery("SELECT * FROM tblproduct WHERE code='" . $_GET["code"] . "'");
			$itemArray = array($productByCode[0]["code"]=>array('name'=>$productByCode[0]["name"], 'code'=>$productByCode[0]["code"], 'quantity'=>$_POST["quantity"], 'price'=>$productByCode[0]["price"], 'image'=>$productByCode[0]["image"]));
			
			if(!empty($_SESSION["cart_item"])) {
				if(in_array($productByCode[0]["code"],array_keys($_SESSION["cart_item"]))) {
					foreach($_SESSION["cart_item"] as $k => $v) {
							if($productByCode[0]["code"] == $k) {
								if(empty($_SESSION["cart_item"][$k]["quantity"])) {
									$_SESSION["cart_item"][$k]["quantity"] = 0;
								}
								$_SESSION["cart_item"][$k]["quantity"] += $_POST["quantity"];
							}
					}
				} else {
					$_SESSION["cart_item"] = array_merge($_SESSION["cart_item"],$itemArray);
				}
			} else {
				$_SESSION["cart_item"] = $itemArray;
			}
		}
	break;
	case "remove":
		if(!empty($_SESSION["cart_item"])) {
			foreach($_SESSION["cart_item"] as $k => $v) {
					if($_GET["code"] == $k)
						unset($_SESSION["cart_item"][$k]);				
					if(empty($_SESSION["cart_item"]))
						unset($_SESSION["cart_item"]);
			}
		}
	break;
	case "empty":
		unset($_SESSION["cart_item"]);
	break;	

	case "reserve":

	if(!empty($_SESSION["cart_item"]) && isset($_POST['username']) )
	{ 

   

     $query =  $db_handle->runQuery("INSERT INTO  reservations (name, pnumber,total, product_name) VALUES  (' ".$_POST["username"]." ',' ".$_POST["number"]." ',' ".$_SESSION["total_price"]." ',' ".$_SESSION["i_name"]." ')");


	}
	
	break;	
}
}
?>
<HTML>
<HEAD>
<TITLE>Pharmacy Shopping</TITLE>
<link href="shoppingcss/style.css" type="text/css" rel="stylesheet" />
<link rel = "icon" href ="img/shoppingicon.jpg"
        type = "image/x-icon"> 

</HEAD>
<BODY>
<header class="header-section">
            <nav class="navbar navbar-default">
                <div class="container">
                   
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.html"><b>R</b>ahbani</a>
                    </div>

                   
                </div>
            </nav>
		</header>
		
		<section class="search-section">
            <div class="container">
                <div class="row subscribe-from">
                    <div class="col-md-12">
                        <form class="form-inline col-md-12 wow fadeInDown animated">
                            <div class="form-group">
                                <input type="email" class="form-control subscribe" id="email" placeholder="Search...">
                                <button class="suscribe-btn" ><i class="pe-7s-search"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>




<section class="featured-section" id="shopping-cart">
<div class="container">
<div class="row" style="margin-bottom: 100px;">
                    <div class="col-md-12">
<div class="titie-section wow fadeInDown animated " style="margin-bottom: 100px;">
	<h1>Shopping cart</h1>
</div>
					</div>
				</div>
				</div>
<a id="btnEmpty" href="index.php?action=empty"  style="background-color: #ffffff;
	border: #d00000 1px solid;
	padding: 5px 10px;
	color: #d00000;
	float: right;
	text-decoration: none;
	border-radius: 3px;
	margin: 10px 0px;">Empty Cart</a>
<?php
if(isset($_SESSION["cart_item"])){
    $total_quantity = 0;
    $total_price = 0;
?>	
<table class="tbl-cart featured-items isotope-item" cellpadding="10" cellspacing="1">
<tbody>
<tr>
<th style="text-align:left;">Name</th>
<th style="text-align:left;">Code</th>
<th style="text-align:right;" width="5%">Quantity</th>
<th style="text-align:right;" width="10%">Unit Price</th>
<th style="text-align:right;" width="10%">Price</th>
<th style="text-align:center;" width="5%"></th>
</tr>	
<form method="POST" action="index.php?action=reserve"> 
<?php		
$_SESSION["i_name"] = " ";
    foreach ($_SESSION["cart_item"] as $item){
        $item_price = $item["quantity"]*$item["price"];
		?>
				<?php $_SESSION["i_name"] = $item["name"] ." ". $_SESSION["i_name"] ;
				
				
				?>
				<tr>
				<td><img src="<?php echo $item["image"]; ?>" class="cart-item-image" /><?php echo $item["name"]; ?></td>
				<td><?php echo $item["code"]; ?></td>
				<td style="text-align:right;"><?php echo $item["quantity"]; ?></td>
				<td  style="text-align:right;"><?php echo "$ ".$item["price"]; ?></td>
				<td  style="text-align:right;"><?php echo "$ ". number_format($item_price,2); ?></td>
				<td style="text-align:center;"><a href="index.php?action=remove&code=<?php echo $item["code"]; ?>" class="btnRemoveAction"><img src="icon-delete.png" alt="Remove Item" /></a></td>
				</tr>
				<?php
				$total_quantity += $item["quantity"];
				$total_price += ($item["price"]*$item["quantity"]);
				

		}
		$_SESSION["total_price"] = $total_price; 

		?>
<tr>
	
	<td style="text-align:right; position:relative;
  
  background:#1abc9c;
  border:1px solid white;
  padding:20px;
  font-size:0.9em;
  color:white;
  box-shadow:4px 4px 0px 0px white;
  font-family: 'Open Sans', sans-serif;
  font-weight:700;
  letter-spacing:5px;
  text-transform:uppercase;
  transition: all 300ms ease-in-out;
  left:0;
  top:0; ">
		
		<b>Enter Name</b><input type="text" name="username"><br><br>
		<b>Enter Number</b><input type="tel" name="number"><br><br>
		<input type="submit" value="Reserve Here">

	</td>
</form>
<td colspan="2" align="right">Total:</td>
<td align="right"><?php echo $total_quantity; ?></td>
<td align="right" colspan="2"><strong><?php echo "$ ".number_format($total_price, 2); ?></strong></td>

<td></td>
</tr>
</tbody>
</table>		
  <?php
} else {
?>
<div class="no-records" style=" text-align: center;font-size: 20px; color: red">Your Cart is Empty</div>
<?php 
}
?>
</div>


<div class="container">
                <div class="row" style="margin-top: 50px; margin-bottom: 20px">
                    <div class="col-md-12">
<div class="titie-section wow fadeInDown animated ">
	<h1>Products</h1>
</div>
					</div>
				</div>
				<div class="row">
                    <div class="col-md-12">
                        <div class="filter-menu">
                            <ul class="button-group sort-button-group">
                                <li class="button active" data-category="all">All<span>16</span></li>
                                <li class="button" data-category="cat-1">Baby Product<span>6</span></li>
                                <li class="button" data-category="cat-2">Food Supplements<span>6</span></li>
                                <li class="button" data-category="cat-3">Cosmetics<span>4</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
				<div class="row featured isotope">
	<?php
	$product_array = $db_handle->runQuery("SELECT * FROM tblproduct ORDER BY id ASC");
	if (!empty($product_array)) { 
		foreach($product_array as $key=>$value){
	?>
	<div class="col-md-3 col-sm-6 col-xs-12 cat-1 featured-items isotope-item">
		<div class="product-item">
			<form method="post" action="index.php?action=add&code=<?php echo $product_array[$key]["code"]; ?>">
			<div class="product-image"><img src="<?php echo $product_array[$key]["image"]; ?>"></div>
			<div class="product-tile-footer">
			<div class="product-title"><?php echo $product_array[$key]["name"]; ?> <div class="product-title">
                                
                                    <h3><?php echo $product_array[$key]["name"]; ?></h3>
                                    <span><?php echo $product_array[$key]["price"]; ?>$</span>
                                
                            </div></div>
			<div class="product-price"><?php echo "$".$product_array[$key]["price"]; ?></div>
			<div class="cart-action"><input type="text" class="product-quantity" name="quantity" value="1" size="2" />
			<div class="product-hover">
                                <div class="product-meta">
								<input type="submit" class="btnAddAction" value="Add to cart" style="background-color: #1abc9c;padding: 10px 24px;" />
								</div>
			</div>
								</div>
			</div>
			</form>
		</div>
		</div>


				
	<?php
		}
	}
	?>
	</div>
</div>
</section>
<!-- JQUERY -->
<script src="shoppingjs/vendor/jquery-1.11.2.min.js"></script>
        <script src="shoppingjs/vendor/bootstrap.min.js"></script>
        <script src="shoppingjs/isotope.pkgd.min.js"></script>
        <script src="shoppingjs/owl.carousel.min.js"></script>
        <script src="shoppingjs/wow.min.js"></script>
        <script src="shoppingjs/custom.js"></script>
</BODY>
</HTML>