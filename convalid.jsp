<%@ page import="java.sql.*"%>


<%   String mobilenumber=(String)session.getAttribute("MN"); %>
<%   String pass=(String)session.getAttribute("PASS"); %>
<% String l="Prepaid"; %>
<%
try{
    Connection con;
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	con=DriverManager.getConnection("jdbc:mysql://localhost/mytell","root","Ravi2002");
    Statement st=con.createStatement();
    PreparedStatement ps=con.prepareStatement("Select Connection from mytel where MobileNumber=(?) and Password=(?)");
    ps.setString(1,mobilenumber);
    ps.setString(2,pass);
    ResultSet rs = ps.executeQuery();
    if (rs.next()) {
        String mq = rs.getString(1);
      if (mq.equals(l)) {
        response.sendRedirect("con2.html");
    }
    else{
        response.sendRedirect("con3.html");
    }
}
}
catch(Exception e){
out.println(e);
}


%>
