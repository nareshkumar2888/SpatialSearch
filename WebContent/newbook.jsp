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
	alert ("Enter Bookname name");
	document.f2.name.focus();
	return false;
	}
	var d=document.f2.pass.value;
	if(d=="")
	{
	alert ("Enter ISBN Number");
	document.f2.pass.focus();
	return false;
	}
	
	
	var b = document.f2.email.value;
	if(b=="")
	{
	alert ("Enter Author name");
	document.f2.email.focus();
	return false;
	}
	var c=document.f2.mobile.value;
	if(c=="")
	{
	alert ("Enter Publisher Name");
	document.f2.mobile.focus();
	return false;
	}
	
	
	
	var e = document.f2.dob.value;
	if(e=="")
	{
	alert ("Enter Amount For This Book");
	document.f2.dob.focus();
	return false;
	}
	var f=document.f2.address.value;
	if(f=="")
	{
	alert ("Enter Address");
	document.f2.address.focus();
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
            <li><a href="pubhome.jsp">Home</a></li>
            <li><a href="newbook.jsp" class="current">NewBook</a></li>
            <li><a href="status.jsp">Status</a></li>
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
            <img src="images/new.jpeg" width="250" height="300" alt="" />
			<p></p>
			<p></p>
          </div>
        </div>
        <div id="content">
          <h1>NewBook Upload</h1>
          	  <marquee behavior="alternate"><font size="+1" color="#FF0000">www.booklovers.com</font></marquee>	  
          <div class="cleaner_h20"></div>
          <h2></h2>
		  <% 
		  int no=(Integer)session.getAttribute("n");
		 
		  %>
		  
		  

		  
		  
		  
		  
		  
		   <form name="f2" action="newbook1.jsp" method="post" onsubmit="return reg()">
<table align="center" bgcolor="#333300" height="300" width="350">
<tr><td colspan="2" align="center" height="10" width="10"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">PublisherID</font></td><td align="center"><input type="text" name="rno" value="<%=(int)(Math.random()*10000)%>"></td></tr>



<tr><td colspan="2" align="center" height="10" width="10"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">PublisherID</font></td><td align="center"><input type="text" name="idno" value="<%=no%>"></td></tr>


<tr><td colspan="2" align="center" height="5" width="5"></td></tr>

<tr><td align="center"><font color="#FFFFFF" size="+1">BookName</font></td><td align="center"><input type="text" name="name"></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>


<tr><td align="center"><font color="#FFFFFF" size="+1">ISBN Number</font></td><td align="center"><input type="text" name="pass"></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Author Name</font></td><td align="center"><input type="text" name="email"></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Publisher</font></td><td align="center"><input type="text" name="mobile"></td></tr>

<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Book Key</font></td><td align="center"><input type="text" name="key"></td></tr>




<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Amount</font></td><td align="center"><input type="text" name="dob"></td></tr>


<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Address</font></td><td align="center"><input type="text" name="address"></td></tr>




<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr> 
     <td align="center"><font color="#FFFFFF" size="+1">Upload 
     File</strong></font></td>
                <td align="center"><input type="file" name="file"></td>
              </tr>


<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center" colspan="2"><input type="submit" value="Submit" name="submit">&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" name="reset"></td></tr>
		<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
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
