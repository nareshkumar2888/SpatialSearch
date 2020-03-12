<%@ page import="java.sql.*" %>
<%@ page import="databaseconnection.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Xtreme</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field) {
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<script type="text/javascript">
	function reg()
	{
	var a = document.f2.name.value;
	if(a=="")
	{
	alert ("Enter Admin name");
	document.f2.name.focus();
	return false;
	}
	var d=document.f2.pass.value;
	if(d=="")
	{
	alert ("Enter Admin password");
	document.f2.pass.focus();
	return false;
	}
	}
	</script>
    

</head>
<body>
<div id="body_wrapper">
  <div id="main_wrapper">
    <div id="temmplatemo_header">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/spatia.png" alt="" />
	
      <div class="header_left">
	 
	  
        <div id="site_title"> <a href="index.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img width="70" height="70" src="images/search.png" alt="" /><span></span> </a> </div>
      </div>
      <div class="header_right">
        <div id="search_box">
          
          <div class="cleaner"></div>
        </div>
        <div id="menu">
          <ul>
            <li><a href="adminfront.jsp">Home</a></li>
			 <li><a href="index.html" class="current">Logout</a></li>
          </ul>
        </div>
        <!-- end of menu -->
      </div>
      <div class="cleaner"></div>
    </div>
    <!-- end of header -->
    <div id="content_outer">
      <div id="content_inner">
        <div id="sidebar">
          <div class="sidebar_box"><img src="images/sear.png" alt="" />
            <div class="cleaner_h20"></div>
            			
          </div>
          <div class="sidebar_box">
            <h2></h2>
            <img src="images/users.jpeg" alt="" />
			<p></p>
			<p></p>
         </div>
        </div>
        <div id="content">
          <h1>User List</h1>
		    <marquee behavior="alternate"><font size="+1" color="#FF0000">www.booklovers.com</font></marquee>          
		  <div class="cleaner_h20"></div>
          <h2></h2>				  
<form name="f2" action="adminchk.jsp" method="post" onsubmit="return reg()">
<table align="center" bgcolor="#333300" height="150" width="250">
<tr>
<td align="center">name</td>
<td align="center">Password</td>
<td align="center">Email</td>
<td align="center">Mobile</td>
<td align="center">DOB</td>
<td align="center">Address</td>

</tr>
<%
String sid=null;
String a=null;
String b=null;
String c=null;
String d=null;
String e=null;
String f=null;
String g=null;
String h=null;


Connection con=null;

try
{
con=databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select * from user");
ResultSet rs=ps.executeQuery();
while (rs.next())
{
sid=rs.getString(1);
a=rs.getString("name");
b=rs.getString("password");
c=rs.getString("email");
d=rs.getString("mobile");
e=rs.getString("dob");
f=rs.getString("address");

%>
<tr bgcolor="#FFCCCC">
<td><%=a%></td>
<td><%=b%></td>
<td><%=c%></td>
<td><%=d%></td>
<td><%=e%></td>
<td><%=f%></td>
<%


}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
</table>
</form> 
          <div class="content_two_col">
        </div>
       <div class="col_w300 float_r">      
        </div>
        <div class="cleaner"></div>
      </div>
      <!-- end of inner content -->
    </div>
    <!-- end of outer content -->
    <div id="content_bottom"></div>
    <div id="footer"></div>
    <!-- end of footer -->
    <div class="cleaner"></div>
  </div>
  <div class="cleaner"></div>
</div>
<!-- end of wrapper -->
</body>
</html>
