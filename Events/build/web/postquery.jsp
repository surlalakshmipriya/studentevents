<!DOCTYPE html>
<html>
<style>
/* Full-width input fields */
body{font-size: 12pt; background-image:url("images/4.jpg");background-size: 2000px 700px;background-repeat: no-repeat}
input[type=text], input[type=password] {
    width: 25%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
    

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    box-sizing: border-box;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 15%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}
.signupbtn {
    padding: 14px 20px;
    background-color: greenyellow;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: contour;
    width: 25%;
}

/* Add padding to container elements */
.container {
    padding: 10px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }}
    

</style></head>
<body><h1><u>College students and events management system</u></h1> <center><fieldset>
        <legend><h1>post query</h1></legend>

        <form action="postqback.jsp" method="post" style="border:1px solid #ccc">
    

    
  <div class="container">
    <label><b>DATE</b></label><br>
    <input type="text" placeholder="DATE" name="dame" required><br>

    <label><b>REG_NO</b></label><br>
    <input type="text" placeholder="REG NO" name="ede" required><br>
    <label><b>NAME</b></label><br>
    <input type="text" placeholder="NAME" name="eday" required><br>

    
    <label><b>QUERIES</b></label><br>
    <input type="text" placeholder="QUERIES" name="eti" required><br>
      
      
    <div class="clearfix">
        <a href="stud.jsp">    <input type="submit" name="f1" value="post"class="signupbtn"></a>
        <input type="submit" name="f2" value="cancel"class="cancelbtn">
    
      
    </div></div></form></fieldset></center></body></html>