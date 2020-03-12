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
	
	
	if(document.f2.bank.selectedIndex==0)
      {
      alert("Select Bank ");
      return false;
      }
		
	var d=document.f2.pin.value;
	if(d=="")
	{
	alert ("Enter PIN Number");
	document.f2.pin.focus();
	return false;
	}
	
	
	if(d.length!=12)
	{
	alert ("Enter valid 12 Digit BANK number");
	document.f2.pin.focus();
	return false;
	}
	
	
	
	
	
	var e=document.f2.pass.value;
	if(e=="")
	{
	alert ("Enter Password");
	document.f2.pass.focus();
	return false;
	}
	
	var f=document.f2.amt.value;
	if(f=="")
	{
	alert ("Enter Amount Here");
	document.f2.amt.focus();
	return false;
	}
	
	var totals=document.f2.total.value;
	if(totals!=f)
	{
	alert ("Enter correct Rubiees same as Amount Box  ");
	document.f2.amt.select();
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
            <li><a href="delete2.jsp">Home</a></li>
            <li><a href="delete.jsp"    class="current">Search</a></li>
            <li><a href="delete1.jsp">Logout</a></li>
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
            <p></p>
            <p></p>
            
            <img src="images/cre.jpeg" alt="" height="250" width="250" />
			
          </div>
        </div>
        <div id="content">
          <h1>Amount Paid Here</h1>
          <marquee behavior="alternate"><font size="+1" color="#FF0000">www.chennaisunday.com</font></marquee>
		  <div class="cleaner_h20"></div>
          <h2></h2>
		  
<%
String id=request.getQueryString();
session.setAttribute("id",id);

String name1=(String)session.getAttribute("name1");

String amount1=(String)session.getAttribute("amount1");

%>		  
		  
<form name="f2" action="download.jsp" method="post" onsubmit="return reg()">
<table align="center" bgcolor="#333300" height="300" width="350">
<tr><td colspan="2" align="center" height="10" width="10"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Book Name</font></td><td align="center"><input type="text" value="<%=name1%>" name="name"></td></tr>

<tr><td colspan="2" height="5"></td></tr>

<tr><td align="center"><font color="#FFFFFF" size="+1">The Amount: RS.</font></td> <td align="center"><input type="text" value="<%=amount1%>" name="total" ></td></tr>

<tr><td colspan="2" height="5"></td></tr>

<tr><td align="center"><font color="#FFFFFF" size="+1">Select Bank</font></td> <td align="center"> <select name="bank">
<option value="select">--Select Bank--</option>
<option value="IndianBank">IndianBank</option>
<option value="IndianOverseasBank">IndianOverseasBank</option>
<option value="HDFC">HDFC</option>
<option value="ICICI">ICICI</option>
<option value="StateBank">StateBank</option>
</select> </td></tr>

<tr><td colspan="2" height="5"></td></tr>

<tr><td align="center"><font color="#FFFFFF" size="+1">Bank PIN Number</font></td> <td align="center"> <input type="text" name="pin"> </td></tr>

<tr><td colspan="2" height="5"></td></tr>

<tr><td align="center"><font color="#FFFFFF" size="+1">Password</font></td> <td align="center"> <input type="password" name="pass"> </font></td></tr>

<tr><td colspan="2" height="5"></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+1">Amount Enter</font></td> <td align="center"> <input type="text" name="amt"> </font></td></tr>




<tr><td colspan="2" height="5"></td></tr>
<tr><td colspan="2" align="center"></td></tr>
<tr><td height="20"></td><td height="20"></td></tr>

<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center" colspan="2"><input type="submit" value="DOWNLOAD" name="submit">&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" name="reset"></td></tr>
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
