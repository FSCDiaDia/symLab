<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="header">
    </jsp:attribute>

    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <f:view>
            <div class="jumbotron">
                <ul>
                    <c:forEach var="item" items="#{doctorController.getDoctorExams}">


                        <li> Exam : "${item.typeExam.name}"</li>
                        <li> Exam : "${item.patient.fullName}"</li>
                        <li> Exam : "${item.achievementData}"</li>


                    </c:forEach>
                </ul>
            </div>
        </f:view>
    </jsp:body>
</t:genericpage>
