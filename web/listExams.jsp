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
    <table>
        <tr>
            <th>Id</th>
            <th>Patient</th>
            <th>Doctor</th>
            <th>Achievement Data</th>
        </tr>
        <c:forEach var="exam" items="${examController.listExamsWithNoResults}">
            <tr>
                <td>${exam.id}</td>
                <td>${exam.patient.fullName}</td>
                <td>${exam.doctor.fullName}</td>
                <td>${exam.achievementData}</td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
