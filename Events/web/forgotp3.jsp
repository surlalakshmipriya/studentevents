 <%@page import="javax.sql.*"%>
<%@page import="java.sql.*"%>
    <%@ page import="java.io.*" %>
<%
    String regnum=request.getParameter("uname");
  Class.forName("com.mysql.jdbc.Driver");
  String uri="jdbc:mysql://localhost:3306/test";
  Connection con=DriverManager.getConnection(uri,"root","griet");
  Statement st=con.createStatement();
  ResultSet rs;
    
if((rs=st.executeQuery("select * from number where registertype='alumni' and regno='"+regnum+"'"))
         !=null)
 {
  if(rs.next())
  {
  response.sendRedirect("cpa1.jsp");
  }
  else{
      response.sendRedirect("alum2.jsp");
  }
 }
%> 