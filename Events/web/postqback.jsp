<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
   String evename=request.getParameter("dame");
   String evedate=request.getParameter("ede");
   String eveday=request.getParameter("eday");
   String evetime=request.getParameter("eti");
   
   Class.forName("com.mysql.jdbc.Driver");
  String uri="jdbc:mysql://localhost:3306/test";
  Connection con=DriverManager.getConnection(uri,"root","griet");
  Statement st=con.createStatement();
  boolean rs=st.execute("INSERT INTO viewquery(Date,regno,name,Viewquery)VALUES('"+evename+"','"+evedate+"','"+eveday+"','"+evetime+"')");
  if(rs) 
  {
  out.println("successfully updated......");
   
           }
  else{
      response.sendRedirect("query.jsp");
  }
   %>