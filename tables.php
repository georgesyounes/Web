<?php
error_reporting(E_ALL ^ E_WARNING);
session_start();


if(!empty($_GET["action"])) {
switch($_GET["action"]) {


	case "add":
		
$conn = mysqli_connect("localhost", "root", "", "blog_samples");
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

if(!isset($_POST["name"]) ||  !isset($_POST["code"])   ||  !isset($_POST["img"])    || !isset($_POST["price"]))
{
;
}
else{


$sql = "INSERT INTO tblproduct (name,code,image,price) VALUES  (' ".$_POST["name"]." ',' ".$_POST["code"]." ',' ".$_POST["img"]." ',' ".$_POST["price"]." ')";
$result = $conn->query($sql);
}

mysqli_close($conn);




	break;







	case "deleteappo":
		
$conn = mysqli_connect("localhost", "root", "", "rahbanipharmacy");
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

if(!isset($_POST["deleteA"]))
{
;
}
else{

$value = $_POST["deleteA"];

	$sql = "DELETE FROM appointments WHERE pnumber= '$value'";
$result = $conn->query($sql);

}


mysqli_close($conn);
	break;










	case "deleteitem":


$conn = mysqli_connect("localhost", "root", "", "blog_samples");
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

if(!isset($_POST["deleteI"]))
{
;
}
else{

$value = $_POST["deleteI"];

	$sql = "DELETE FROM tblproduct WHERE name= ' $value '";
$result = $conn->query($sql);

}


mysqli_close($conn);
		


	break;	


	case "deletereserv":

$conn = mysqli_connect("localhost", "root", "", "blog_samples");
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

if(!isset($_POST["deleteR"]))
{

}
else{



	$sql = "DELETE FROM reservations WHERE pnumber=' ".$_POST["deleteR"]." '";
$result = $conn->query($sql);

}
	
	mysqli_close($conn);
	break;	
}
}

// if(!isset($_POST["deleteR"]))
// {

// }
// else{



// 	$sql = "DELETE FROM reservations WHERE pnumber=' ".$_POST["deleteR"]." '";
// $result = $conn->query($sql);

// }
?>


<!DOCTYPE html>
<html>
<head>
	<title>Sonia Rahbani</title>
    <link rel="stylesheet" type="text/css" href="tables.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	</style>
</head>
<body>

<div class="container">

    <div class="sideArea">
        <div class="avatar">
            <img src="img/member1.jpg" alt="">
            <div class="avatarName">Welcome,<br>Sonia Rahbani</div>

        </div>

        <ul class="sideMenu">
            <li><a href="javascript:void(0)" class="has-submenu"><span class="fa fa-table"></span>Shopping Cart</a>
                <ul class="submenu">
                    <li><a href="#additem"><span class="fa fa-list"></span>Add Item</a></li>
                    <li><a href="#ditem"><span class="fa fa-tags"></span>Delete Item</a></li>
                </ul>
            </li>


            <li><a href="javascript:void(0)" class="has-submenu"><span class="fa fa-table"></span>Reservations</a>
                <ul class="submenu">
                    <li><a href="#reservations"><span class="fa fa-list"></span> Reservations</a></li>
                    <li><a href="#dreservation"><span class="fa fa-tags"></span>Delete Reservations</a></li>
                </ul>
            </li>



            <li><a href="javascript:void(0)" class="has-submenu"><span class="fa fa-table"></span>Appointments</a>
                <ul class="submenu">
                    <li><a href="#appointment"><span class="fa fa-list"></span> Appointments</a></li>
                    <li><a href="#dappointment"><span class="fa fa-tags"></span>Delete Appointment</a></li>
                </ul>
            </li>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

 <li><a href="index.html" class="has-submenu"><span class="fa fa-table"></span>Homepage</a>

         
        </ul>
    </div>
<!--     SIDE AREA -->


    <div class="mainArea">
        <!-- BEGIN NAV -->
       
        <!-- END NAV -->
        <!-- CONTAINER  -->
        <div class="mainContent">  
<!-- LIST FORM -->
<div class="row filterGroup">
   
    <div class="areaFilter fr row">

<!--         FILTER -->
       
        <div class="boxFilter">
            <div class="btnFilter"><span class="fa fa-close"></span>Close</div>
<!--             GROUP -->
            
<!--             END GROUP -->             
<!--             GROUP -->
           
<!--             END GROUP -->             
        </div>
    </div>
</div>



<div id="reservations" >
<h1 style="color:#252525;">Reservations</h1>
<table>
<tr>
<th>Name</th>
<th>Phone Number</th>
<th>Product Name</th>
<th>Total</th>

