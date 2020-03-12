<%@ page import="java.sql.*" errorPage="" %>
<%@ page import="databaseconnection.*"%>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>

<body>
<% 
String n1=request.getParameter("name");
//out.print(n1);
String un1=request.getParameter("pass");
//out.print(un1);
String e1=request.getParameter("email");
//out.print(e1);
String emailid=request.getParameter("mobile");
//out.print(emailid);
String address=request.getParameter("address");
//out.print(cy);
String idy=(String)session.getAttribute("sno");


Connection conn3=null;
PreparedStatement pstmt1=null;
try
{
conn3=databasecon.getconnection();
pstmt1 = conn3.prepareStatement ("update user set name='"+n1+"',password='"+un1+"',email='"+emailid+"',mobile='"+emailid+"',address='"+address+"' where sno='"+idy+"'");
int x=pstmt1.executeUpdate();
response.sendRedirect("userfront.jsp");
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>
</body>
</html>
