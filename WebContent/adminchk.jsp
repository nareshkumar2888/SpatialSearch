<%@ page language="java" import="java.sql.*" %>
<%@ page import="databaseconnection.*"%>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
 <%
    	String name=request.getParameter("name");
		String pwd=request.getParameter("pass");
        		
		String a="admin";
		String b="admin";
		
		if(a.equals(name)&&b.equals(pwd))
		{
		
		 response.sendRedirect("adminfront.jsp");
		
		}
		else
		{
		
		response.sendRedirect("adminwrong.jsp");
		
		}
		
					
	  %>
	  
</body>
</html>
