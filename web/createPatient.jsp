<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>New Patient</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container">
    <h1>Create Patient</h1>
<f:view>
    <h:form>
    <div class="form-group">
        <h:outputLabel for="name">Name</h:outputLabel>
        <h:inputText value="#{patientController.name}"
                     required="true"
                     requiredMessage="Name is mandatory"
                     styleClass="form-control"
                     id="name"/> <h:message for="name"/>
        </div>
    <div class="form-group">
        <h:outputLabel for="lastname">Lastname</h:outputLabel>
        <h:inputText value="#{patientController.lastname}"
                     required="true"
                     requiredMessage="lastname is mandatory"
                     styleClass="form-control"
                     id="lastname"/> <h:message for="lastname"/>
        </div>

        <div>
            <h:commandButton value="Submit" styleClass="btn btn-primary" action="#{patientController.createPatient}"/>
        </div>

    </h:form>
</f:view>
</body>
</html>