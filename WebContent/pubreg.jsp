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
<script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com 

</script>

<script type="text/javascript">
	function reg()
	{
	var a = document.f2.name.value;
	if(a=="")
	{
	alert ("Enter name");
	document.f2.name.focus();
	return false;
	}
	
	
	if(document.f2.degree.selectedIndex==0)
      {
       alert("Select degree ");
        return false;
       }
	
	
	
	
	if(document.f2.subject.selectedIndex==0)
      {
       alert("Select Specialization ");
        return false;
       }
	
	
	var c = document.f2.email.value;
	if(c=="")
	{
	alert ("Enter Email");
	document.f2.email.focus();
	return false;
	}
	
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
	var z=emailfilter.test(document.f2.email.value);
	if(z==false)
	{
	alert(" Enter valid Mail ID");
	document.f2.email.select();
	return false;
	}
	
	
	
	var d=document.f2.mobile.value;
	if(d=="")
	{
	alert ("Enter Mobile Number");
	document.f2.mobile.focus();
	return false;
	}
	
	var e=document.f2.dob.value;
	if(e=="")
	{
	alert ("Enter Datr of Birth");
	document.f2.dob.focus();
	return false;
	}
	
	var f=document.f2.address.value;
	if(f=="")
	{
	alert ("Enter Address Here");
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
            <li><a href="index.html">Home</a></li>
            <li><a href="user.jsp">User</a></li>
            <li><a href="publisher.jsp" class="current">Publishers</a></li>
            <li><a href="admin.jsp">Admin</a></li>
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
           
            <img src="images/publisherreg.jpeg" height="250" width="250" alt="" />
			<p></p>
			<p></p>
			
            
			
          </div>
        </div>
        <div id="content">
          <h1>Registration Page</h1>
		    <marquee behavior="alternate"><font size="+1" color="#FF0000">www.booklovers.com</font></marquee>
          
		  <div class="cleaner_h20"></div>
          <h2></h2>		
		  
		 <form name="f2" action="pubreg1.jsp" method="post" onsubmit="return reg()">
<table align="center" bgcolor="#333300" height="300" width="350">
<tr><td colspan="2" align="center" height="10" width="10"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Publisher Name</font></td><td align="center"><input type="text" name="name"></td></tr>

<tr><td colspan="2" align="center" height="10" width="10"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Password</font></td><td align="center"><input type="password" name="pass"></td></tr>


<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Degree</font></td><td align="center">
                      <select name="degree">
                      <option value="0">--Select--</option>
                      <option value="ME/M.Tech">ME/M.Tech</option>
                      <option value="P.hd">P.hd</option>
					  <option value="M.Phil">M.Phil</option>
                      <option value="MA/MBA">MA/MBA</option>
					  <option value="MCA/Msc">MCA/Msc</option>
                      </select>
					</td></tr>


<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Specialization</font></td><td align="center">
<select name="subject">
                      <option value="0">--Select--</option>
                      <option value="Chemistry">Chemistry</option>
                      <option value="Physics">Physics</option>
					  <option value="Maths">Maths</option>
                      <option value="History">History</option>
					  <option value="Computer">Computer</option>
					  <option value="English">English</option>
					  <option value="Networking">Networking</option>
					  <option value="Medicines">Medicines</option>
					  <option value="Mechanical">Mechanical</option>
					  <option value="Civil">Civil</option>
					  <option value="Electronics">Electronics</option>
					  <option value="Electrical">Electrical</option>
					  </select>

</td></tr>

<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Email Id</font></td><td align="center"><input type="text" name="email"></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Mobile No</font></td><td align="center"><input type="text" name="mobile"></td></tr><tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Date of Birth</font></td><td align="center">&nbsp;&nbsp;&nbsp;<input name="dob" type="text" id="demo1" maxlength="25" size="20"><a href="javascript:NewCal('demo1','ddmmmyyyy')"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td></tr><tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Address</font></td><td align="center"><input type="text" name="address"></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center" colspan="2"><input type="submit" value="Next >>" name="submit">&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" name="reset"></td></tr>
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
    <div id="footer"></div>
    <!-- end of footer -->
    <div class="cleaner"></div>
  </div>
  <div class="cleaner"></div>
</div>
<!-- end of wrapper -->
</body>
</html>
