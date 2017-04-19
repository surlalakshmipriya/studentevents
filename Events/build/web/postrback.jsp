<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
   String qfrom=request.getParameter("frm");
   String qto=request.getParameter("ede");
   String qquery=request.getParameter("eti");
   String qreply=request.getParameter("rply");
   
   Class.forName("com.mysql.jdbc.Driver");
  String uri="jdbc:mysql://localhost:3306/test";
  Connection con=DriverManager.getConnection(uri,"root","griet");
  Statement st=con.createStatement();
  boolean rs=st.execute("INSERT INTO viewreply(from_regno,to_regno,query,reply)VALUES('"+qfrom+"','"+qto+"','"+qquery+"','"+qreply+"')");
  if(rs) 
  {
  response.sendRedirect("stud.jsp");
   
           }
  else{
      response.sendRedirect("query.jsp");
  }
   %>