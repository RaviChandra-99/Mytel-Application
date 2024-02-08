<%@ page import="java.sql.*"%>


<%   String mobilenumber=(String)session.getAttribute("MN"); %>

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
        <form method="get" action="./valid4.jsp">
        <label>
            MobileNumber 
        </label>
        <p style="display: inline-block; margin-left: 45px;"><%= mobilenumber %></p>
        <br>
        <br>
        <label>
            Talk time Balance
        </label>
        <p style="display: inline-block; margin-left: 45px;">UnLimited</p>
        <br>
        <br>
        
        <label>
            Data Balance 
        </label>
        <p style="display: inline-block; margin-left: 65px;">4 GB Per Day</p>
        <br>
        <br>
        
        <label>
            SMS Balanace
        </label>
        <p style="display: inline-block; margin-left: 65px;">UnLimited</p>
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