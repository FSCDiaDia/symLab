<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:adminpage>
    <jsp:attribute name="header">
    </jsp:attribute>

    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>List Exams with no Results</h1>
        <f:view>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Patient</th>
                    <th>Doctor</th>
                    <th>Achievement Data</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="exam" items="${examController.listExamsWithNoResults}">
                    <tr>
                        <td><a href="insertResults.jsp?id=${exam.id}">${exam.id}</a></td>
                        <td>${exam.patient.fullName}</td>
                        <td>${exam.doctor.fullName}</td>
                        <td>${exam.achievementData}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </f:view>
    </jsp:body>
</t:adminpage>
