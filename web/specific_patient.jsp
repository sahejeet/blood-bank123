

<%@include file="commonforadmin.jsp" %>
<html>
<style>
     .button {
    font-family:'Open Sans Condensed', sans-serif;
    border: none;
    background-color: #5C8CA7;
    color:white;
    padding: 20px 40px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 5px;
    transition-duration: 0.4s;
}

.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
    </style>
<br><br><br><br><br>

<h1 align="center" style="color:black;font-size: 42px; font-family: Georgia, Times New Roman, Times, serif;">Enter The Bloodgroup And City</h1>
  <br>  <form action="spec_patientshow.jsp" method="post">
        <p align="center">
        <b>CITY&nbsp;</b><select name="city"  required>
    <option selected="" disabled="disabled" value="select a City">Select a City</option>
    <option value="Agra">Agra</option>
    <option value="Amritsar">Amritsar</option>
    <option value="Bangalore">Bangalore</option>
    <option value="Chandigarh">Chandigarh</option>
    <option value="Delhi">Delhi</option>
    <option value="Jaipur">Jaipur</option>
    <option value="Goa">Goa</option>
</select><br><br><br>
        
        
        <b>BLOOD GROUP&nbsp;</b><select name="bg" required>
    <option value="A+">A+</option>
    <option value="A-">A-</option>
    <option value="B+">B+</option>
    <option value="B-">B-</option>
    <option value="O+">O+</option>
    <option value="O-">O-</option>
    <option value="AB+">AB+</option>
    <option value="AB-">AB-</option>
</select><br><br><br>
<input type="submit" class="button button2" value="Submit">
        </p>   
    </form>
    </html>
