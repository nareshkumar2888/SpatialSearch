<%@ page  import="java.sql.*"%>
<%@ page import="databaseconnection.*"%>

<%
String search2=request.getParameter("search1");
out.print(search2);





ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;
String rno=null,name=null,isbn=null,publisher=null,author=null,amount=null;
Connection con=null;
try
{
con=databasecon.getconnection();
st=con.createStatement(); 
String sql1="select * from book where soundex(key1) like soundex('"+'%'+search2+'%'+ "')";
//String sql11="select * from book where key1 like '"+'%'+search2+'%'+ "'";
rs=st.executeQuery(sql1);
while(rs.next())
{
rno=rs.getString("rno");
out.print(rno);
out.print("))))))))");
name=rs.getString("bookname");
//out.print(name);
isbn=rs.getString("isbn");
//out.print(isbn);
author=rs.getString("author");
//out.print(author);
publisher=rs.getString("publisher");
//out.print(publisher);
amount=rs.getString("amount");
//out.print(amount);
//out.print("___________________\n");	




Connection con2=null;
PreparedStatement ps2=null;
try
{
con2=databasecon.getconnection();
ps=con2.prepareStatement ("insert into temp(rno,name,isbn,author,publisher,amount) values (?,?,?,?,?,?)");
ps.setString(1,rno);
ps.setString(2,name);
ps.setString(3,isbn);
ps.setString(4,author);
ps.setString(5,publisher);
ps.setString(6,amount);
int x=ps.executeUpdate();
}
catch(Exception e)
{
out.println(e.getMessage());
}


}
}
catch(Exception e)
{
out.print(e);
}



ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
String rno1=null,name1=null,isbn1=null,publisher1=null,author1=null,amount1=null;
Connection con1=null;
try
{
con1=databasecon.getconnection();
st1=con1.createStatement(); 
String sql11="select * from book where key2 like '"+'%'+search2+'%'+ "'";
rs1=st1.executeQuery(sql11);
while(rs1.next())
{
rno1=rs1.getString("rno");
out.print(rno1);
name1=rs1.getString("bookname");
//out.print(name1);
isbn1=rs1.getString("isbn");
//out.print(isbn1);
author1=rs1.getString("author");
//out.print(author1);
publisher1=rs1.getString("publisher");
//out.print(publisher1);
amount1=rs1.getString("amount");
//out.print(amount1);
out.print("___________________\n");	

Connection con3=null;
PreparedStatement ps3=null;
try
{
con3=databasecon.getconnection();
ps3=con3.prepareStatement ("insert into temp (rno,name,isbn,author,publisher,amount) values (?,?,?,?,?,?)");
ps3.setString(1,rno1);
ps3.setString(2,name1);
ps3.setString(3,isbn1);
ps3.setString(4,author1);
ps3.setString(5,publisher1);
ps3.setString(6,amount1);
int x1=ps3.executeUpdate();
}
catch(Exception e)
{
out.println(e.getMessage());
}



}
}
catch(Exception e)
{
out.print(e);
}

response.sendRedirect("search2.jsp");



%>
