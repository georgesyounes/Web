<?php

$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'rahbanipharmacy';

$conn = mysqli_connect($servername,$username,$password,$dbname);
if($_POST['search']==''){
  return;
}
else{
  if(isset($_POST['search'])){
    $search = $_POST['search'];
    $pattern= $search;
    $qry = "SELECT * FROM products WHERE productName REGEXP '$pattern'";

    $result = mysqli_query($conn, $qry);
    $rows = [];

    while($row = mysqli_fetch_array($result))
    {
      $rows[] = $row;
    }
    // print_r($rows);

    // $array = mysqli_fetch_array($rows);

    $array2 = json_encode($rows);

    // for($i=0; $i<sizeof($array);$i++)
    // {

        if(sizeof($rows)==0){
          echo "
          <script>
          
            var product = document.createElement('p');
            product.innerText='This product does not exist in our database!';
            product.classList.add('product');
            var element = document.getElementById('products');
            element.appendChild(product);
          
          </script>
      ";
        }else{
          echo "
              <script>
              var array = $array2;
              for(currentProduct in array){
                var product = document.createElement('p');
                var quantity = document.createElement('label');
                product.innerText=array[currentProduct][0];
                quantity.innerText= 'quantity: '+array[currentProduct][1];
                product.classList.add('product');
                quantity.classList.add('quantity');
                product.appendChild(quantity);
                var element = document.getElementById('products');
                element.appendChild(product);
              }
              </script>
          ";
        }
        
    // }
  }
}


function message($msg){
  echo $msg;
}

 ?>