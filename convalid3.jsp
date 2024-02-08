<%@ page import="java.sql.*"%>

<%   String mobilenr=(String)session.getAttribute("MN"); %>
<%   String passw=(String)session.getAttribute("PASS"); %>
< % String conh="Postpaid"; %>
<%
try{
    Connection con;
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	con=DriverManager.getConnection("jdbc:mysql://localhost/mytell","root","Ravi2002");
    Statement st=con.createStatement();
    PreparedStatement ps=con.prepareStatement("update mytel set Connection=(?) where MobileNumber=(?) and Password=(?)");
    ps.setString(1,"Postpaid");
    ps.setString(2,mobilenr);
    ps.setString(3,passw);
    ps.executeUpdate();
    response.sendRedirect("con6.html");
}
catch(Exception e){
out.println(e);
}
%>
    
