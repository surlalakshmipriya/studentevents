<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>body{font-size: 12pt; background-image:url("images/4.jpg");background-size: 2000px 480px;background-repeat: no-repeat}
            .signupbtn{
    padding: 14px 20px;
    background-color: lightslategray;
}

        
        
        </style>

    
    </head>
<body>
    <h1><u>College students and events management system</u></h1>
    <h2>Alumni</h2>
<table width="30%" cellspacing="0" cellpadding="2">
<br><br>
    <tr>
       
            <td><button onclick="evmanage()" name="subject" type="submit" value=""  class="signupbtn"><b>Events</b></button>
<td><button onclick="que()" name="subject" type="submit" value=""  class="signupbtn"><b>Queries</b></button>


    </tr>
    </table>
    <script type="text/javascript">
       
         
             function evmanage(){
             window.location = "evmanage.jsp";
         }
            function que(){
             window.location = "query.jsp"; }       </script>

    </center>
    </form>
    </body>
    </html>
    