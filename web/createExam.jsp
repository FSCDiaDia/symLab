<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
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
        <h:outputLabel for="name">Type Exam's Name</h:outputLabel>
        <h:inputText value="#{ExamController.typeExam.name}"
                     required="true"
                     requiredMessage="Name of TypeExam is mandatory"
                     styleClass="form-control"
                     id="name"/>
        <h:message styleClass="help-block" for="name"/></div>

    <div class="form-group">
        <h:outputLabel for="date">Date</h:outputLabel>
        <h:inputText value="#{ExamController.achievementDate}"
                     required="true"
                     requiredMessage="achievementDate is mandatory"
                     converterMessage="achievementDate must be a date"
                     styleClass="form-control"
                     id="date"/>
        <h:message styleClass="help-block" for="date"/></div>
    <div class="form-group">
        <h:outputLabel for="patientName">Patient Name</h:outputLabel>
        <h:inputText value="#{ExamController.patient.name}"
                     required="true"
                     requiredMessage="Patient name is mandatory"
                     converterMessage="Patient name must be a string"
                     styleClass="form-control"
                     id="patientName"/>
        <h:message styleClass="help-block" for="patientName"/></div>
    <div class="form-group">
        <h:outputLabel for="patientLastName">Patient's Last Name</h:outputLabel>
        <h:inputText value="#{ExamController.patient.lastname}"
                     required="true"
                     requiredMessage="Patient Last name is mandatory"
                     converterMessage="Patient Last name must be a string"
                     styleClass="form-control"
                     id="patientLastName"/>
        <h:message styleClass="help-block" for="patientLastName"/></div>
    <div class="form-group">
        <h:outputLabel for="doctorName">Doctor's name</h:outputLabel>
        <h:inputText value="#{ExamController.doctor.name}"
                     required="true"

                     requiredMessage="Doctor name is mandatory"
                     converterMessage="Doctor name must be a string"
                     styleClass="form-control"
                     id="doctorName"/>
        <h:message styleClass="help-block" for="doctorName"/>
    </div>

    <div class="form-group">
        <h:outputLabel for="doctorLastName">Doctor's Last name</h:outputLabel>
        <h:inputText value="#{ExamController.doctor.lastname}"
                     required="true"
                     requiredMessage="Doctor Last name is mandatory"
                     converterMessage="Doctor Last name must be a string"
                     styleClass="form-control"
                     id="doctorLastName"/>
        <h:message styleClass="help-block" for="doctorLastName"/>
    </div>

    <div>
        <h:commandButton value="Submit" styleClass="btn btn-primary" action="#{ExamController.createExam}"/>
    </div>

    </h:form>
    </f:view>
</body>
</html>