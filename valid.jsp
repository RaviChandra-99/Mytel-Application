<%@ page import="java.sql.*"%>


<% String mobilenumber= request.getParameter("aa"); %>
<% String pass= request.getParameter("bb"); %>
<%
try{
    Connection con;
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	con=DriverManager.getConnection("jdbc:mysql://localhost/mytell","root","Ravi2002");
    Statement st=con.createStatement();
    PreparedStatement ps=con.prepareStatement("Select MobileNumber,Password from mytel where MobileNumber=(?) and Password=(?)");
    ps.setString(1,mobilenumber);
    ps.setString(2,pass);
    ResultSet rs = ps.executeQuery();
    if (rs.next()) {
        String mm = rs.getString(1);
        String nn = rs.getString(2);
        
        if (mm.equals(mobilenumber) && nn.equals(pass)) {
            session.setAttribute("MN",mobilenumber);
            session.setAttribute("PASS",pass);
            response.sendRedirect("home.html");
        } else {
            response.sendRedirect("errorpage1.html");
        }
    } else {
        response.sendRedirect("errorpage1.html");
    }
    
    con.close();
} catch (Exception e) {
    out.println(e);
}
%>