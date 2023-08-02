<%-- 
    Document   : sucess
    Created on : 29 Nov, 2022, 8:09:16 PM
    Author     : Viranth Dharmalingam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success Page</title>
    </head>
   <body style="size:500px; height:auto; background:url('walll.jpeg') no-repeat fixed; background-size:cover">
       
    <center>
        <c:if test="${requestScope.msg!=null}">
        <h1 style="color:white"><c:out  value="${requestScope.msg}"></c:out></h1>
        </c:if><br><br>
        <c:if test="${sessionScope.fileName!=null}">
            <c:set var = "file" scope = "session" value = "${sessionScope.fileName}"/>  
        </c:if>
        <h3 style="color:white">If you want to download the file</h3>
        <!--<a href = "<c:url value = "DownloadServlet?fileName=${file}"/>" class="btn btn-primary">click me <i class="bi bi-cloud-arrow-down-fill"></i></a>&nbsp;&nbsp;&nbsp;-->
        <a href = "<c:url value = "viewlist.jsp"/>"class="btn btn-danger">View List</a>
    </center>
    </body>
</html>