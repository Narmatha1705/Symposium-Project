
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servlet File Upload/Download</title>
    </head>
    <body style="size:500px; height:auto; background:url('walll.jpeg') no-repeat fixed; background-size:cover">
        <br><br><br><br>
    <center>
        
        <form action="UploadServlet" method="post" enctype="multipart/form-data">
            <h3 style="color:white">Enter the Form datas</h3>
            <div class="container">
                <table class="table table-dark table-striped" style="width: 400px">
                <tr>
                    <td>Name </td>
                    <td>
                        <input type="text" required="" name="firstname">
                    </td>
                </tr>
                <tr>
                    <td>Last Name </td>
                    <td>
                        <input type="text" required="" name="lastname">
                    </td>
                </tr>
                <tr>
                    <td>Select File </td>
                    <td>
                        <input type="file" required="" name="file">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" class= "btn btn-warning" value="Submit"></td>
                </tr>
            </table>

            </div>
           
        </form>
        <br><a href = "viewlist.jsp" class="btn btn-primary">View List <i class="bi bi-database-fill-gear"></i></a>
    </center>
</body>
</html>
