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
                <h1>Benvenuti su SymLab</h1>
                <p>...</p>
                <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
            </div>

            <div class="well">
                <ul>
                    <li><a href="admin.jsp">Finto login Amministratore</a></li>
                    <li><a href="">Finto login Paziente</a></li>
                    <li><a href="">Finto login Dottore</a></li>
                </ul>
            </div>

            <h2>I nostri esami</h2>
            <div class="row">
                <c:forEach var="typeExam" items="#{typeExamController.allTypeExams}">
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="well">
                            <h3>${typeExam.name}</h3>
                            <p>${typeExam.description}</p>
                            <p><strong>${typeExam.price} €</strong></p>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </f:view>
    </jsp:body>
</t:genericpage>