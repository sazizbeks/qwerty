<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reader registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <style>
        <%@include file="../css/index.css"%>
    </style>
</head>
<%@include file="../js/bootstrap.js"%>
<script><%@include file="../js/IINChecker.js"%></script>
<body>
<!-- main -->
<div class="main-w3layouts wrapper">
    <h1>Astana IT University Library</h1>
    <div class="main-agileinfo">
        <div class="agileits-top">
            <form action="<c:url value="/readerServ"/>" method="post">
                <input class="text" type="text" name="iin" id="IIN" placeholder="IIN" required><br>
                <input class="text" type="text" name="fname" placeholder="Name" required><br>
                <input class="text" type="text" name="lname" placeholder="Surname" required><br>
                <span id="badResult" class="text-danger"></span>
                <span class="text-success" id="goodResult"></span>
                <input name="btn" type="submit" value="Add" id="submit">
            </form>
        </div>
    </div>
</div>
</body>
</html>