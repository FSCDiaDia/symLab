<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:patientpage>
    <jsp:attribute name="header">
    </jsp:attribute>

    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Show Results</h1>
        <f:view>

            <div class="well">
                <h2>Patient's exams</h2>

                <c:forEach var="item" items="#{resultController.exams}">
                    <ul>

                        <li> Exam : "${item.typeExam.name}"</li>
                        <li> Results:</li>
                        <c:forEach var="result" items="#{item.results}">
                            <li> ${result.indicator.name} : ${result.value}</li>
                        </c:forEach>


                    </ul>
                </c:forEach>

            </div>

        </f:view>
    </jsp:body>
</t:patientpage>
