<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.io.*"%>
<%
String uname=request.getParameter("u1");
String pwd=request.getParameter("p1");
String uri="jdbc:mysql://localhost/3306/test";
Connection con=DriverManager.getConnection(uri,"root"," ");
Statement st=con.createStatement();
   ResultSet rs;
   rs=st.executeQuery("select * from member1 where uname='"+uname+"'and pass='"+pwd+"'");
     if(rs.next()) 
    {
session.setAttribute("uname",uname);
response.sendRedirect("welcome.jsp");
                                                                             
    }
else{
out.println("login failed!! <a href="student.jsp">Tryagain</a>");
            }
                                   %>