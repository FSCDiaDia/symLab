<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:adminpage>
    <jsp:attribute name="header">
    </jsp:attribute>

    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
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
                    <h:outputLabel for="specialty">Specialty</h:outputLabel>
                    <h:selectOneMenu id="specialty"
                                     required="true"
                                     requiredMessage="Specialty is mandatory"
                                     styleClass="form-control"
                                     value="#{doctorController.specialization}">
                        <f:selectItem itemValue="Surgery" itemLabel="Surgery"/>
                        <f:selectItem itemValue="Pathology" itemLabel="Pathology"/>
                        <f:selectItem itemValue="Cardiology" itemLabel="Cardiology"/>
                        <f:selectItem itemValue="Geriatrics" itemLabel="Geriatrics"/>
                        <f:selectItem itemValue="Orthopaedics" itemLabel="Orthopaedics"/>
                        <f:selectItem itemValue="Neurology" itemLabel="Neurology"/>
                        <f:selectItem itemValue="Paediatrics" itemLabel="Paediatrics"/>
                        <f:selectItem itemValue="Psychiatry" itemLabel="Psychiatry"/>
                        <f:selectItem itemValue="Radiotherapy" itemLabel="Radiotherapy"/>
                    </h:selectOneMenu>
                    <h:message styleClass="help-block" for="specialty"/>
                </div>
                <div class="form-group">
                    <h:outputLabel for="username">Username</h:outputLabel>
                    <h:inputText value="#{doctorController.username}"
                                 required="true"
                                 requiredMessage="Username is mandatory"
                                 styleClass="form-control"
                                 id="username"/>
                    <h:message styleClass="help-block" for="username"/>
                </div>
                <div class="form-group">
                    <h:outputLabel for="password">Password</h:outputLabel>
                    <h:inputSecret value="#{doctorController.password}"
                                   required="true"
                                   requiredMessage="Password is mandatory"
                                   styleClass="form-control"
                                   id="password"/>
                    <h:message styleClass="help-block" for="password"/>
                </div>
                <div>
                    <h:commandButton value="Submit" styleClass="btn btn-primary"
                                     action="#{doctorController.createDoctor}"/>
                </div>

            </h:form>
        </f:view>


    </jsp:body>
</t:adminpage>
