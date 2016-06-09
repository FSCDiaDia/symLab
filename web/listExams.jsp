<%--
  Created by IntelliJ IDEA.
  User: federicoYusteenappar
  Date: 06/06/16
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List exams</title>
</head>
<body>
<div class="form-group">

    <c:forEach var="item" items="#{examController.listExamsSample}">
        ${item.creationData}
    </c:forEach>

</body>
</html>
