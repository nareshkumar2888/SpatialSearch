<%@ page import="java.sql.*" %>
<%@ page import="databaseconnection.*"%>

<%@ page import="java.text.ParseException.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
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
            <li><a href="index.html">Logout</a></li>          </ul>
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
          <h1>Registration Page</h1>
            <marquee behavior="alternate"><font size="+1" color="#FF0000">www.chennaisunday.com</font></marquee>
		  <div class="cleaner_h20"></div>
          <h2></h2>		
		  
		  <%
		  
String rno=request.getParameter("rno");
	session.setAttribute("rno",rno);	  
String no=request.getParameter("idno");
//out.print(no);
String bookname=request.getParameter("name");
//out.print(bookname);
String isbnno=request.getParameter("pass");
//out.print(isbnno);
String authorname=request.getParameter("email");
//out.print(authorname);
String publisher=request.getParameter("mobile");
//out.print(publisher);
String key=request.getParameter("key");
String bookkey=key+publisher+authorname+bookname;
//out.print(bookkey);

//out.print(key);
String amount=request.getParameter("dob");
//out.print(amount);
String address=request.getParameter("address");
//out.print(address);

String f=request.getParameter("file");
String path="D:\\apache-tomcat-6.0.18\\webapps\\Spatialsearch\\file\\";
String fil=path+f;

FileInputStream fis = null;
File image = new File(fil);


String status="BOOK UPLOADED";			
Connection con=null;
PreparedStatement ps=null;


try
{
con=databasecon.getconnection();
ps=con.prepareStatement ("insert into book (rno,pubno,bookname,isbn,author,publisher,key1,amount,address,status,book,key2) values (?,?,?,?,?,?,?,?,?,?,?,?)");

ps.setString(1,rno);
ps.setString(2,no);
ps.setString(3,bookname);
ps.setString(4,isbnno);
ps.setString(5,authorname);
ps.setString(6,publisher);
ps.setString(7,key);
ps.setString(8,amount);
ps.setString(9,address);
ps.setString(10,status);
fis=new FileInputStream(image);
ps.setBinaryStream(11,(InputStream)fis,(int)(image.length()));
ps.setString(12,bookkey);

int x=ps.executeUpdate();           
}
catch(Exception e)
{
out.println(e.getMessage());
}
/*

Connection con10=null;
Statement st10=null;
ResultSet rs10=null;
String ff1=null;
try
{
con10=databasecon.getconnection();
st10=con10.createStatement();
rs10=st10.executeQuery("select max(pubno) from book");
while(rs10.next())
{
 ff1=rs10.getString(1);
}
}
catch(Exception e)
{
out.println(e.getMessage());
}
session.setAttribute("ff1",ff1);
*/
 
%>
<form name="f2" action="newbook2.jsp" ENCTYPE="multipart/form-data" method="post" onsubmit="return reg()">
		<table align="center" bgcolor="#333300"  width="350">
		<tr>
<td align="center"><font color="#FFFFFF" size="+1">Book Upload</font></td>
<td><INPUT NAME="file" TYPE="file"></td>
</tr>

<tr><td align="center" colspan="2"><input type="submit" value="SUBMIT" name="submit"></td></tr>
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
