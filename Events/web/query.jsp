<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body{font-size: 12pt; background-image:url("images/4.jpg");background-size: 2000px 700px;background-repeat: no-repeat}
        .signupbtn {
    padding: 14px 30px;
    background-color:lightcyan;
}
        </style>
</head>
<body>
     <h1><u>College students and events management system</u></h1>
    <h2>Queries</h2>
<table width="30%" cellspacing="0" cellpadding="2">
<br><br>
    <tr>
        <td><button onclick="vqu()" name="subject" type="submit" value="view queries" class="signupbtn">viewqueries</button></td>
        <td><button onclick="pqu()" name="subject" type="submit" value="post queries" class="signupbtn">postqueries</button></td>
           <td><button onclick="prip()" name="subject" type="submit" value="postreply" class="signupbtn">postreply</button></td>
                <td><button onclick="vrip()" name="subject" type="submit" value="viewreply" class="signupbtn">viewreply</button></td>


    </tr>
    </table>
    <script type="text/javascript">
        function vqu(){
             window.location = "viewquery.jsp";
         }
             function pqu(){
             window.location = "postquery.jsp";
         }
              function prip(){
             window.location = "postreply.jsp";
                    }
                    function vrip(){
             window.location = "viewreply.jsp";
             

        }

        </script>

    </center>
    </form>
    </body>
    </html>
    