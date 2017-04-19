<!DOCTYPE html>
<html><head>
        <script language="javascript" src="validation.js"></script><style>
/* Full-width input fields */
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
 body{font-size: 12pt; background-image:url("images/4.jpg");background-size: 2000px 2000px;background-repeat: no-repeat}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style></head>
<body><h1><u>College students and events management system</u></h1><center><fieldset>
        <legend><h1>Registration Form</h1></legend>

        <form action="registration.jsp" method="get" onsubmit="valid()"  style="border:1px solid #ccc">
    <h3>1.Are you a student/alumni?</h3>
Register as
<select name="loginType">
<option>student</option>
<option>Alumni</option>
</select>
<h3>2.Enter your login details....</h3>
  <div class="container">
    <label><b>Reg no</b></label><br>
    <input type="text" placeholder="Reg No" name="no" required><br>

    <label><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="pass" required><br>

      <h3>3.Enter your personal details...</h3>
      <label><b>Name</b></label><br>
    <input type="text" placeholder="name" name="name" required><br>
      
      <label><b>Gender</b></label><br>
      Male<input type="radio" name="gender" value=""/>
      Female<input type="radio" name="gender" value=""/><br><br>
    
      <label><b>Date of birth:</b></label><br><br>
      
       dd <select name="day">
<option>01</option>
<option>02</option>
<option>03</option>
<option>04</option>
<option>05</option>
<option>06</option>
<option>07</option>
<option>08</option>
<option>09</option>
<option>10</option>
<option>11</option>
<option>12</option>
<option>13</option>
<option>14</option>
<option>15</option>
<option>16</option>
<option>17</option>
<option>18</option>
<option>19</option>
<option>20</option>
<option>21</option>
<option>22</option>
<option>23</option>
<option>24</option>
<option>25</option>
<option>26</option>
<option>27</option>
<option>28</option>
<option>29</option>
<option>30</option>
<option>31</option>
</select>
MM <select name="month">
<option>01</option>
<option>02</option>
<option>03</option>
<option>04</option>
<option>05</option>
<option>06</option>
<option>07</option>
<option>08</option>
<option>09</option>
<option>10</option>
<option>11</option>
<option>12</option>
</select>
YY<select name="year">
<option>99</option>
<option>98</option>
<option>97</option>
<option>96</option>
<option>95</option> 
<option>95</option>
<option>94</option>
<option>93</option>
<option>92</option>
<option>91</option>
<option>90</option>
<option>89</option>
<option>88</option>
<option>87</option>
<option>86</option>
<option>85</option>
<option>84</option>
<option>83</option>
<option>82</option>
<option>81</option>
<option>80</option>
<option>79</option>
<option>78</option>
<option>77</option>
<option>76</option>
</select>
 <h3>4.Enter your acadamic details....</h3>
      <label><b>Course</b></label><br>
    <input type="text" placeholder="Course" name="cou" required><br>
     <label><b>year</b></label><br>
    <input type="text" placeholder="joinyear" name="joinYear" required><br>
       <label><b>year of passedout</b></label><br>
    <input type="text" placeholder="passyear" name="passYear" required><br>
    <h3>5.Your contact details.....</h3>
       <label><b>Contact No</b></label><br>
    <input type="text" placeholder="Contact No" name="conno" required><br> 
      <label><b>Email-Id</b></label><br>
    <input type="text" placeholder="Email-Id" name="ei" required><br>
      <h3>6.For security......</h3>
     <label><b>Security Question:</b></label><br>
      <select name="qus">
<option>your fav color?</option>
<option>your pet name?</option>
<option>your fav chocolate?</option>
          <option>your fav sport?</option>
</select><br>
      <label><b>Your Answer</b></label><br>
    <input type="text" placeholder="Your Answer" name="ans" required><br>
      
    <div class="clearfix">
        <input type="submit" name="f1" value="signup"class="signupbtn">
        <input type="submit" name="f2" value="reset"class="cancelbtn">
    </div>
  </div>
</form></fieldset>
    </center>
</body>
</html>
