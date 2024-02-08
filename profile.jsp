<%@ page import="java.sql.*"%>


<%   String mobilenumber=(String)session.getAttribute("MN"); %>
<%   String pass=(String)session.getAttribute("PASS"); %>
<% String j="Postpaid";%>
<%

    Connection con;
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	con=DriverManager.getConnection("jdbc:mysql://localhost/mytell","root","Ravi2002");
    Statement st=con.createStatement();
    PreparedStatement ps=con.prepareStatement("Select * from mytel where MobileNumber=(?) and Password=(?)");
    ps.setString(1,mobilenumber);
    ps.setString(2,pass);
    ResultSet rs = ps.executeQuery();
    rs.next();
    String name=rs.getString(1);
    String cc=rs.getString(4);
    String adds=rs.getString(5);

%>
   
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .aa{
            color: aliceblue;
             background-color: rgb(32, 70, 85);   
          }
          .bb{
            padding: 40px;
           margin-left:auto;
      margin-right: auto;
      width: 550px;
      margin-bottom: auto;
      color: antiquewhite;
      font-size: large;
          }
          a:link {
            color: red;
        text-decoration: none;
        }
        a:hover {
        color: red;
        background-color: transparent;
        text-decoration: underline;
        }
        ul li{
            list-style: none;
            display: inline-block;
        }
    </style>
</head>
<body style="background-image: url(pic6.jpeg);
background-repeat: no-repeat;
background-attachment: fixed;
background-size: cover;">
    <div class="aa">
    <h1 style="text-align: center;  padding: 15px;">WELCOME TO MYTEL</h1>
      
      
    <ul>
        <li style="margin-left: 35px;">
            Welcome user
        </li>
        <li style="margin-left:35%;">
            Know Your Balanace
        </li>
        <li style="margin-left: 90%;">
            <a href="login.html" style="color: aliceblue;">LogOut</a>
        </li>
    </ul>
    </div>    
    <div class="bb">
        
            <label>
                UserName 
            </label>
            <p style="display: inline-block; margin-left: 85px;"><%= name %></p>
            <br>
            <br>
        <label>
            MobileNumber 
        </label>
        <p style="display: inline-block; margin-left: 49px;"><%= mobilenumber %></p>
        <br>
        <br> <label>
            Connection
        </label>
        <p style="display: inline-block; margin-left: 85px;"><%= cc %></p>
        <br>
        <br>
        
        <label>
           Address
        </label>
        <p style="display: inline-block; margin-left: 115px;"><%= adds %></p>
        <br>
        <br>
        <br>
        <div>
            <ul>
                <li style="margin-left:40%;">
                    <a href="home.html" style="color: aliceblue; background-color: black; padding: 10px;">Back</a>
    
                </li>
                <li style="margin-left:8%;">
                    <a href="home.html" style="color: aliceblue;  background-color: black; padding: 10px;">Home</a>
                </li>
            </ul>
        </div>
   
</body>
</html>
