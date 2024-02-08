<%@ page import="java.sql.*"%>


<% String pp= request.getParameter("op"); %>
<% String a="Package 1";%>
<% String b="Package 2";%>
<% String c="Package 3";%>

<% 
try{
if (pp.equals(a)) {
    response.sendRedirect("mb3.html");
}
else if(pp.equals(b)){
    response.sendRedirect("mb4.html");
}
else{
    response.sendRedirect("mb5.html");
}
}
catch(Exception e){
out.println(e);
}


%>