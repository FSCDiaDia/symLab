<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>New Doctor</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container">
    <h1>Create Doctor</h1>
    <f:view>
        <h:form>
            <div class="form-group">
                <h:outputLabel for="name">First Name</h:outputLabel>
                <h:inputText value="#{doctorController.name}"
                             required="true"
                             requiredMessage="First Name is mandatory"
                             styleClass="form-control"
                             id="name"/>
                <h:message styleClass="help-block" for="name"/>
            </div>
            <div class="form-group">
                <h:outputLabel for="lastname">Last Name</h:outputLabel>
                <h:inputText value="#{doctorController.lastname}"
                             required="true"
                             requiredMessage="Last Name is mandatory"
                             styleClass="form-control"
                             id="lastname"/>
                <h:message styleClass="help-block" for="lastname"/>
            </div>

            <div class="form-group">
                <h:outputLabel for="specialization">Specialization</h:outputLabel>
                <h:selectOneMenu id="specialization"
                                 required="true"
                                 requiredMessage="Specialization is mandatory"
                                 styleClass="form-control"
                                 value="#{doctorController.specialization}">
                    <f:selectItem itemValue="Chirurgia" itemLabel="Chirurgia"/>
                    <f:selectItem itemValue="Ortopedia" itemLabel="Ortopedia"/>
                    <f:selectItem itemValue="Pediatria" itemLabel="Pediatria"/>
                    <f:selectItem itemValue="Ginecologia" itemLabel="Ginecologia"/>
                    <f:selectItem itemValue="Radiologia" itemLabel="Radiologia"/>
                    <f:selectItem itemValue="Dermatologia" itemLabel="Dermatologia"/>
                    <f:selectItem itemValue="Otorinolaringoiatria" itemLabel="Otorinolaringoiatria"/>
                    <f:selectItem itemValue="Endocrinologia" itemLabel="Endocrinologia"/>
                    <f:selectItem itemValue="Psicologia" itemLabel="Psicologia"/>
                </h:selectOneMenu>
                <h:message styleClass="help-block" for="specialization"/>
            </div>
            <div>
                <h:commandButton value="Submit" styleClass="btn btn-primary" action="#{doctorController.createDoctor}"/>
            </div>

        </h:form>
    </f:view>
</div>
</body>
</html>