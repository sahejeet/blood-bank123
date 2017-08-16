
<%@include file="commonforadmin.jsp" %>
<html>
<style>
     .button {
    font-family:'Open Sans Condensed', sans-serif;
    border: none;
    background-color: #5C8CA7;
    color:white;
    padding: 10px 30px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 25px;
    transition-duration: 0.4s;
}

.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
    </style>
<br><br><br><br><br>
    <form action="eligval.jsp" method="post">
        <b>BLOOD GROUP&nbsp;</b><select name="bg" required>
    <option value="A+">A+</option>
    <option value="A-">A-</option>
    <option value="B+">B+</option>
    <option value="B-">B-</option>
    <option value="O+">O+</option>
    <option value="O-">O-</option>
    <option value="AB+">AB+</option>
    <option value="AB-">AB-</option>
</select><br><br>
<input type="submit" class="button button2" value="Submit">
        </form>
    </html>
