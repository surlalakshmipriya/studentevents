<%@ page language = "java" import= "java.sql.*" %>
<html><head><style>
body{background-image:url("images/6.jpg");background-size: 800px 330px;background-repeat: repeat-x};
.mg{padding: 14px 20px;background-color: #b7b7b8}
        </style></head>
    <body>
<br><br>
<%
     try{
	String uri="jdbc:mysql://localhost:3306/test";
  Connection con=DriverManager.getConnection(uri,"root","griet");
  
      String reg=(String)request.getParameter("regno");
	String new_pwd=(String)request.getParameter("new_pwd");
        String new_pwd2=(String)request.getParameter("confirm_pwd");
        String str="update number set pass='"+new_pwd+"' where regno='"+reg+"'"; 
        PreparedStatement st=con.prepareStatement(str);
  
       
	if(new_pwd.equals(new_pwd2))
        {
        
        st.executeUpdate(str);
//        
%>
<h1 align=center> Password changed Successfully <br> Now you have to use new Password </h1>
                        <a href="index.jsp">Login Here!!</a>

<%
       } else{
%>
	       <center>
			<h1 align=center> Passwords doesnot match!! Try again!! </h1>
		<a href="cpa1.jsp"> <h2>Back to Change Password </h2></a>
	      </center>
<%
	}
	} catch(Exception e)
	       {
		out.println(e);
	       }
%>
</body>
</html>
