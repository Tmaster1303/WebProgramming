<div class="main">

   <?php 
    if(isset($_GET['quanly'])){
        $temp = $_GET['quanly'];
    }else{
        $temp = '';
    }
    if($temp =='Collection'){
        include("main/Collection.php");
        include("slidebar/slidebar.php");
    }elseif($temp=='Gentleman'){
        include("main/Gentleman.php");
        include("slidebar/slidebar.php");
    }elseif($temp=='Lady'){
        include("main/Lady.php");
        include("slidebar/slidebar.php");
    }elseif($temp=='Children'){
        include("main/Children.php");
        include("slidebar/slidebar.php");
    }elseif($temp=='Aboutus'){
        include("main/Aboutus.php");
    }elseif($temp=='Signin'){
        include("main/Signin.php");
    }else{
        include("main/index.php");
    }
    ?>




</div>