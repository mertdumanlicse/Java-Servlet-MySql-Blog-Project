<%@ page import="props.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="util" class="utils.Util"></jsp:useBean>

<jsp:useBean id="dbUtil" class="utils.DBUtil"></jsp:useBean>
<%
    String[] light = {"black", "white"};
    int xLight = 0;
%>
<html>
<head>
    <title>Article Detail Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body style="background-color: <%=light[xLight]%>">

<br/>


<div class="container">

    <div class="row justify-content-md-end">
        <div class="col-md-4 offset-md-4">
            <a href="home-servlet" method="get" class="btn btn-primary" style="border-radius: 15px">HOME</a>
            <a href="about-servlet" method="get" class="btn btn-primary" style="border-radius: 15px">ABOUT</a>
            <a href="contact-servlet" method="get" class="btn btn-primary" style="border-radius: 15px">CONTACT</a>
        </div>
    </div>
</div>


<div style="text-align:center;margin-bottom: 10px;margin-top: 10px">

    <img width="80%" class="center"
         src="picture/indexImage.jpg">

</div>

<%
    Product product = (Product) request.getAttribute("productInfo");
    String xTitle = product.getTitle();
    String xSummary = product.getSummary();
    String xArticle = product.getArticle();
    int xPid = product.getPid();
    int xAid = product.getAid();
    Date xDate = product.getDate();
    String nameToxAid = dbUtil.getAdminName(xAid);
%>

<div class="card border-primary text-center mx-auto"
     style="width: 60%; margin-bottom: 10px;font-family: Garamond">

    <div class="card-header" style="background-color: azure;border: none">
        <h2 style="color: darkred"><%=xTitle%>
        </h2>
    </div>
    <div class="card-body">
        <p class="card-text" style="color: black;font-size: 20px;border: none;background-color: #c0ffff"><%=xSummary%>
        </p>
        <textarea rows="20" cols="100" name="article" placeholder="Article" class="card-text-auto" disabled
                  style="background-color: powderblue;border-color: mediumvioletred; color: black; font-size: 18px"
                  required/><%=xArticle%></textarea>
    </div>
    <div class="card-footer text-muted" style="background-color: white;border: none">
        <label style="color: darkblue; font-size: 16px">Posted by <%=nameToxAid%> on <%=xDate.toString()%>
        </label>
    </div>

</div>


<div style="width: 50%; margin: 0 auto">

    <div class="navbar navbar-inverse navbar-fixed-bottom mb-3" style="width: 35%;margin: 0 auto">
        <div class="container">
            <p class="navbar-text" style="font-weight: bold; text-align: center">Copyright &#169;mertdumanlicse
                Website 2021</p>
        </div>
        <!-- target yeni sekme için, rel güvenlik için -->
        <a href="https://twitter.com/mertdumanli_cse/" target="_blank" rel="noopener noreferrer">
            <ion-icon name="logo-twitter"></ion-icon>
        </a>
        <a href="https://www.instagram.com/mertdumanli.cse/" target="_blank" rel="noopener noreferrer">
            <ion-icon name="logo-instagram"></ion-icon>
        </a>
        <a href="https://www.facebook.com/mertdumanli.cse/" target="_blank" rel="noopener noreferrer">
            <ion-icon name="logo-facebook"></ion-icon>
        </a>
        <!-- mailto genelde posta uygulamasını açıyor ama açmadığı durumlar olabilir. -->
        <a href="mailto:mertdumanli.cse@gmail.com" target="_blank" rel="noopener noreferrer">
            <ion-icon name="mail-open-outline"></ion-icon>
        </a>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>
</html>
