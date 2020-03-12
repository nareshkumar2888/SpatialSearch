<%@ page import="java.sql.*"%>
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
	alert ("Enter Publisher name");
	document.f2.name.focus();
	return false;
	}
	var d=document.f2.pass.value;
	if(d=="")
	{
	alert ("Enter Publisher password");
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
            <li><a href="pubhome.jsp">Publisher</a></li>
            <li><a href="newbook.jsp">NewBook</a></li>
            <li><a href="status.jsp"  class="current">Status</a></li>
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
            <img src="images/status.jpeg" width="250" height="200" alt="" />
			<p></p>
			<p></p>
          </div>
        </div>
        <div id="content">
          <h1>Publishers Home</h1>
          		  <marquee behavior="alternate"><font size="+1" color="#FF0000">www.chennaisunday.com</font></marquee>  
          <div class="cleaner_h20"></div>
          <h2></h2>

<%

int no=(Integer)session.getAttribute("n");


Connection con10=null;
Statement st10=null;
ResultSet rs10=null;
String ff=null;
try
{
con10=databasecon.getconnection();
st10=con10.createStatement();
rs10=st10.executeQuery("select status from publisher");
while(rs10.next())
{
 ff=rs10.getString(1);
}
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>
		  
<form name="f2" action="pubchk.jsp" method="post" onsubmit="return reg()">
<table align="center" bgcolor="#333300" height="200" width="300">

<tr><td align="center"><font color="#FFFFFF" size="+1">You are &nbsp;<%=ff%>&nbsp; For Book Publishing</font></td></tr>
	
</table>
</form> 

		  
		  
          
          <div class="content_two_col">
           
        </div>
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
    <div id="footer"> </div>
    <!-- end of footer -->
    <div class="cleaner"></div>
  </div>
  <div class="cleaner"></div>
</div>
<!-- end of wrapper -->
</body>
</html>
