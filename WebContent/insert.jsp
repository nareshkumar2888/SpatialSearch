<%@ page import="java.sql.*"%>
<%@ page import="databaseconnection.*"%>

<%@ page import="java.text.ParseException.*"%>
<%@page import="java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%><html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>


 <%
		  
String name=request.getParameter("name");
//out.print(name);
String pass=request.getParameter("pass");
//out.print(pass);
String email=request.getParameter("email");
//out.print(email);
String mobile=request.getParameter("mobile");
//out.print(mobile);
String dob=request.getParameter("dob");
//out.print(dob);
String address=request.getParameter("address");
//out.print(address);

		
Connection con=null;
PreparedStatement ps=null;


try
{
con=databasecon.getconnection();
ps=con.prepareStatement ("insert into user (name,password,email,mobile,dob,address) values (?,?,?,?,?,?)");

ps.setString(1,name);
ps.setString(2,pass);
ps.setString(3,email);
ps.setString(4,mobile);
ps.setString(5,dob);
ps.setString(6,address);
int x=ps.executeUpdate();  
response.sendRedirect("index.html");         
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>


</body>
</html>
