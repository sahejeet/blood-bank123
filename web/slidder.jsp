<!DOCTYPE html>
<html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style>
.mySlides {display:none;}
</style>
<body>



<div class="w3-content w3-section" style="max-width:100%; height: 100%;">
  <img class="mySlides" src="Mapalu.jpg" style="width:100%">
  <img class="mySlides" src="Kale.jpg" style="width:100%">
  <img class="mySlides" src="Charlotte.jpg" style="width:100%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000);
  }
</script>

</body>
</html>
