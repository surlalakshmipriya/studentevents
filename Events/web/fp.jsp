<%@page import="javax.sql.*" %>
<%@page import="java.sql.*" %>

<%
   Class.forName("com.mysql.jdbc.Driver");
              String uri="jdbc:mysql://localhost:3306/test";
              Connection con=DriverManager.getConnection(uri,"root","griet");
String vsql ;

  try{
     Statement st=con.createStatement();
     vsql="select *  from number";    
    ResultSet Rs=st.executeQuery(vsql);
%>
<html>
    <head><style>
        body{font-size: 12pt; background-image:url("images/4.jpg");background-size: 2000px 700px;background-repeat: no-repeat}
        .mg{padding: 14px 20px;background-color: #b7b7b8}
        </style>

</head>
<body><h1><u>College students and events management system</u></h1>
<h2 align="center">Manage Requests</h2>
<table border="1" align=center>
<thead>
<tr bgcolor="#26618D">
<FONT FACE="Times New Roman" COLOR="#FFFF99">
<th><font size="3" COLOR="#FFFF99">Regno</th>
<th><font size="3" COLOR="#FFFF99">security qstn</th>
<th><font size="3" COLOR="#FFFF99">answers</th>
<% 
while(Rs.next())
{%><tr bgcolor="#d3d2d1">
   <td><%out.println(Rs.getString(2));%></td>
    <td><%out.println(Rs.getString(14));%></td>
   <td><%out.println(Rs.getString());%></td>
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

 


 

