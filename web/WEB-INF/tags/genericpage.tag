<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/styles.css"/>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/faces/index.jsp">SymLab</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="${pageContext.request.contextPath}/faces/staff.jsp">Our staff</a></li>
            <li><a href="${pageContext.request.contextPath}/faces/contacts.jsp">Contact us</a></li>

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
        <p id="copyright">Copyright &copy; 2016</p>
        <jsp:invoke fragment="footer"/>
    </div>
</div>
</body>
</html>