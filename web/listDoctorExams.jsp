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
        <f:view>
            <div class="jumbotron">
                <h2 align="center"> ${doctorController.lastname} ${doctorController.name}'s exams</h2>
                <ul>
                    <c:forEach var="item" items="#{doctorController.doctorExams}">
                        <div class="jumbotron">
                            <li> Name's Exam : "${item.typeExam.name}"</li>
                            <li> Name's Patient : "${item.patient.fullName}"</li>
                            <li> Achievement Data : "${item.achievementData}"</li>
                        </div>
                    </c:forEach>
                </ul>
            </div>
        </f:view>
    </jsp:body>
</t:adminpage>