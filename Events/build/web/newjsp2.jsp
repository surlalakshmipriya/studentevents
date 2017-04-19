<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
       body{font-size: 12pt; background-image:url("images/4.jpg");background-size: 2000px 700px;background-repeat: no-repeat}
        .mq{padding: 12px 15px;background-color: lightgrey}       </style>
</head>
<body><h1><u>College students and events management system</u></h1>
    <h2>Event Manager</h2>
<table width="30%" cellspacing="2" cellpadding="2">
<br><br>
    <tr>
        <td><button onclick="upe()" name="subject" type="submit" value="update event" class="mq"><b>update event</b></button></td>
        <td><button onclick="evmanage()" name="subject" type="submit" value="view events" class="mq"><b>view events</b></button></td>
               <td> <button onclick="cpa2()" name="subject" type="submit" value="change password" class="mq"><b>change password</b></button></td>


    </tr>
    </table>
    <script type="text/javascript">
        function upe(){
             window.location = "updateevent.jsp";
         }
             function evmanage(){
             window.location = "evmanage.jsp";
         }
              function cpa2(){
             window.location = "cpa2.jsp";
             

        }
        </script>

    </center>
    </form>
    </body>
    </html>
    