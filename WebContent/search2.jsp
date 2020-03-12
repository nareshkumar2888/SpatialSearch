<%@ page language="java" import="java.sql.*" %>
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
</div>
<div class="cleaner"></div>
</div>
<div id="content_outer">
<div id="content_inner">
<div id="sidebar">
<div class="sidebar_box"> <img src="images/sear.png" alt="" />
<div class="cleaner_h20"></div>


</div>
<div class="sidebar_box">
<h2></h2>
<img src="images/searchbook.jpeg" height="350" width="250" alt="" />
            <p></p>
            <p></p>            
			
          </div>
        </div>
        <div id="content">
          <h1>Search Books</h1>
          <marquee behavior="alternate"><font size="+1" color="#FF0000">www.chennaisunday.com</font></marquee>
		  <div class="cleaner_h20"></div>
          <h2></h2>		
		<form name="f2" action="userupdate.jsp" method="post" onsubmit="return reg()">
<table align="center" height="200" width="300">

<%
ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
String o=null,name1=null,isbn1=null,publisher1=null,author1=null,amount1=null;
Connection con1=null;
try
{
con1=databasecon.getconnection();
st1=con1.createStatement(); 
String sql11="select * from temp group by rno having count(*) >= 1";
rs1=st1.executeQuery(sql11);
while(rs1.next())
{
o=rs1.getString("rno");
//out.print(o);
name1=rs1.getString("name");
session.setAttribute("name1",name1);
//out.print(name1);
isbn1=rs1.getString("isbn");
//out.print(isbn1);
author1=rs1.getString("author");
//out.print(author1);
publisher1=rs1.getString("publisher");
//out.print(publisher1);
amount1=rs1.getString("amount");
session.setAttribute("amount1",amount1);
//out.print(amount1);

%>

 
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td colspan="2" align="center"><a href="amount.jsp?<%=o%>"><img src="f1.jsp?<%=o%>" height="150" width="200"></a></td></tr> 

<tr><td align="center" colspan="2"><a href="amount.jsp?<%=o%>"><font color="#CC3399" size="+2"><%=name1%></font></a></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#CC3399" size="+1">ISBN Number</font></td><td align="center"><font color="#CC3399" size="+1"><%=isbn1%></font></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#CC3399" size="+1">Author Name</font></td><td align="center"><font color="#CC3399" size="+1"><%=author1%></font></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#CC3399" size="+1">Publisher</font></td><td align="center"><font color="#CC3399" size="+1"><%=publisher1%></font></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>
<tr><td align="center"><font color="#CC3399" size="+1">Amount</font></td><td align="center"><font color="#CC3399" size="+1"><%=amount1%></font></td></tr>
<tr><td colspan="2" align="center" height="5" width="5"></td></tr>



<%
}
}
catch(Exception e)
{
out.print(e);
}


%>
	
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
