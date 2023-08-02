<%-- 
    Document   : file-list
    Created on : 29 Nov, 2022, 8:09:16 PM
    Author     : Viranth Dharmalingam
--%>

<%@page import="com.servlet.db.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File Upload Lists</title>
        <style type="text/css">
       * {
            margin: 0;
            padding: 0
        }
        .tabs {
        overflow: hidden;
        background-image:linear-gradient(black,black);
        }

.tabs a {
    float: left;
    color: white;
    text-align: center;
    padding: 20px 25px;
    text-decoration: none;
    font-size: 17px;
    margin-left:2%;
  font-family: "Malgun Gothic", "Malgun Gothic";
  
}
.reg{
    backface-color:linear-gradient(180deg,rgb(133,11,50),rgba(115,18,132,255));
}

.tabs a:hover {
    background-color: black;
    color: rgb(133,11,50);
}
        * {
            margin: 0;
            padding: 0
        }
        
        body {
            background: url("connection.jpg");
            background-size: 280%;
            background-position: -400px 0px;
        }
        
        div.main {
            width: 400px;
            margin: 100px auto 0px auto;
        }
        
        h2 {
            text-align: center;
            padding: 20px;
            font-family: sans-serif;
        }
        
        div.register {
            background-color: rgba(0, 0, 0, 0.5);
            width: 200%;
            font-size: 20px;
            border-radius: 20px;
            border: 1px solid rgba(173, 171, 171, 0.747);
            box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.3);
            color: #fff;
            margin-left: -50%;
        }
        
        form#register {
            margin: 20px;
        }
        
        label {
            margin: 0.2cm;
            display: inline-block;
            font-size: 20px;
            font-family: "Malgun Gothic", "Malgun Gothic";
            font-weight: bold;
            margin-left: 20px;
        }
        
        input[type="text"] {
            padding: 4px;
            margin: 5px;
            margin-left: 20px;
            width: 7cm;
        }
        
        input[type="text"] {
            width: 700px;
            height: 30px;
            color: white;
            font-size: 20px;
            display: inline-block;
            border: 1px solid #ddd;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
            background-image: linear-gradient(rgb(133,11,50), rgba(115,18,132,255));
            box-shadow: inset 5px 1px 5px rgba(0, 0, 0, 0.3);
        }
        
        input[type=text]:focus {
            background-color: white;
        }
        
        input[type="submit"] {
            margin: 8px;
            width: 6cm;
            height: 1.5cm;
            padding: 5px;
            font-size: 20px;
            font-family: "Malgun Gothic", "Malgun Gothic";
            font-weight: bold;
            border: none;
            box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3);
            background-image: linear-gradient(rgb(133,11,50), rgba(115,18,132,255));
            color: white;
            cursor: pointer;
            border: 1px solid black;
            box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        
        label,
        h2 {
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        
        input[type="radio"] {
            margin-left: 2px;
        }
        
         ::placeholder {
            color: rgba(228, 222, 222, 0.781);
        }
        
        
        
    </style>
    </head>
    <body style="size:500px; height:auto; background:url('walll.jpeg') no-repeat fixed; background-size:cover">
       
        <br><br><br>
    <center>
       
        <%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
                
        %>
        
        <h1 style="color:white;">File Lists</h1><br>
        <div class="container">
            
            <table class="table table-dark table-striped">
            <tr>
                <th>ID</th><th>First Name</th><th>Reg No</th><th>File Name</th><th>File Path</th><th>Added Date</th><th>Download</th>
            </tr>
            <%
               String fname=request.getParameter("fname");
               String lname=request.getParameter("lname");
                con = DB.getConnection();
            String sql = "select * from employee";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getTimestamp(6)%></td>
                <td><a href="DownloadServlet?fileName=<%=rs.getString(4)%>" class="btn btn-danger">Download</a></td>
            </tr>
            <%
                }
            %>
            
        </table><br>
        
        </div>
        <div class="reg">
            <a href="fileupload.jsp" class="btn btn-primary">Home <i class="bi bi-house-door-fill"></i></a></div>
    </center>
    </body>
</html>