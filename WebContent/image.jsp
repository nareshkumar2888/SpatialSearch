<%@ page import="java.sql.*"%>
<%@ page import="databaseconnection.*"%>

<%@ page import="java.io.*"%>

<%
	Blob image = null;

	Connection con = null;

	byte[] imgData = null;
	//String w=(String)session.getAttribute("w");
	Statement st1 = null;
	Connection con1 = null;
	ResultSet rs = null;
	String a = request.getQueryString();
	System.out.println(a);
	try {

		con1 = databasecon.getconnection();
		st1 = con1.createStatement();
		rs = st1.executeQuery("select book from books where no='" + a + "'");

		while (rs.next()) {

			image = rs.getBlob(1);

			imgData = image.getBytes(1, (int) image.length());

		}

		response.setContentType("image/gif");

		OutputStream o = response.getOutputStream();

		o.write(imgData);

		o.flush();

		o.close();

	} catch (Exception e) {

		out.println("Unable To Display image");

		out.println("Image Display Error=" + e.getMessage());

		return;

	} finally {

		try {

			st1.close();

			con.close();

		} catch (SQLException e) {

			e.printStackTrace();

		}

	}
%>
