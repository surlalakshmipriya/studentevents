
<%@page import="javax.sql.*" %>
<%@page import="java.sql.*" %>

<%
   Class.forName("com.mysql.jdbc.Driver");
              String uri="jdbc:mysql://localhost:3306/test";
              Connection con=DriverManager.getConnection(uri,"root","griet");
String vsql ;

  try{
     Statement st=con.createStatement();
     vsql="select *  from Eventmanager";    
    ResultSet Rs=st.executeQuery(vsql);
%>
<html>
<head>
<style>body{font-size: 12pt; background-image:url("images/4.jpg");background-size: 2000px 700px;background-repeat: no-repeat}</style>
</head>
<body><h1><u>College students and events management system</u></h1>
<h2 align="center">EVENT MANAGER</h2>
<table border="1" align=center>
<thead>
<tr bgcolor="#26618D">
<FONT FACE="Times New Roman" COLOR="#FFFF99">
<th><font size="3" COLOR="#FFFF99">EVENT NAME</th>
<th><font size="3" COLOR="#FFFF99">EVENT DATE</th>
<th><font size="3" COLOR="#FFFF99">EVENT TIME</th>
<th><font size="3" COLOR="#FFFF99">VENU</th></tr>
<% 
while(Rs.next())
{%><tr bgcolor="#d3d2d1">
   <td><%out.println(Rs.getString(1));%></td>
   <td><%out.println(Rs.getString(2));%></td>
  <td><%out.println(Rs.getString(3));%></td>
  <td><%out.println(Rs.getString(4));%></td>
  
   </tr>
<% 
  }
%>

</thead>
</body>
</html>

<%
}
catch(Exception e){out.println(e.getMessage());}

%>

 


 

