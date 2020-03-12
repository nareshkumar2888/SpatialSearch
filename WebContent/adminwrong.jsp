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
            <li><a href="index.html">Home</a></li>
            <li><a href="user.jsp">User</a></li>
             <li><a href="publisher.jsp">Publishers</a></li>
			 <li><a href="admin.jsp" class="current">Admin</a></li>
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
            <img src="images/adminlogin.jpeg" height="350" width="250" alt="" />
			<p></p>
			<p></p>
			
            
			
          </div>
        </div>
        <div id="content">
          <h1>Admin Page</h1>
          <marquee behavior="alternate"><font size="+1" color="#FF0000">www.chennaisunday.com</font></marquee>
		  <div class="cleaner_h20"></div>
          <h2></h2>		
		  
		 
		  
		 <form name="f2" action="adminchk.jsp" method="post" onsubmit="return reg()">
<table align="center" bgcolor="#333300" height="200" width="300">

<tr><td colspan="2" align="center" height="10" width="10"></td></tr>

<tr><td align="center"><font color="#FFFFFF" size="+1">Admin Name</font></td><td align="center"><input type="text" name="name"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Password</font></td><td align="center"><input type="password" name="pass"></td></tr>
		  <tr><td align="center" colspan="2"><input type="submit" value="Submit" name="submit">&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" name="reset"></td></tr>
	
<tr><td colspan="2" align="center"><font color="#FF0000" size="+1">Wrong UserName and Password</font></td></tr>
	
	
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
    <div id="footer"></div>
    <!-- end of footer -->
    <div class="cleaner"></div>
  </div>
  <div class="cleaner"></div>
</div>
<!-- end of wrapper -->
</body>
</html>
