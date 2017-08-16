<!DOCTYPE html>
<html>
<head>
	

<style>
.ui { top: 0 !important;
      height: 90px !important;
      z-index: 2000;
      border-top: 4px solid #e42a20;
      position: absolute;
      background-color: #fff;
      left: 0;
      width: 100%;
      border-bottom: 1px solid #CBCBCB;
      box-shadow: 1px 1px 1px 0px rgba(0,0,0,0.09);
}

.uibottom {  bottom: 0;
	         height: 90px;
	         z-index: 2000;
             border-top: 1px solid #CBCBCB;
             position: absolute;
             background-color: #fff;
             left: 0 !important;
             width: 100%;
             border-bottom: 4px solid #e42a20;
             margin-top: 37%;
             box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.9);
             text-align: center;
}

.logoo { margin-top: 16px;
	     transition: 0.3s all;
	     position: absolute;
	     left: 20px;
	     top: 0;
	     padding: 0;
} 

a { color: #e42a20;
    font-size: 16px;
    
    line-height: 1.5; 
}


.link { background-image: url(logo1.jpg); 
	    width: 197px;
	    height: 52px;
	    display: block;
	    background-size: 197px 52px;
	    background-position: 0 0;
	    background-repeat: no-repeat;
}

.replacement { text-indent: -9999px;
	           text-transform: capitalize;
	           display: block;
}

.utility { margin: 16px 0 0;
	       transition: 0.3s all;
	       position: absolute;
	       right: 20px;
	       padding: 0;
	       top: 0;
}

a.n { text-decoration: none;
     margin-right: 18px;
     margin-top: 8px;
     color: black; 
     float: left;
     padding: 6px;
     font-size: 18px;
     font-family: ariel;  
} 

a.n:hover { color: #e42a20;
            cursor: auto; 
            border-radius: 5px;
            border: 2px solid #e42a20;
}

.navclearfix { content: ".";
               display: block;
               height: 0;
               clear: both;
               visibility: hidden; 
               margin: 0;
               padding: 0;
               float: right;
}	

.item { float: left;
        margin: 0;
        list-style-type: none; 
}

.link-icon1 { background-image: url();
              background-size: 73px 110px;
              width: 73px;
              height: 55px; 
}	

.link-icon2 { background-image: url();
              background-size: 38px 110px;
              width: 39px;
              height: 55px; 
}	

ul,li { font-size: 16px;
        font-family: none ;
        position: relative;
        color: #4d4d4f; 
}

.page { min-height: 100%;
        position: relative;
        overflow: hidden; 
}

.banner { text-align: center;
          display: table;
          width: 100%;
          position: relative;
          z-index: 100;
}

.bodyy { background-color: yellow; }

.form { position: fixed;
        left: 0;
        top: 0;
        background-color: #B21D1D;
        width: 30%;
        height: 100%; 
}

.look { width: 15.5%;
	    height: 42%;
	    position: fixed;
        background-image: url(tshirt.png);
        border: 2px solid black;
        border-radius: 8px;
        padding: 2.5% 3%;
        margin-left: 4%;
        margin-top: 10%;  
}

.email { padding: 10px 0; 
	    font-size: 15px; 
	    border: 2px solid black; 
	    border-radius: 4px; 
	    width: 65%;
	    margin-bottom: 20px; 
	    text-indent: 10px;
	    margin-top: 30px;
	    margin-left: 5px; 
}

.pass { padding: 10px 0; 
	    width: 65%; 
	    font-size: 15px;  
	    border: 2px solid black;
	    border-radius: 4px;
	    margin-bottom: 30px;
	    text-indent:10px;
	    margin-left: 5px; 
}


a.register:hover { color: white; }


</style>






</head>
<body >
<header class="ui">
<div class="logoo">
 <a class="link" href="">
  <span class="replacement">BLOOD SERVICE
  </span>
 </a>
</div>
<nav class="utility">

 <a class="n" href="">HOME</a> 
<a class="n" href="index.html">RAISE A REQUEST</a>
<a class="n" href="index.html">DONATE BLOOD</a>
<a class="n" href="">ORGANIZE CAMP</a> 
<a class="n" href="">ABOUT US</a>
<a class="n" href="">CONTACT US</a> 
    


</nav>
</header>
<div class="bodyy"> kjfi
</div>
<br><br><br><br><br>
<p align="center">
    You have logged out!
    </p>
    
    <%

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
    if(session.getAttribute("username")==null){
    response.sendRedirect(request.getContextPath() + "/Logout.jsp");

}
%>
    
<footer class="uibottom">Disclaimer: All rights reserved</footer>
</body>
</html>