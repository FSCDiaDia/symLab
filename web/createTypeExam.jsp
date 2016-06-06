<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create Type Exam</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container">
    <h1>Create Type Exam</h1>
    <f:view>
        <h:form>
            <div class="form-group">
                <h:outputLabel for="name">Name</h:outputLabel>
                <h:inputText value="#{typeExamController.name}"
                             required="true"
                             requiredMessage="Name is mandatory"
                             styleClass="form-control"
                             id="name"/> <h:message for="name"/>
            </div>
            <div class="form-group">
                <h:outputLabel for="price">Price</h:outputLabel>
                <h:inputText value="#{typeExamController.price}"
                             required="true"
                             requiredMessage="Price is mandatory"
                             converterMessage="Price must be a number"
                             styleClass="form-control"
                             id="price"/> <h:message for="price"/>
            </div>
            <div class="form-group">
                <h:outputLabel for="description">Description</h:outputLabel>
                <h:inputTextarea value="#{typeExamController.description}"
                                 required="false"
                                 cols="20"
                                 rows="5"
                                 styleClass="form-control"
                                 id="description"/>

            </div>
            <div>
                <h:commandButton value="Submit" action="#{typeExamController.createTypeExam}"
                                 styleClass="btn btn-primary"/>
            </div>

        </h:form>
    </f:view>
</div>
</body>
</html>