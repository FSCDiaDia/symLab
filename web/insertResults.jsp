<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>Insert Results</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container">
    <h1>Insert Results</h1>
    <f:view>
    <h:form>
    <div class="form-group">
        <h:outputLabel for="patient">Patient</h:outputLabel>
        <h:selectOneMenu value="#{resultController.patientId}"
                         required="true"
                         requiredMessage="Patient is mandatory"
                         styleClass="form-control"
                         id="patient">
            <c:forEach var="item" items="#{examController.patients}">
                <f:selectItem itemValue="#{item.id}" itemLabel="#{item.fullName}"/>
            </c:forEach>
        </h:selectOneMenu>
        <h:message styleClass="help-block" for="patient"/>
    </div>

    <div class="form-group">
        <h:outputLabel for="exam">Patient's exams</h:outputLabel>
        <h:selectOneMenu value="#{resultController.examId}"
                         required="true"
                         requiredMessage="Exam is mandatory"
                         styleClass="form-control"
                         id="exam">
            <c:forEach var="item" items="#{resultController.getExams(resultController.patientId)}">
                <f:selectItem itemValue="#{item.id}" itemLabel="#{item.name}"/>
            </c:forEach>
        </h:selectOneMenu>
        <h:message styleClass="help-block" for="patient"/>
    </div>

    <div>
        <h:commandButton value="Submit" styleClass="btn btn-primary" action="#{resultController.insertResults}"/>
    </div>

    </h:form>
    </f:view>
</body>
</html>