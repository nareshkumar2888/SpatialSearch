<%@ page language="java" import="java.sql.*" %>
<%@ page import="databaseconnection.*"%>

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
	
		String s="ALLOWED";
		try
		{
		Connection conn=databasecon.getconnection();
        Statement stmt = conn.createStatement();
		ResultSet rs1=stmt.executeQuery("select * from publisher where name='"+username1+"' AND password='"+password1+"'");
		while(rs1.next())
		{
		int n=rs1.getInt("sno");
		out.print(n);
		String st1=rs1.getString("status");
		
		session.setAttribute("n",n);
		
		if(st1.equals(s))
		{
		response.sendRedirect("pubhome.jsp");
		}
		else
		{
		response.sendRedirect("waitingpub.jsp");
		}
		
		}
		response.sendRedirect("nullexpert.jsp");
		
		
	
		//}
		}
		catch(Exception e)
		{
		out.println(e);
		}
		
		//}
		
		
			
	  %>
	  
</body>
</html>
