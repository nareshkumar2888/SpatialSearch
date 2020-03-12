<%@ page language="java" import="java.sql.*" %>
<%@ page import="databaseconnection.*" %>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">


</head>

<body>
 <%
    	String username1=null,uname1=null,utype=null;
		String password1=null,pword1=null,utype1=null;
		username1=request.getParameter("name");
		//out.print(username1);
		password1=request.getParameter("pass");
		//out.print(password1);
	
		String name=null,sno=null; 
		try
		{
		Connection conn=databasecon.getconnection();
        Statement stmt = conn.createStatement();
		ResultSet rs1=stmt.executeQuery("select * from user where name='"+username1+"' AND password='"+password1+"'");
		if(rs1.next())
		{
		
		name=rs1.getString("name");
		session.setAttribute("name",name);
		sno=rs1.getString("sno");
		
		session.setAttribute("sno",sno);
		response.sendRedirect("userfront.jsp");
		}
		else
		{
		response.sendRedirect("userwrong.jsp");
		}
		}
		catch(Exception e)
		{
		out.println(e);
		}
					
	  %>
	  
</body>
</html>
