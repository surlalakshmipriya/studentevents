<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
   String usertype=request.getParameter("loginType");
   String userNo=request.getParameter("no");
   String pass=request.getParameter("pass");
   String uName=request.getParameter("name");
   String gender=request.getParameter("gender");
   String day=request.getParameter("day");
   String month=request.getParameter("month");
   String year=request.getParameter("year");
   String cou=request.getParameter("cou");
   String jYear=request.getParameter("joinYear");
   String pYear=request.getParameter("passYear");
   String conno=request.getParameter("conno");
   String ei=request.getParameter("ei");
   String qus=request.getParameter("qus");
   String ans=request.getParameter("ans");
   Class.forName("com.mysql.jdbc.Driver");
  String uri="jdbc:mysql://localhost:3306/test";
  Connection con=DriverManager.getConnection(uri,"root","griet");
  Statement st=con.createStatement();
  boolean rs=st.execute("INSERT INTO number(registertype,regno,pass,name,gender,date,month,year,course,yer,yerofpaa,contactno,email,secqstn,ans)VALUES('"+usertype+"','"+userNo+"','"+pass+"','"+uName+"','"+gender+"','"+day+"','"+month+"','"+year+"','"+cou+"','"+jYear+"','"+pYear+"','"+conno+"','"+ei+"','"+qus+"','"+ans+"')");
  if(rs){
  response.sendRedirect("welcome.jsp");
  }else{
   response.sendRedirect("reg.jsp");
   }
   %>