<%@page import="javax.sql.*"%>
<%@page import="java.sql.*"%>
    <%@ page import="java.io.*" %>
<% String userid=request.getParameter("uname");
  String pwd=request.getParameter("pass");
  Class.forName("com.mysql.jdbc.Driver");
  String uri="jdbc:mysql://localhost:3306/test";
  Connection con=DriverManager.getConnection(uri,"root","griet");
  Statement st=con.createStatement();
  ResultSet rs;
    
 if((rs=st.executeQuery("select * from number where  registertype='student' and regno='"+userid+"'and pass='"+pwd+"'"))
         !=null)
 {
  if(rs.next())
  {
  response.sendRedirect("newjsp3.jsp");
 }
  else{
  response.sendRedirect("alum.jsp");
  }
 }
%>