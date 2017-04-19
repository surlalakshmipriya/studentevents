<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
           h1{font-family: "times new roman"}
           body{font-size: 12pt; background-image:url("images/4.jpg");background-size: 2000px 700px;background-repeat: no-repeat}
           .mg{padding: 14px 20px;background-color: #b7b7b8}
            </style>

    </head>
<body>
    <h1><u>College students and events management system</u></h1>
    <h2>Administrator</h2>
<table width="30%" cellspacing="0" cellpadding="2">
<br><br>
    <tr>
        <td><button onclick="mrq()" name="subject" type="submit" value="manage requests" class="mg"><b>Manage Requests</b></button>&nbsp&nbsp&nbsp&nbsp;
<button onclick="cpa()" name="subject" type="submit" value="change password" class="mg"><b>Change Password</b></button></td>


    </tr>
    </table>
    <script type="text/javascript">
        function mrq(){
             window.location = "mrq.jsp";
         }
              function cpa(){
             window.location = "cpa.jsp";
             

        }
        </script>

    </center>
    </form>
    </body>
    </html>
    