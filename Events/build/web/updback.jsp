<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
   String evename=request.getParameter("ename");
   String evedate=request.getParameter("edate");
   String evetime=request.getParameter("etime");
   String evevenue=request.getParameter("venue");
   Class.forName("com.mysql.jdbc.Driver");
  String uri="jdbc:mysql://localhost:3306/test";
  Connection con=DriverManager.getConnection(uri,"root","griet");
  Statement st=con.createStatement();
  boolean rs=st.execute("INSERT INTO EventManager(evname,evdate,evtime,venu)VALUES('"+evename+"','"+evedate+"','"+evetime+"','"+evevenue+"')");
  if(rs) 
  {
  out.println("successfully updated......");
   
           }
  else{
      response.sendRedirect("updateevent.jsp");
  }
   %>