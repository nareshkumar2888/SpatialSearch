<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<% Blob image = null;
Connection con = null;
byte[ ] imgData = null ;
//String w=(String)session.getAttribute("w");
Statement stmt = null;
ResultSet rs = null;
String a=request.getQueryString();
System.out.println(a);
try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spatialsearch","root","admin");
stmt = con.createStatement();
rs = stmt.executeQuery("select book from books where no='"+a+"'");
while(rs.next())
{
image = rs.getBlob(1);
imgData = image.getBytes(1,(int)image.length());
} 
response.setContentType("image/jpeg");
OutputStream o = response.getOutputStream();
o.write(imgData);
o.flush();
o.close();
} catch (Exception e) {
out.println("Unable To Display image");
out.println("Image Display Error=" + e.getMessage());
return;
} 
finally 
{
try
{
stmt.close();
con.close();
}
catch(SQLException e)
{
e.printStackTrace();
}
}
%> 