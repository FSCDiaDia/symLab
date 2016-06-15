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
        <div class = "jumbotron">
        <h1>Insert Results for Patient ${patientController.patient.fullName}</h1>
        <f:view>
            <h:form>
                <div class="form-group">
                    <h:outputLabel for="indicator">Indicators' to Add</h:outputLabel>

                    <c:forEach var="item" items="#{resultController.indicators}">
                        <h:inputTextarea value="#{resultController.exam.results}" label="#{item.name}"
                                         required="true"
                                         requiredMessage="First Name is mandatory"
                                         styleClass="form-control"
                                         cols="5"
                                         rows="5"
                                         id="indicator"/>
                        <h:message styleClass="help-block" for="indicator"/>
                    </c:forEach>
                </div>

                <div>
                    <h:commandButton value="Submit" styleClass="btn btn-primary"
                                     action="#{resultController.insertResults}"/>
                </div>
                </div>
            </h:form>
        </f:view>
    </jsp:body>
</t:doctorpage>
