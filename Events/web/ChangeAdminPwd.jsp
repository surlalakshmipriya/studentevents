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
  Statement st=con.createStatement();
       
	String old_pwd=(String)request.getParameter("old_pwd");
	String new_pwd=(String)request.getParameter("new_pwd");

	String uid="pk";
	String sql="select pass from ad where username=? and pass=? ";	

	PreparedStatement pst=con.prepareStatement(sql);
	pst.setString(1,uid);
	pst.setString(2,old_pwd);

	//System.out.println(sql);

	ResultSet rs=pst.executeQuery();
	if(rs.next()==false)
	{
%>
	       <center>
			<h1 align=center> Invalid password <br> Please enter Correct Password </h1>
		<a href="cpa.jsp"> <h2>Back to Change Password </h2></a>
	      </center>
<%
	}
	else
	{
		sql="update ad set pass=? where username=? ";
		pst=con.prepareStatement(sql);
		     pst.setString(1,new_pwd);
		     pst.setString(2,uid);
		int num=pst.executeUpdate();
	if(num>0)
	{
%>
			<h1 align=center> Password changed Successfully <br> Now you have to use new Password </h1>
<%
			session.putValue("PWD",new_pwd);
	}
	else
	{
%>
	       <center>
	     	<h1> Password Not Changed </h1>   <p>
		<a href="change password.html"> <h2>Back to Change Password </h2></a>
	      </center>
<%
	}
	}
	}catch(Exception e)
	       {
		out.println(e);
	       }
%>
</body>
</html>>


