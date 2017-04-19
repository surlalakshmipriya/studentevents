<%
if((session.getAttribute("userid")==null)||(session.getAttribute("userid")=="")){
%>
you are not logged in<br>
<a href="index.jsp">please login</a>
<%} else{
%>
welcome<%=session.getAttribute("userid")%>
<a href='logout.jsp'>logout</a>
<%
}
%>