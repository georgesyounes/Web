<?php

$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'rahbanipharmacy';

$conn = mysqli_connect($servername,$username,$password,$dbname);

function ProductExists($conn,$prod){

	$result = mysqli_query($conn,"SELECT productName FROM products WHERE productName='$prod'");
	$check = mysqli_fetch_array($result);
		if(sizeof($check)>0)
			{
				return true;
			}
			return false;
}


if(isset($_POST["name"]) && isset($_POST["quantity"])){

    

		$name = $_POST['name'];
		$quantity = $_POST['quantity'];
        
        if(ProductExists($conn,$name)){
            // $oldQuantity = mysqli_query($conn,"SELECT quantity FROM products WHERE productName='$name'");
            // $oldQT = mysqli_fetch_array($oldQuantity);
            // $newQuantity = $oldQT[0] + $quantity;
            mysqli_query($conn, "UPDATE products SET quantity = '$quantity'  WHERE productName = '$name'");
            echo 'Product already exists, so we modified the quantity!';
            
        }else{
            mysqli_query($conn, "INSERT INTO products (productName, quantity) values ('$name','$quantity')");
            echo 'Product added to database!';
            
        }


		
}
function ItemExists($conn,$code){

	$result = mysqli_query($conn,"SELECT name FROM tblproduct WHERE code='$code'");
	$check = mysqli_fetch_array($result);
		if(sizeof($check)>0)
			{
				return true;
			}
			return false;
}


// if(isset($_POST['code'])){
//     $code = $_POST['code'];
//     if(!ItemExists($conn,$code)){
//         echo "Item does not exist!";
//         return;
//     }
//     else{
//         mysqli_query($conn,"DELETE FROM tblproduct WHERE code='$code'");
//         echo "Item has been removed";
//         return;
//     }

// }

