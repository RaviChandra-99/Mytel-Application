<%@ page import="java.sql.*"%>

<form method="post" action="./home.html">
<% String name=request.getParameter("name");%>
<% String mobilenumber= request.getParameter("number"); %>
<% String password= request.getParameter("password"); %>
<% String Connection= request.getParameter("option"); %>
<% String address= request.getParameter("address"); %>
<% 
try{
    Connection con;
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	con=DriverManager.getConnection("jdbc:mysql://localhost/mytell","root","Ravi2002");
	PreparedStatement ps=con.prepareStatement("insert into mytel values(?,?,?,?,?)");
    ps.setString(1,name);
    ps.setString(2,mobilenumber);
    ps.setString(3,password);
    ps.setString(4,Connection);
    ps.setString(5,address);
    ps.executeUpdate();
    response.sendRedirect("redirect.html");
}
catch(Exception e){
out.println(e);
}
%>