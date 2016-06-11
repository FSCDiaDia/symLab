<%@tag description="Overall Admin template" pageEncoding="UTF-8" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Doctor</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.css"/>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">SymLab</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="${pageContext.request.contextPath}/faces/insertResults.jsp">Insert results</a></li>
            <li><a href="${pageContext.request.contextPath}/faces/examsToDo.jsp">Exams' to do</a></li>
            <li><a href="${pageContext.request.contextPath}/faces/examsHistory.jsp">Exams' history</a></li>
        </ul>
        <jsp:invoke fragment="header"/>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="${pageContext.request.contextPath}/faces/login.jsp">Login</a></li>
        </ul>
    </div>
</nav>
<div class="container">
    <div id="pageheader">

    </div>
    <div id="body">
        <jsp:doBody/>
    </div>
    <div id="pagefooter">
        <jsp:invoke fragment="footer"/>
    </div>
</div>
</body>
</html>