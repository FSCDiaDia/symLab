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
                <h1>Welcome</h1>
                <img src="http://science-all.com/images/laboratory/laboratory-02.jpg" align="right" width="450px"
                     height="300px">
                <p>The Sensini Yusteenappar Micocci Laboratory (SYMLab) provides a wide-range of analyses for
                    environmental
                    and biological samples using state-of-the-art analytical equipment and techniques.
                    Our clientele includes researchers, state and federal agencies, crop
                    consultants, farmers, home gardeners, and others across New York, the nation, and the world.</p>
                <p><a class="btn btn-primary btn-lg" href="/faces/info.jsp" role="button">Learn more</a></p>
            </div>

            <h2>Our exams</h2>
            <div class="row">
                <c:forEach var="typeExam" items="#{typeExamController.allTypeExams}">
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="well">
                            <h3>${typeExam.name}</h3>
                            <p>${typeExam.description}</p>
                            <p><strong>${typeExam.price} euro</strong></p>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </f:view>
    </jsp:body>
</t:genericpage>