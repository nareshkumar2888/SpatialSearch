<%@ page language="java" import="java.sql.*" %>
<%@ page import="databaseconnection.*" %>

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
            <li><a href="userfront.jsp">Home</a></li>
            <li><a href="search.jsp">Search</a></li>
             <li><a href="edit.jsp"   class="current">Edit</a></li>
			 <li><a href="index.html">Logout</a></li>
            
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
          <div class="sidebar_box"> <img src="images/sear.png" alt="" />
            <div class="cleaner_h20"></div>
            
			
			
			
			
			
			
			
			
			
          </div>
          <div class="sidebar_box">
            <h2></h2>
            <img src="images/edit.jpeg" width="250" height="300" alt="" />
			<p></p>
			<p></p>
            
			
          </div>
        </div>
        <div id="content">
          <h1>Edit Page</h1>
          <marquee behavior="alternate"><font size="+1" color="#FF0000">www.chennaisunday.com</font></marquee>
		  <div class="cleaner_h20"></div>
          <h2></h2>		
		  
		 <%


String idy=(String)session.getAttribute("sno");


String name=null,password=null, emailid=null,address=null,mobile=null;

Connection c4=null;
PreparedStatement p4=null;

try
{
c4=databasecon.getconnection();
p4=c4.prepareStatement("select * from user where sno='"+idy+"'");
ResultSet rs=p4.executeQuery();
while(rs.next())
{
name=rs.getString("name");
//out.print(name);
password=rs.getString("password");
//out.print(username);
emailid=rs.getString("email");
//out.print(emailid);
mobile=rs.getString("mobile");
//out.print(emailid);
address=rs.getString("address");
//out.print(address);

}

}

 catch(Exception e)
        {
            out.println(e.getMessage());
        }
       


%>

<form name="f2" action="userupdate.jsp" method="post" onsubmit="return reg()">

<table align="center" bgcolor="#333300" height="200" width="300">
 
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>

<tr><td align="center"><font color="#FFFFFF" size="+1">Name</font></td><td align="center"><input type="text" value="<%=name%>" name="name"></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Password</font></td><td align="center"><input type="text" value="<%=password%>" name="pass"></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Email ID</font></td><td align="center"><input type="text" value="<%=emailid%>" name="email"></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Mobile No</font></td><td align="center"><input value="<%=mobile%>" type="text" name="mobile"></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Address</font></td><td align="center"><input value="<%=address%>" type="text" name="address"></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center" colspan="2"><input type="submit" value="UPDATE" name="submit"></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
		
</table>
</form>

          
          
        <div class="content_two_col"><font color="#FFFFFF"></font> </div>
        <!-- end of content -->
       
        <!-- end of newsletter_box -->
       
        
		
		
		
		
		
		
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
