<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>New Exam</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container">
    <h1>Create Exam</h1>
    <f:view>
    <h:form>
    <div class="form-group">
        <h:outputLabel for="type-exam">Type Exam</h:outputLabel>
        <h:selectOneMenu value="#{examController.typeExamId}"
                         required="true"
                         requiredMessage="TypeExam is mandatory"
                         styleClass="form-control"
                         id="type-exam">
            <c:forEach var="item" items="#{examController.typeExams}">
                <f:selectItem itemValue="#{item.id}" itemLabel="#{item.name}"/>
            </c:forEach>
        </h:selectOneMenu>
        <h:message styleClass="help-block" for="type-exam"/>
    </div>

    <div class="form-group">
        <h:outputLabel for="date">Date</h:outputLabel>
        <h:inputText value="#{examController.achievementDate}"
                     required="true"
                     requiredMessage="achievementDate is mandatory"
                     converterMessage="achievementDate must be a date"
                     styleClass="form-control"
                     id="date"> </h:inputText>
        <h:message styleClass="help-block" for="date"/>
    </div>

    <div class="form-group">
        <h:outputLabel for="patient">Patient</h:outputLabel>
        <h:selectOneMenu value="#{examController.patientId}"
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
        <h:outputLabel for="doctor">Doctor</h:outputLabel>
        <h:selectOneMenu value="#{examController.doctorId}"
                         required="true"
                         requiredMessage="Doctor is mandatory"
                         styleClass="form-control"
                         id="doctor">
            <c:forEach var="item" items="#{examController.doctors}">
                <f:selectItem itemValue="#{item.id}" itemLabel="#{item.fullName}"/>
            </c:forEach>
        </h:selectOneMenu>
        <h:message styleClass="help-block" for="doctor"/>
    </div>

    <div>
        <h:commandButton value="Submit" styleClass="btn btn-primary" action="#{examController.createExam}"/>
    </div>

    </h:form>
    </f:view>
</body>
</html>