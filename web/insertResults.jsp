<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:doctorpage>
    <jsp:attribute name="header">
    </jsp:attribute>

    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Insert Results</h1>
        <f:view>
            <h:form>
                ${examController.loadExamFromQueryString}
                <div class="form-group">
                    <c:forEach var="indicator" items="${examController.exam.typeExam.indicators}">
                        <h:outputLabel>${indicator.name}</h:outputLabel>
                        <h:inputText value="#{examController.indicators[indicator.id]}"
                                     required="true"
                                     requiredMessage="it is mandatory"
                                     styleClass="form-control"/>
                    </c:forEach>
                </div>
                <h:commandButton value="Submit" styleClass="btn btn-primary"
                                 action="#{examController.insertResults}"/>
            </h:form>
        </f:view>
    </jsp:body>
</t:doctorpage>
