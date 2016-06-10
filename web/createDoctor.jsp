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
                    <h:commandButton value="Submit" styleClass="btn btn-primary"
                                     action="#{doctorController.createDoctor}"/>
                </div>

            </h:form>
        </f:view>


    </jsp:body>
</t:adminpage>
