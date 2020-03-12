<%@ page import="java.sql.*,databaseconnection.*" %>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
Connection con2=null;
try
{
con2=databasecon.getconnection();
PreparedStatement ps=con2.prepareStatement("delete from temp");
ps.executeUpdate();
response.sendRedirect("search.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
</body>
</html>
