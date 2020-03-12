<%@ page import="java.sql.*"%>
<%@ page import="databaseconnection.*"%>

<%@ page import="java.text.ParseException.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%


String mid=request.getQueryString();
String a="PUBLISHED";
try
{
Connection conn=databasecon.getconnection();
PreparedStatement ps=conn.prepareStatement("update book set status='"+a+"' where rno='"+mid+"'");
ps.executeUpdate();
response.sendRedirect("books.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

</body>
</html>