</tr>
<?php
$conn = mysqli_connect("localhost", "root", "", "blog_samples");

if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT name, pnumber, product_name,total FROM reservations";
$result = $conn->query($sql);
if ($result->num_rows > 0) {

while($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row["name"]. "</td><td>" . $row["pnumber"] . "</td><td>" . $row["product_name"] . "</td><td>" . $row["total"] . "</td><td>";
}
 echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
</table>

</div>


<br><br>




<div id="appointments" 	>

<h1 style="color:#252525;">Appointments</h1>

<table>
<tr>
<th>Fname</th>
<th>Lname</th>
<th>Email</th>
<th>Number</th>
<th>Type</th>
<th>Date</th>



</tr>
<?php
$conn = mysqli_connect("localhost", "root", "", "rahbanipharmacy");

if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT fname, lname, email, pnumber, appointment, adate FROM appointments";
$result = $conn->query($sql);
if ($result->num_rows > 0) {

while($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row["fname"]. "</td><td>" . $row["lname"] . "</td><td>" . $row["email"] . "</td><td>" . $row["pnumber"] . "</td><td>" . $row["appointment"] . "</td><td>" . $row["adate"] . "</td><td>";
}
 echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
</table>


</div>
















   
 <br><br>
<h1>Deletion</h1><br>
<div id="dreservation" >
<form method="POST"   action="tables.php?action=deletereserv">
<input type="text" name="deleteR" placeholder="Enter Reservation Number">
<input type="submit" value="Delete" style="background-color: #257329">
</form>
</div>
<br>

<div id="dappointment" >
<form method="POST"   action="tables.php?action=deleteappo">
<input type="text" name="deleteA" placeholder="Enter Appointments Number">
<input type="submit" value="Delete" style="background-color: #257329">
</form>
</div>
     <br>     
<div id="ditem" style=>
<form method="POST"   action="tables.php?action=deleteitem">
<input type="text" name="deleteI" placeholder="Enter Name For Deletion">
<input type="submit" value="Delete" style="background-color: #257329">
</form>
</div>


<br><br>
<h1>Add Item</h1>
<br>
<div id="additem" >
<form method="POST" action="tables.php?action=add">
	
Name    :<input type="text" name="name" style="height: 30px; width: 200px;"><br><br>
Code    : <input type="text" name="code" style="height: 30px; width: 200px;"><br><br>
Image   :<input type="text" name="img" style="height: 30px; width: 200px;"><br><br>
Price   :  <input type="text" name="price" style="height: 30px; width: 200px;">
 <input type="submit" value="Add Item" style="background-color: #257329">


</form>
<br>
<!--Removing item -->
<!-- <h1>Remove Item</h1>
<br>
<form>
    Code: <input type="text" name="" id="item_code" style="height: 30px; width: 200px;">
    <input type="submit" value="Remove Item" id="remove_item" style="background-color: #257329">
</form> -->
</div>
<!-- CATE LIST    -->
<br>


<!-- Adding Products-->
<h1>Modify Product</h1>
<br>
<div>
<form>
	
Name    :<input type="text" id="product_name"  style="height: 30px; width: 200px;"><br><br>
Quantity    : <input type="text" id="product_quant" style="height: 30px; width: 200px;">
<input type="submit" id="addProduct" value="Modify Product" style="background-color: #257329">


</form>
</div>
<!-- Adding Product / end-->
<!-- DETAIL FORM -->

          

        </div>
        <!-- END CONTAINER  -->
    </div>
</div>


<script type="text/javascript">
	// ELEMENT
function elm(x){
    var target = x.substring(1);
    var type = x.charAt(0);
    if(type == '#'){
        return document.getElementById(target);
    }else if(type == '.'){
        return document.getElementsByClassName(target);  
    }else {
        return document.getElementsByTagName(x);
    }
}





// SUB MENU
if(elm(".has-submenu")){
    for(var i=0,len=elm(".has-submenu").length; i<len; i++){
        elm(".has-submenu")[i].onclick = function(e){
            e.stopPropagation();
            toggle(this.nextElementSibling);
        }
    }   
}

// BTN SWITCH
if(elm(".checkAll") != undefined){
    for(var i=0,len=elm(".checkAll").length; i<len; i++){
        var target = elm(".checkAll")[i].getAttribute("target");
        if(elm(target)[i] != undefined){
            elm(".checkAll")[i].onchange = function(){
                var checked = this.checked;
                for(var i=0,len=elm(target).length; i<len; i++){
                    elm(target)[i].checked = checked;
                }
            }   
        }
    }   
}

// MENU ICON CLICK
if(elm(".menuIcon")){
    elm(".menuIcon")[0].onclick = function(){
        elm(".container")[0].classList.toggle("is-click");
    };   
}



// NEW INPUT
for(var i=0,len=elm(".btnNewInput").length; i<len; i++){
    elm(".btnNewInput")[i].onclick = function(){
        findClosest(this,elm(".inputGroup")).nextElementSibling.classList.remove("hide");
    };
}




// SORT
if(elm(".titleSelect") != undefined){
    for(var i=0,len=elm(".titleSelect").length; i<len; i++){
        elm(".titleSelect")[i].onclick = function(e){
            e.stopPropagation();
            this.classList.toggle("is-active");
         }      
    }
}
window.onclick = function(){
    for(var i=0,len=elm(".titleSelect").length; i<len; i++){
        elm(".titleSelect")[i].classList.remove("is-active");      
    }
}


// FILTER
if(elm('.btnFilter') != undefined){
    for(var i=0,len=elm('.btnFilter').length; i<len; i++){
        elm('.btnFilter')[i].onclick = function(){
            elm('.boxFilter')[0].classList.toggle('is-active');    
        }      
    }
}



//FIND PARENT
function findClosest(x,parent){
    do{
        if(parent.length > 0){
            for(var i=0,len=parent.length; i<len; i++){
                if( x.isSameNode(parent[i]) ){
                    return x;
                }
            }
        }else {
            if( x.isSameNode(parent) ){
                return x;
            }
        }
    }while(x = x.parentElement);
}

// FIND CHILDREN
function findChildren(x,y){
    var arr = [];
    if(y.length > 0){
        for(var i=0,len=y.length; i<len; i++){
             if( x.isSameNode(findClosest(y[i],x)) ){
                 arr.push(y[i]); 
             }
        }
    }else {
        if( x.isSameNode(findClosest(y,x)) ){
            arr.push(y); 
        }
    } 
    return arr;
}

//RENDER HTML
function renderHTML(x,content){
    var tag = document.createElement(x);
    tag.append(content);
    return tag;
}
    
//TOGGLE
function toggle(x){
  var css = window.getComputedStyle(x,null);
    if(css.getPropertyValue("display") == 'none'){
        x.style.display = 'block';
    }else {
        x.style.display = 'none';
    }
}


//SLIDE	
function slideToggle(el){
    var elCss = window.getComputedStyle(el,null);
    if(elCss.getPropertyValue("height") == 0+'px'){
        el.style.height = el.scrollHeight +"px";
    }else {
        el.style.height = 0;     
    }
}

function extend(o1,o2){
		if(o1 instanceof Array){
			var result = [];
			// RESULT = O1
			for(var i=0,len=o1.length; i<len; i++){
				result.push(o1[i]);
			}
			// RESULT = O2
			for(var i=0,len=o2.length; i<len; i++){
				if(result.indexOf(o2[i]) < 0){
					result.push(o2[i]);
				}
			}
		}else if(typeof o1 == 'object'){
			var result = {};
			var o1Keys = Object.keys(o1);
			for(var i=0,len=o1Keys.length; i<len; i++){
				result[o1Keys[i]] = o1[o1Keys[i]];
			}
			var o2Keys = Object.keys(o2);
			for(var i=0,len=o2Keys.length; i<len; i++){
				result[o2Keys[i]] = o2[o2Keys[i]];
			}
		}
		return result;
	}
	function extend2(o1,o=[]){
		var result = o1;
		for(var i=0,len=o.length; i<len; i++){
			var result = extend(result,o[i]);
		}
		return result;
	}

function DisplayReservation() {
  var x = document.getElementById("reservationstable");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}




// console.log(findClosest(elm("#test"),elm("ul")));


</script>

<script>
    $("#addProduct").click(function(){
        var name = $("#product_name").val();
        var quantity = $("#product_quant").val();

        $.ajax({
            url :"./php/addProduct.php",
            type:"POST",
 				 data:{
                      name: name,
                      quantity: quantity
 				 },
				 success:function(txt){
					  alert(txt);
					 // setTimeout(txt, 1);
				 }
        })
    })

//     $("#remove_item").click(function(){
//         var code = $("#item_code").val();

//         $.ajax({
//             url :"./php/addProduct.php",
//             type:"POST",
//  				 data:{
//                       code: code
//  				 },
// 				 success:function(txt){
// 					  alert(txt);
// 					 // setTimeout(txt, 1);
// 				 }
//         })
//     })
// </script>

</body>
</html>

