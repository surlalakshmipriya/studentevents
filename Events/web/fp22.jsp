 <%@page import="javax.sql.*"%>
<%@page import="java.sql.*"%>
    <%@ page import="java.io.*" %>
<%
    String qus=request.getParameter("qus");
   String ans=request.getParameter("ans");
  Class.forName("com.mysql.jdbc.Driver");
  String uri="jdbc:mysql://localhost:3306/test";
  Connection con=DriverManager.getConnection(uri,"root","griet");
  Statement st=con.createStatement();
  ResultSet rs;
    
if((rs=st.executeQuery("select * from number where registertype='student' and secqstn='"+qus+"'and "))
         !=null)
 {
  if(rs.next())
  {
  response.sendRedirect("forgpd.jsp");
  }
  else{

    out.println("username doesnot exist");
      response.sendRedirect("forgotpwd.jsp");
  }
 }
%> 